package com.mytlx.education.service.impl;

import com.mytlx.education.dao.TeacherDao;
import com.mytlx.education.domain.Teacher;
import com.mytlx.education.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 16:57
 */
@Service("teacherService")
@Transactional
public class TeacherServiceImpl implements TeacherService {

    private TeacherDao teacherDao;

    @Autowired
    public TeacherServiceImpl(TeacherDao teacherDao) {
        this.teacherDao = teacherDao;
    }

    /**
     * 保存teacher到表中
     *
     * @param teacher
     */
    @Override
    public void saveTeacher(Teacher teacher) {
        teacherDao.saveTeacher(teacher);
    }

    @Override
    public Teacher findByUserId(String userId) {
        return teacherDao.findByUserId(userId);
    }

    @Override
    public Teacher updateInfo(Teacher teacher, String userId) {
        int flag = teacherDao.updateInfo(teacher, userId);
        if (flag == 1) {
            // 修改成功
            return findByUserId(userId);
        } else {
            // 修改失败
            return null;
        }

    }
}
