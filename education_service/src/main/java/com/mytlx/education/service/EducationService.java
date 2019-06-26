package com.mytlx.education.service;

import com.mytlx.education.domain.Education;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 16:45
 */
public interface EducationService {

    /**
     * 保存education到表中
     *
     * @param education
     */
    void saveEducation(Education education);

    /**
     * 根据userId查询教育机构信息
     *
     * @param userId
     * @return
     */
    Education findByUserId(String userId);

    /**
     * 修改education信息，并返回该条信息
     *
     * @param education
     * @param userId
     * @return
     */
    Education updateInfo(Education education, String userId);
}
