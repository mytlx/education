package com.mytlx.education.controller;

import com.mytlx.education.domain.Order;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * @author TLX
 * @date 2019.6.28
 * @time 12:16
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    private OrderService orderService;

    @Autowired
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @RequestMapping("addOrder")
    public ModelAndView addOrder(String cid, double fee, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");

        System.out.println(cid);
        System.out.println(fee);

        Order order = new Order();
        order.setUserId(user.getId());
        order.setCourseId(cid);
        order.setFee(fee);

        boolean flag = orderService.addOrder(order);

        if (flag)
            mv.addObject("msg", "购买成功");
        else
            mv.addObject("msg", "购买失败");

        mv.setViewName("info");
        return mv;
    }

}
