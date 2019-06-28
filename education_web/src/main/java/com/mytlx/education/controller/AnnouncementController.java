package com.mytlx.education.controller;

import com.mytlx.education.domain.Announcement;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.AnnouncementService;
import com.mytlx.education.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author TLX
 * @date 2019.6.19
 * @time 14:38
 */
@Controller
@RequestMapping("/announcement")
public class AnnouncementController {

    private AnnouncementService announcementService;
    private UserService userService;

    @Autowired
    public AnnouncementController(AnnouncementService announcementService, UserService userService) {
        this.announcementService = announcementService;
        this.userService = userService;
    }

    /**
     * 发布公告
     *
     * @param announcement
     * @param session
     * @return
     */
    @RequestMapping("/addAnnounce")
    public ModelAndView addAnnounce(Announcement announcement, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();

        announcement.setUserId(user.getId());
        boolean flag = announcementService.addAnnounce(announcement);
        if (flag)
            mv.addObject("msg", "发布公告成功");
        else
            mv.addObject("msg", "发布公告失败");
        // TODO: 跳转到已发布公告 重定向(已解决)
        mv.setViewName("redirect:/announcement/findByUserId");

        return mv;
    }

    @RequestMapping("/findByUserId")
    public ModelAndView findByUserId(HttpSession session, String msg) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();

        List<Announcement> announcementList = announcementService.findByUserId(user.getId());

        mv.addObject("announcementList", announcementList);
        mv.addObject("msg", msg);
        mv.setViewName("announcement-list");

        return mv;
    }

    /**
     * 根据id删除公告
     *
     * @param id
     * @return
     */
    @RequestMapping("deleteById")
    public ModelAndView deleteById(int id, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");

        boolean flag = announcementService.deleteById(id);

        if (flag)
            mv.addObject("msg", "删除公告成功");
        else
            mv.addObject("msg", "删除公告失败");

        // 重定向到已发布公告列表
        if (user.getId().equals("0"))
            mv.setViewName("redirect:findAll");
        else
            mv.setViewName("redirect:findByUserId");
        return mv;
    }

    @RequestMapping("updateById")
    public ModelAndView updateById(int id, Announcement an, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");

        an.setId(id);
        boolean flag = announcementService.updateById(an);

        if (flag)
            mv.addObject("msg", "更新公告成功");
        else
            mv.addObject("msg", "更新公告失败");

        if (user.getId().equals("0"))
            mv.setViewName("redirect:findAll");
        else
            mv.setViewName("redirect:findByUserId");
        return mv;
    }

    /**
     * 根据id查找公告
     *
     * @param id
     * @return
     */
    @RequestMapping("/findById")
    public ModelAndView findById(int id, String op, HttpSession session) {
        Announcement announcement = announcementService.findById(id);
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");

        mv.addObject("announcement", announcement);

        mv.setViewName("announcement-update");
        if (op.equals("info")) {
            mv.setViewName("announcement-info");
            if (user.getVerification() == 0)
                mv.setViewName("admin/admin-announcement-info");
        }
        return mv;
    }

    /**
     * 查找所有公告
     *
     * @return
     */
    @RequestMapping("/findAll")
    public ModelAndView findAll(@Param("ver") String ver, String msg) {
        ModelAndView mv = new ModelAndView();

        List<Announcement> announcementList = announcementService.findAll();

        mv.addObject("announcementList", announcementList);
        mv.addObject("msg", msg);

        mv.setViewName("announcement");
        if (ver.equals("0"))
            mv.setViewName("admin/admin-announcement");

        return mv;
    }


}
