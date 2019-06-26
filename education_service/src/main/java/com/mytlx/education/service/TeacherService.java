package com.mytlx.education.service;

import com.mytlx.education.domain.Teacher;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 16:56
 */
public interface TeacherService {

    /**
     * 保存teacher到表中
     *
     * @param teacher
     */
    void saveTeacher(Teacher teacher);

    /**
     * 根据userId查询教师个人信息
     *
     * @param userId
     * @return
     */
    Teacher findByUserId(String userId);

    /**
     * 修改教师信息，并返回
     *
     * @param teacher
     * @param userId
     * @return
     */
    Teacher updateInfo(Teacher teacher, String userId);
}
