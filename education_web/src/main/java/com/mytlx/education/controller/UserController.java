package com.mytlx.education.controller;

import com.mytlx.education.domain.*;
import com.mytlx.education.service.*;
import com.mytlx.education.utils.MailUtils;
import com.mytlx.education.utils.UUIDUtils;
import javafx.util.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;


/**
 * @author TLX
 * @date 2019.6.10
 * @time 17:19
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;
    private TeacherService teacherService;
    private EducationService educationService;
    private ParentService parentService;
    private NewsService newsService;

    @Autowired
    public UserController(UserService userService, TeacherService teacherService,
                          EducationService educationService, ParentService parentService,
                          NewsService newsService) {
        this.userService = userService;
        this.teacherService = teacherService;
        this.educationService = educationService;
        this.parentService = parentService;
        this.newsService = newsService;
    }


    @RequestMapping("/login")
    public ModelAndView login(User user, HttpServletRequest request,
                              HttpServletResponse response, String autoLogin) {

        ModelAndView mv = new ModelAndView();

        // 默认跳转页面
        mv.setViewName("login");

        if (user.getUsername() == null)
            return mv;

        // 调用service方法
        Pair<User, Integer> login = userService.login(user.getUsername(), user.getPassword());
        User find = login.getKey();
        int code = login.getValue();

        if (code == 1) {
            // 将user_id记录在session中
            request.getSession().setAttribute("user", find);

            // 主页新闻
            // List<News> newsList = newsService.findAll();
            // mv.addObject("newsList", newsList);

            mv.setViewName("redirect:index");
            if (autoLogin != null) {
                // 保存cookie
                Cookie usernameCookie = null;
                try {
                    usernameCookie = new Cookie("username",
                            URLEncoder.encode(user.getUsername(), "utf-8"));
                    Cookie passwordCookie = new Cookie("password", user.getPassword());
                    usernameCookie.setMaxAge(7 * 24 * 60);// 设置七天有效期
                    passwordCookie.setMaxAge(7 * 24 * 60);
                    usernameCookie.setPath("/");// 可在同一应用服务器内共享方法
                    passwordCookie.setPath("/");
                    response.addCookie(usernameCookie);
                    response.addCookie(passwordCookie);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } else if (code == 2) {
            request.setAttribute("msg", "没有该用户");
        } else if (code == 3) {
            request.setAttribute("msg", "密码错误");
        } else if (code == 4) {
            request.setAttribute("msg", "未激活");
        } else if (code == 5) {
            request.setAttribute("msg", "未认证");
        } else if (code == 6) {
            request.setAttribute("msg", "审核未通过");
        } else if (code == 0) {
            request.getSession().setAttribute("user", find);
            mv.setViewName("redirect:/pages/admin/admin-index.jsp");
        }
        return mv;
    }

    @RequestMapping("/checkAutoLogin")
    public ModelAndView checkAutoLogin(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:login");
        Cookie[] cookies = request.getCookies();
        String username = "";
        String password = "";

        if (cookies != null) {
            // 找到cookie中的账号和密码
            for (Cookie cookie : cookies) {
                if ("username".equals(cookie.getName())) {
                    username = URLDecoder.decode(cookie.getValue(), "utf-8");
                }
                if ("password".equals(cookie.getName())) {
                    password = URLDecoder.decode(cookie.getValue(), "utf-8");
                }
            }
            if (!"".equals(username) || !"".equals(password)) {

                Pair<User, Integer> login = userService.login(username, password);
                int code = login.getValue();
                User find = login.getKey();

                if (code == 1) {
                    request.getSession().setAttribute("user", find);
                    mv.setViewName("redirect:/pages/main.jsp");
                } else {
                    mv.addObject("msg", "账户密码已失效，请重新登录");
                    mv.setViewName("login");
                }
            }
        }

        return mv;
    }

    @RequestMapping("/signUpUser")
    public ModelAndView signUpUser(User user, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // 判断传入的数据是否完整
        if (user.getUsername() == null || user.getUsername().equals("")
                || user.getPassword() == null || user.getPassword().equals("")
                || user.getEmail() == null || user.getEmail().equals("")) {

            mv.addObject("msg", "信息输入不完整");
            mv.setViewName("sign-up");
        }
        // TODO: 判断邮箱格式

        // 生成id和激活码
        user.setId(UUIDUtils.getId());
        user.setCode(UUIDUtils.getCode());

        // 调用业务层注册功能
        userService.saveUser(user);

        // 将user存入session域中
        request.getSession().setAttribute("user", user);

        // TODO:发送邮件应该放在service里面？
        try {
            // 向用户发送注册邮件
            MailUtils.sendMail(user.getEmail(), user.getCode());
            mv.addObject("msg", "用户注册成功，请激活！");
            mv.setViewName("sign-up-info");
        } catch (Exception e) {
            e.printStackTrace();
            // 注册失败，跳转到提示页面
            mv.addObject("msg", "用户注册失败，请重新注册！");
            mv.setViewName("sign-up");
        }
        return mv;
    }

    @RequestMapping("/active")
    public String active(String code, Model model) {
        boolean isActive = userService.active(code);
        if (isActive) {
            model.addAttribute("msg", "已成功激活账户，请登录！");
        } else {
            model.addAttribute("msg", "激活失败！");
        }
        return "login";
    }

    @RequestMapping("/findByUserId")
    public ModelAndView findByUserId(HttpSession session, String op) {

        User user = (User) session.getAttribute("user");

        ModelAndView mv = new ModelAndView();

        if (user.getVerification() == 1) {
            Parent parent = parentService.findByUserId(user.getId());
            mv.addObject("info", parent);
        } else if (user.getVerification() == 4) {
            Teacher teacher = teacherService.findByUserId(user.getId());
            mv.addObject("info", teacher);
        } else if (user.getVerification() == 5) {
            Education education = educationService.findByUserId(user.getId());
            mv.addObject("info", education);
        }

        if (op.equals("info"))
            mv.setViewName("person-info");
        else if (op.equals("update"))
            mv.setViewName("update-info");

        return mv;
    }


    @RequestMapping("/findPermission")
    public ModelAndView findPermission(String msg) {
        ModelAndView mv = new ModelAndView();

        List<User> userList = userService.findPermission();

        mv.addObject("userList", userList);
        mv.addObject("msg", msg);

        mv.setViewName("admin/admin-permission");

        return mv;
    }

    /**
     * 权限审核，管理员使用
     *
     * @return
     */
    @RequestMapping("/auditPermission")
    public ModelAndView auditPermission(String id, String op) {
        ModelAndView mv = new ModelAndView();

        boolean flag = userService.auditPermission(id, op);

        if (flag)
            mv.addObject("msg", "权限审核成功");
        else
            mv.addObject("msg", "权限审核失败");

        mv.setViewName("redirect:findPermission");
        return mv;
    }

    @RequestMapping("/findRequestInfoByUserId")
    public ModelAndView findRequestInfoByUserId(String id, int ver) {
        ModelAndView mv = new ModelAndView();

        if (ver == 2) {
            Teacher info = teacherService.findByUserId(id);
            System.out.println(info);
            mv.addObject("info", info);
            mv.addObject("identity", "teacher");
        } else if (ver == 3) {
            Education info = educationService.findByUserId(id);
            mv.addObject("info", info);
            mv.addObject("identity", "education");
        }

        mv.setViewName("admin/admin-permission-info");
        return mv;
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().invalidate();
        // 删除cookie
        Cookie usernameCookie = new Cookie("username", "");
        usernameCookie.setPath("/");
        usernameCookie.setMaxAge(0);
        Cookie passwordCookie = new Cookie("password", "");
        passwordCookie.setPath("/");
        passwordCookie.setMaxAge(0);

        response.addCookie(usernameCookie);
        response.addCookie(passwordCookie);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("../index");
        return mv;
    }

    @RequestMapping("/index")
    public ModelAndView index(String msg) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("msg", msg);

        List<News> newsList = newsService.findAll();
        mv.addObject("newsList", newsList);
        // TODO: video

        mv.setViewName("main");
        return mv;
    }

    /**
     * 通过传入的userId查找相关user及相关信息
     *
     * @param id
     * @return
     */
    @RequestMapping("findByParamId")
    public ModelAndView findByParamId(String id, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("other-person-info");

        User login = (User) session.getAttribute("user");

        // 通过id查询user信息
        User user = userService.findById(id);

        if (user != null) {
            switch (user.getVerification()) {
                case 1:
                    Parent parent = parentService.findByUserId(user.getId());
                    // 添加ver辨别身份信息
                    mv.addObject("ver", "1");
                    mv.addObject("info", parent);
                    break;
                case 4:
                    Teacher teacher = teacherService.findByUserId(user.getId());
                    mv.addObject("ver", "4");
                    mv.addObject("info", teacher);
                    break;
                case 5:
                    Education education = educationService.findByUserId(user.getId());
                    mv.addObject("ver", "5");
                    mv.addObject("info", education);
                    break;
            }

            if (login.getId().equals(user.getId())) {
                mv.setViewName("person-info");
            }
        }
        return mv;

    }

    // @RequestMapping("/updatePersonalInfo")
    // public ModelAndView updatePersonalInfo(HttpSession session) {
    //     ModelAndView mv = new ModelAndView();
    //     User user = (User) session.getAttribute("user");
    //     if (user != null) {
    //         switch (user.getVerification()) {
    //             case 1:
    //                 Parent parent = parentService.findByUserId(user.getId());
    //                 mv.addObject("info", parent);
    //                 break;
    //             case 4:
    //                 Teacher teacher = teacherService.findByUserId(user.getId());
    //                 mv.addObject("info", teacher);
    //                 break;
    //             case 5:
    //                 Education education = educationService.findByUserId(user.getId());
    //                 mv.addObject("info", education);
    //                 break;
    //         }
    //         mv.setViewName("update-info");
    //     }
    //     return mv;
    // }


}
