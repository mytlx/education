package com.mytlx.education.service;


import com.mytlx.education.domain.User;
import javafx.util.Pair;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.10
 * @time 17:13
 */
public interface UserService {

    /**
     * 比较用户名密码
     *
     * @param username
     * @param password
     * @return
     */
    Pair<User, Integer> login(String username, String password);


    /**
     * 保存用户到user
     *
     * @param user
     */
    boolean saveUser(User user);


    /**
     * 激活用户，state置1
     *
     * @param code
     * @return
     */
    boolean active(String code);

    /**
     * 查找所有未审核的账户
     *
     * @return
     */
    List<User> findPermission();

    /**
     * 权限审核
     *
     * @param id
     * @param op pass：审核通过  reject：审核未通过
     * @return
     */
    boolean auditPermission(String id, String op);

    /**
     * 通过id查询user信息
     *
     * @param id
     * @return
     */
    User findById(String id);
}
