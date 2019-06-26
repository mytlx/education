package com.mytlx.education.service.impl;

import com.mytlx.education.dao.AuditionDao;
import com.mytlx.education.dao.ParentDao;
import com.mytlx.education.domain.Audition;
import com.mytlx.education.domain.Parent;
import com.mytlx.education.service.AuditionService;
import com.mytlx.education.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.18
 * @time 18:29
 */
@Service("auditionService")
public class AuditionServiceImpl implements AuditionService {

    private AuditionDao auditionDao;
    private ParentDao parentDao;

    @Autowired
    public AuditionServiceImpl(AuditionDao auditionDao, ParentDao parentDao) {
        this.auditionDao = auditionDao;
        this.parentDao = parentDao;
    }

    /**
     * 添加试听申请
     *
     * @param courseId
     * @param userId
     * @return
     */
    @Override
    public boolean addRequest(String courseId, String userId) {
        Parent parent = parentDao.findByUserId(userId);

        Audition audition = new Audition();
        audition.setId(UUIDUtils.getId());
        audition.setCourseId(courseId);
        audition.setParentId(parent.getId());
        audition.setState(1);

        int flag = auditionDao.addAudition(audition);
        return flag == 1;
    }

    /**
     * 取消试听申请
     *
     * @param courseId
     * @param userId
     * @return
     */
    @Override
    public boolean cancelRequest(String courseId, String userId) {
        int flag = auditionDao.cancelRequst(courseId, userId);
        return flag == 1;
    }

    /**
     * 查找和userId关联教师相关的课程申请
     *
     * @param userId
     * @return
     */
    @Override
    public List<Audition> findRequestByUserId(String userId) {
        return auditionDao.findRequestByUserId(userId);
    }

    /**
     * 同意申请，state设为2
     *
     * @param auditionId
     * @return
     */
    @Override
    public boolean agreeRequest(String auditionId) {
        int flag = auditionDao.agreeRequest(auditionId);
        return flag == 1;
    }

    /**
     * 拒绝申请，state设为3
     *
     * @param auditionId
     * @return
     */
    @Override
    public boolean refuseRequest(String auditionId) {
        int flag = auditionDao.refuseRequest(auditionId);
        return flag == 1;
    }
}
