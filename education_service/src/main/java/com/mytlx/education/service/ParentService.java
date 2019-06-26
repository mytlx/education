package com.mytlx.education.service;

import com.mytlx.education.domain.Parent;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 15:37
 */
public interface ParentService {

    /**
     * 保存parent到表中
     *
     * @param parent
     */
    void saveParent(Parent parent);

    /**
     * 通过userId查找parent
     *
     * @param userId
     * @return
     */
    Parent findByUserId(String userId);

    /**
     * 修改家长信息，并返回该条信息
     *
     * @param parent
     * @param userId
     * @return
     */
    Parent updateInfo(Parent parent, String userId);

    /**
     * 通过id查询parent
     *
     * @param id
     * @return
     */
    Parent findById(String id);
}
