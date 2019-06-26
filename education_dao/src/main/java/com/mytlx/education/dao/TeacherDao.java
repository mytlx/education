package com.mytlx.education.dao;

import com.mytlx.education.domain.Teacher;
import com.mytlx.education.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 16:51
 */
@Repository
public interface TeacherDao {

    @Insert({"insert into teacher(id, user_id, name, sex, age, subject, time, " +
            "age_range,id_number,tel,info)" +
            "values(#{id}, #{userId}, #{name}, #{sex}, #{age}, #{subject}, #{time}," +
            "#{ageRange}, #{idNumber}, #{tel}, #{info})"})
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "sex", property = "sex"),
            @Result(column = "age", property = "age"),
            @Result(column = "subject", property = "subject"),
            @Result(column = "time", property = "time"),
            @Result(column = "age_range", property = "ageRange"),
            @Result(column = "id_number", property = "idNumber"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "info", property = "info"),
    })
    void saveTeacher(Teacher teacher);

    /**
     * 根据userId查询教师个人信息
     *
     * @param userId
     * @return
     */
    @Select("select * from teacher where user_id = #{userId}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "sex", property = "sex"),
            @Result(column = "age", property = "age"),
            @Result(column = "subject", property = "subject"),
            @Result(column = "time", property = "time"),
            @Result(column = "age_range", property = "ageRange"),
            @Result(column = "id_number", property = "idNumber"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "info", property = "info"),
    })
    Teacher findByUserId(String userId);

    /**
     * 修改教师信息，返回是否成功
     *
     * @param teacher
     * @param userId
     * @return 影响的行数，1代表成功，0代表失败
     */
    @Update("update teacher set name = #{teacher.name}, sex = #{teacher.sex}, age = #{teacher.age}, " +
            "subject = #{teacher.subject}, time = #{teacher.time}, age_range = #{teacher.ageRange}, " +
            "tel = #{teacher.tel}, info = #{teacher.info}" +
            "where user_id = #{userId}")
    int updateInfo(@Param("teacher") Teacher teacher, @Param("userId") String userId);
}
