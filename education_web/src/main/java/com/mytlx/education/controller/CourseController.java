package com.mytlx.education.controller;

import com.mytlx.education.domain.Course;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.CourseService;
import com.mytlx.education.utils.DateUtils;
import com.mytlx.education.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 22:57
 */
@Controller
@RequestMapping("/course")
public class CourseController {

    private CourseService courseService;

    @Autowired
    public CourseController(CourseService courseService) {
        this.courseService = courseService;
    }

    @RequestMapping("/findByUser")
    public ModelAndView findByUser(HttpServletRequest request, String msg) {
        User user = (User) request.getSession().getAttribute("user");

        List<Course> courseList = courseService.findByUser(user);
        courseList.forEach(System.out::println);

        ModelAndView mv = new ModelAndView();
        mv.addObject("courseList", courseList);
        mv.addObject("msg", msg);
        mv.setViewName("course-list");
        return mv;
    }

    @RequestMapping("/addCourse")
    public ModelAndView addCourse(Course course, HttpServletRequest request,
                                  @RequestParam("date1") String date1,
                                  @RequestParam("time1") String time1) throws ParseException {
        User user = (User) request.getSession().getAttribute("user");

        course.setUserId(user.getId());
        course.setId(UUIDUtils.getId());
        course.setTime(DateUtils.string2Date(date1 + " " + time1 + ":00", "yyyy-MM-dd HH:mm:ss"));
        boolean flag = courseService.addCourse(course);

        System.out.println(date1);
        System.out.println(time1);
        System.out.println(course.getTime());

        ModelAndView mv = new ModelAndView();

        if (flag) {
            mv.addObject("msg", "添加成功");
        } else {
            mv.addObject("msg", "添加失败");
        }
        mv.setViewName("redirect:findByUser");
        return mv;
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(HttpSession session, String msg) {
        User user = (User) session.getAttribute("user");
        List<Course> courseList = courseService.findAll(user.getId());

        // 此处应添加课程的购买信息
        List<Course> purchaseList = courseService.findPurchase(user.getId());

        ModelAndView mv = new ModelAndView();
        mv.addObject("courseList", courseList);
        mv.addObject("purchaseList", purchaseList);

        if (msg != null)
            mv.addObject("msg", msg);
        mv.setViewName("search-course-list");
        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id) {
        Course course = courseService.findById(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("course", course);
        mv.setViewName("course-info");
        return mv;
    }

    @RequestMapping("/findPurchase")
    public ModelAndView findPurchase(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");

        List<Course> courseList = courseService.findPurchase(user.getId());

        mv.addObject("courseList", courseList);
        mv.setViewName("course-list");

        return mv;
    }

}
