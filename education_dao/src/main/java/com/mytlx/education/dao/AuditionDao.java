package com.mytlx.education.dao;

import com.mytlx.education.domain.Audition;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.18
 * @time 18:30
 */
@Repository
public interface AuditionDao {

    /**
     * 添加试听申请
     *
     * @param audition
     * @return
     */
    @Insert("insert into audition_request values(#{id}, #{courseId}, #{parentId}, #{state})")
    int addAudition(Audition audition);

    /**
     * 取消试听申请
     *
     * @param courseId
     * @param userId
     * @return
     */
    @Delete("DELETE FROM audition_request " +
            "WHERE course_id = #{courseId} " +
            "AND parent_id = ( " +
            "SELECT p.id FROM parent p " +
            "LEFT JOIN user u " +
            "ON u.id = p.user_id " +
            "WHERE u.id = #{userId} " +
            ")")
    int cancelRequst(@Param("courseId") String courseId, @Param("userId") String userId);

    @Select("SELECT a.id, a.course_id, a.parent_id, a.state " +
            "FROM audition_request a " +
            "LEFT JOIN course c " +
            "ON a.course_id = c.id " +
            "LEFT JOIN user u " +
            "ON c.user_id = u.id " +
            "WHERE u.id = #{userId}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "course_id", property = "courseId"),
            @Result(column = "parent_id", property = "parentId"),
            @Result(column = "state", property = "state")
    })
    List<Audition> findRequestByUserId(@Param("userId") String userId);

    /**
     * 同意申请，state置为2
     *
     * @param auditionId
     * @return
     */
    @Update("update audition_request set state = 2 where id = #{auditionId}")
    int agreeRequest(@Param("auditionId") String auditionId);

    /**
     * 拒绝申请，state置为3
     *
     * @param auditionId
     * @return
     */
    @Update("update audition_request set state = 3 where id = #{auditionId}")
    int refuseRequest(@Param("auditionId") String auditionId);
}
