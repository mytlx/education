package com.mytlx.education.service.impl;

import com.mytlx.education.dao.EducationDao;
import com.mytlx.education.domain.Education;
import com.mytlx.education.service.EducationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 16:46
 */
@Service("educationService")
@Transactional
public class EducationServiceImpl implements EducationService {

    private EducationDao educationDao;

    @Autowired
    public EducationServiceImpl(EducationDao educationDao) {
        this.educationDao = educationDao;
    }

    /**
     * 保存education到表中
     *
     * @param education
     */
    @Override
    public void saveEducation(Education education) {
        educationDao.saveEducation(education);
    }

    /**
     * 根据userId查询教育机构信息
     *
     * @param userId
     * @return
     */
    @Override
    public Education findByUserId(String userId) {
        return educationDao.findByUserId(userId);
    }

    /**
     * 修改education信息，并返回该条信息
     *
     * @param education
     * @param userId
     * @return
     */
    @Override
    public Education updateInfo(Education education, String userId) {
        int flag = educationDao.updateInfo(education, userId);
        if (flag == 1) {
            // 修改成功
            return findByUserId(userId);
        } else {
            // 修改失败
            return null;
        }
    }
}
