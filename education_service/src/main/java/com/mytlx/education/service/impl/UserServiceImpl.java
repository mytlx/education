package com.mytlx.education.service.impl;

import com.mytlx.education.dao.UserDao;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.UserService;
import com.mytlx.education.utils.UUIDUtils;
import javafx.util.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.10
 * @time 18:15
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    public UserServiceImpl() {

    }

    /**
     * 比较用户名密码
     *
     * @param username
     * @param password
     * @return
     */
    @Override
    public Pair<User, Integer> login(String username, String password) {
        User user = null;
        if (username != null && !"".equals(username)) {
            user = userDao.findByUsername(username);
        }

        Pair<User, Integer> pair = null;
        if (user == null) {
            // 没有该用户
            pair = new Pair<>(null, 2);
        } else if (!password.equals(user.getPassword())) {
            // 密码错误
            pair = new Pair<>(user, 3);
        } else if (user.getState() == 0) {
            // 未激活
            pair = new Pair<>(user, 4);
        } else if (user.getVerification() == 2 || user.getVerification() == 3) {
            // 未认证
            pair = new Pair<>(user, 5);
        } else if (user.getVerification() == 6) {
            // 审核未通过
            pair = new Pair<>(user, 6);
        } else if (user.getVerification() == 0) {
            // admin
            pair = new Pair<>(user, 0);
        } else {
            // 登录成功
            pair = new Pair<>(user, 1);
        }

        return pair;
    }

    /**
     * 保存用户到user
     *
     * @param user
     */
    @Override
    public boolean saveUser(User user) {
        // TODO: 对密码加密
        int flag = userDao.saveUser(user);
        return flag == 1;
    }

    @Override
    public boolean active(String code) {
        User user = userDao.findByCode(code);
        if (user != null) {
            user.setCode(null);       // 激活后删除激活码
            user.setState(1);       // 设置成激活状态
            // 更新用户
            userDao.updateUser(user);
            return true;
        }
        return false;
    }

    /**
     * 查找所有未审核的账户
     *
     * @return
     */
    @Override
    public List<User> findPermission() {
        return userDao.findPermission();
    }

    /**
     * 权限审核
     *
     * @param id
     * @param op pass：审核通过  reject：审核未通过
     * @return
     */
    @Override
    public boolean auditPermission(String id, String op) {
        int flag = 0;
        User user = userDao.findById(id);

        // TODO: 发送审核信息的信件给用户

        if (op.equals("pass")) {
            // 教师通过设置为3，教育机构通过设置为5
            if (user.getVerification() == 2)
                flag = userDao.auditPermission(id, 4);
            else if (user.getVerification() == 3)
                flag = userDao.auditPermission(id, 5);
        } else if (op.equals("reject")) {
            // 未通过审核设置6
            flag = userDao.auditPermission(id, 6);
        }
        return flag == 1;
    }

    /**
     * 通过id查询user信息
     *
     * @param id
     * @return
     */
    @Override
    public User findById(String id) {
        return userDao.findById(id);
    }
}
