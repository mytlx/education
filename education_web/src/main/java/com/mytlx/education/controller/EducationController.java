package com.mytlx.education.controller;

import com.mytlx.education.domain.Education;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.EducationService;
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
 * @time 16:38
 */
@Controller
@RequestMapping("/education")
public class EducationController {

    private EducationService educationService;

    @Autowired
    public EducationController(EducationService educationService) {
        this.educationService = educationService;
    }

    @RequestMapping("/register")
    public String register(Education education, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        education.setUserId(user.getId());

        // 设置education的id
        education.setId(UUIDUtils.getId());

        // 调用service方法保存education
        educationService.saveEducation(education);

        request.setAttribute("msg", "用户注册成功，请激活并等待管理员审核，\n" +
                "审核结果将于三个工作日发送到您的邮箱！");

        return "info";
    }

    /**
     * 修改education信息
     *
     * @param education
     * @param session
     * @return
     */
    @RequestMapping("/updateInfo")
    public ModelAndView updateInfo(Education education, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ModelAndView mv = new ModelAndView();
        System.out.println(user.getId());

        Education education1 = educationService.updateInfo(education, user.getId());
        System.out.println(education);

        if (education1 == null) {
            mv.addObject("msg", "修改失败");
        } else {
            mv.addObject("msg", "修改成功");
            mv.addObject("info", education1);
        }

        mv.setViewName("person-info");
        return mv;
    }

}
