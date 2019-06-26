package com.mytlx.education.dao;

import com.mytlx.education.domain.Course;
import com.mytlx.education.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 23:07
 */
@Repository
public interface CourseDao {

    /**
     * 通过user_id查找所有相关的course
     *
     * @param user
     * @return
     */
    @Select("SELECT * FROM course where user_id=#{id}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "time", property = "time"),
            @Result(column = "address", property = "address"),
            @Result(column = "teacher", property = "teacher"),
            @Result(column = "content", property = "content"),
            @Result(column = "fee", property = "fee")
    })
    List<Course> findByUser(User user);

    /**
     * 添加课程
     *
     * @param course
     * @return
     */
    @Insert("insert into course values(#{id}, #{userId}, #{name}, #{time}, #{address}," +
            "#{teacher}, #{content}, #{fee})")
    int addCourse(Course course);

    /**
     * 查询所有课程，同时附带上与当前用户相关的申请情况
     *
     * @param userId
     * @return
     */
    @Select("SELECT c.id, c.user_id, c.name, c.time, c.address, c.teacher, c.content, " +
            "c.fee, a.id auditionId, a.state " +
            "FROM course c " +
            "LEFT JOIN audition_request a " +
            "ON a.course_id = c.id " +
            "AND a.parent_id = ( " +
            "SELECT p.id FROM parent p " +
            "LEFT JOIN user u " +
            "ON p.user_id = u.id " +
            "WHERE u.id = #{userId} " +
            ")")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "time", property = "time"),
            @Result(column = "address", property = "address"),
            @Result(column = "teacher", property = "teacher"),
            @Result(column = "content", property = "content"),
            @Result(column = "fee", property = "fee")
    })
    List<Course> findAll(@Param("userId") String userId);

    /**
     * 通过id查询课程
     *
     * @param id
     * @return
     */
    @Select("select * from course where id = #{id}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "time", property = "time"),
            @Result(column = "address", property = "address"),
            @Result(column = "teacher", property = "teacher"),
            @Result(column = "content", property = "content"),
            @Result(column = "fee", property = "fee")
    })
    Course findById(@Param("id") String id);
}
