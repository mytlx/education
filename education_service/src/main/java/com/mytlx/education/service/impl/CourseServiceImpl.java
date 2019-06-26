package com.mytlx.education.service.impl;

import com.mytlx.education.dao.CourseDao;
import com.mytlx.education.domain.Course;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 23:14
 */
@Service("courseService")
@Transactional
public class CourseServiceImpl implements CourseService {

    private CourseDao courseDao;

    @Autowired
    public CourseServiceImpl(CourseDao courseDao) {
        this.courseDao = courseDao;
    }

    /**
     * 查找所有与user_id关联的课程
     *
     * @param user
     * @return
     */
    @Override
    public List<Course> findByUser(User user) {
        List<Course> byUser = courseDao.findByUser(user);
        return byUser;
    }

    @Override
    public boolean addCourse(Course course) {
        int ret = courseDao.addCourse(course);
        System.out.println(ret);
        return ret == 1;
    }

    @Override
    public List<Course> findAll(String userId) {
        return courseDao.findAll(userId);
    }

    @Override
    public Course findById(String id) {
        return courseDao.findById(id);
    }
}
