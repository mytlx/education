package com.mytlx.education.controller;


import com.mytlx.education.domain.Parent;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.ParentService;
import com.mytlx.education.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 14:39
 */
@Controller
@RequestMapping("/parent")
public class ParentController {

    private ParentService parentService;

    @Autowired
    public ParentController(ParentService parentService) {
        this.parentService = parentService;
    }

    @RequestMapping("/register")
    public String register(Parent parent, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        parent.setUserId(user.getId());

        // 设置parent的id
        parent.setId(UUIDUtils.getId());

        // 调用service方法保存parent
        parentService.saveParent(parent);

        request.setAttribute("msg", "用户注册成功，请激活！");

        return "info";
    }

    /**
     * 修改家长信息
     *
     * @param parent
     * @param session
     * @return
     */
    @RequestMapping("/updateInfo")
    public ModelAndView updateInfo(Parent parent, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();
        System.out.println(user.getId());

        Parent parent1 = parentService.updateInfo(parent, user.getId());
        System.out.println(parent);

        if (parent1 == null) {
            mv.addObject("msg", "修改失败");
        } else {
            mv.addObject("msg", "修改成功");
            mv.addObject("info", parent1);
        }

        mv.setViewName("person-info");
        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id) {
        Parent parent = parentService.findById(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("parent", parent);
        mv.setViewName("parent-info");
        return mv;
    }

}
