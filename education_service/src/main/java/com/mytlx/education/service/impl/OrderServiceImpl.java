package com.mytlx.education.service.impl;

import com.mytlx.education.dao.OrderDao;
import com.mytlx.education.domain.Order;
import com.mytlx.education.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author TLX
 * @date 2019.6.28
 * @time 12:18
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    private OrderDao orderDao;

    @Autowired
    public OrderServiceImpl(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    public boolean addOrder(Order order) {
        int flag = orderDao.addOrder(order);
        return flag == 1;
    }
}
