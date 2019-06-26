package com.mytlx.education.service.impl;

import com.mytlx.education.dao.ParentDao;
import com.mytlx.education.domain.Parent;
import com.mytlx.education.service.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 15:38
 */
@Service("parentService")
@Transactional
public class ParentServiceImpl implements ParentService {

    private ParentDao parentDao;

    @Autowired
    public ParentServiceImpl(ParentDao parentDao) {
        this.parentDao = parentDao;
    }

    /**
     * 保存parent到表中
     *
     * @param parent
     */
    @Override
    public void saveParent(Parent parent) {
        parentDao.saveParent(parent);
    }

    /**
     * 根据用户id查询parent信息
     *
     * @param userId
     * @return
     */
    @Override
    public Parent findByUserId(String userId) {
        return parentDao.findByUserId(userId);
    }

    /**
     * 修改家长信息，并返回该条信息
     *
     * @param parent
     * @param userId
     * @return
     */
    @Override
    public Parent updateInfo(Parent parent, String userId) {
        int flag = parentDao.updateInfo(parent, userId);
        if (flag == 1) {
            // 修改成功
            return findByUserId(userId);
        } else {
            // 修改失败
            return null;
        }
    }

    /**
     * 通过id查询parent
     *
     * @param id
     * @return
     */
    @Override
    public Parent findById(String id) {
        return parentDao.findById(id);
    }
}
