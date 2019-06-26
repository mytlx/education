package com.mytlx.education.controller;

import com.mytlx.education.domain.Teacher;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.TeacherService;
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
 * @time 16:49
 */
@Controller
@RequestMapping("/teacher")
public class TeacherController {

    private TeacherService teacherService;

    @Autowired
    public TeacherController(TeacherService teacherService) {
        this.teacherService = teacherService;
    }

    @RequestMapping("/register")
    public String register(Teacher teacher, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        teacher.setUserId(user.getId());

        // 设置education的id
        teacher.setId(UUIDUtils.getId());

        // 调用service方法保存education
        teacherService.saveTeacher(teacher);

        request.setAttribute("msg", "用户注册成功，请激活并等待管理员审核，\n" +
                "审核结果将于三个工作日发送到您的邮箱！");

        return "info";
    }

    /**
     * 修改教师信息
     *
     * @param teacher
     * @param session
     * @return
     */
    @RequestMapping("/updateInfo")
    public ModelAndView updateInfo(Teacher teacher, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();
        System.out.println(user.getId());

        Teacher teacher1 = teacherService.updateInfo(teacher, user.getId());
        System.out.println(teacher1);

        if (teacher1 == null) {
            mv.addObject("msg", "修改失败");
        } else {
            mv.addObject("msg", "修改成功");
            mv.addObject("info", teacher1);
        }

        mv.setViewName("person-info");
        return mv;
    }


}
