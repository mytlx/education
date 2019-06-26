package com.mytlx.education.service;

import com.mytlx.education.domain.Course;
import com.mytlx.education.domain.User;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 23:13
 */
public interface CourseService {

    /**
     * 查找所有与user_id关联的课程
     *
     * @param user
     * @return
     */
    List<Course> findByUser(User user);

    /**
     * 添加课程到course
     *
     * @param course
     * @return
     */
    boolean addCourse(Course course);

    /**
     * 查询所有课程
     *
     * @return
     */
    List<Course> findAll(String userId);

    /**
     * 通过id查询课程
     *
     * @param id
     * @return
     */
    Course findById(String id);
}
