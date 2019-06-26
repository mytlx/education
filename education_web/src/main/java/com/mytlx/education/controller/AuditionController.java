package com.mytlx.education.controller;

import com.mytlx.education.domain.Audition;
import com.mytlx.education.domain.Course;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.AuditionService;
import com.mytlx.education.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author TLX
 * @date 2019.6.18
 * @time 18:22
 */
@Controller
@RequestMapping("/audition")
public class AuditionController {

    private AuditionService auditionService;
    private CourseService courseService;

    @Autowired
    public AuditionController(AuditionService auditionService, CourseService courseService) {
        this.auditionService = auditionService;
        this.courseService = courseService;
    }

    /**
     * 提交request
     *
     * @param courseId
     * @param session
     * @return
     */
    @RequestMapping("/addRequest")
    public ModelAndView addRequest(String courseId, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();

        boolean flag = auditionService.addRequest(courseId, user.getId());
        // TODO: 应该可以改成转发
        // List<Course> courseList = courseService.findAll(user.getId());
        if (flag) {
            mv.addObject("msg", "已成功提交申请");
            // mv.addObject("courseList", courseList);
        } else {
            mv.addObject("msg", "提交申请失败");
        }

        // mv.setViewName("search-course-list");
        mv.setViewName("redirect:/course/findAll");
        return mv;
    }

    /**
     * 提交request
     *
     * @param courseId
     * @param session
     * @return
     */
    @RequestMapping("/cancelRequest")
    public ModelAndView cancelRequest(String courseId, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();

        boolean flag = auditionService.cancelRequest(courseId, user.getId());
        if (flag) {
            mv.addObject("msg", "已成功取消申请");
        } else {
            mv.addObject("msg", "取消申请失败");
        }

        mv.setViewName("redirect:/course/findAll");
        return mv;
    }

    /**
     * 通过userId查找相关的教师和教育机构的申请列表
     *
     * @param session
     * @return
     */
    @RequestMapping("/findRequestByUserId")
    public ModelAndView findRequestByUserId(HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();

        List<Audition> auditionList = auditionService.findRequestByUserId(user.getId());
        mv.addObject("auditionList", auditionList);
        mv.setViewName("audition-list");

        return mv;
    }

    @RequestMapping("/agreeRequest")
    public ModelAndView agreeRequest(String auditionId) {
        ModelAndView mv = new ModelAndView();
        boolean flag = auditionService.agreeRequest(auditionId);

        if (flag)
            mv.addObject("msg", "同意申请成功");
        else
            mv.addObject("msg", "同意申请失败");
        mv.setViewName("forward:findRequestByUserId");
        return mv;
    }

    @RequestMapping("/refuseRequest")
    public ModelAndView refuseRequest(String auditionId) {
        ModelAndView mv = new ModelAndView();
        boolean flag = auditionService.refuseRequest(auditionId);

        if (flag)
            mv.addObject("msg", "拒绝申请成功");
        else
            mv.addObject("msg", "拒绝申请失败");
        mv.setViewName("forward:findRequestByUserId");
        return mv;
    }


}
