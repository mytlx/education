package com.mytlx.education.dao;

import com.mytlx.education.domain.Education;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 16:36
 */
@Repository
public interface EducationDao {

    @Insert("insert into education(id, user_id, subject, id_code, address, age_range, tel, info)" +
            "values(#{id}, #{userId}, #{subject}, #{idCode}, #{address}, #{ageRange},#{tel},#{info})")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "subject", property = "subject"),
            @Result(column = "idCode", property = "idCode"),
            @Result(column = "address", property = "address"),
            @Result(column = "ageRange", property = "ageRange"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "info", property = "info"),
    })
    void saveEducation(Education education);

    /**
     * 根据userId查询机构信息
     *
     * @param userId
     * @return
     */
    @Select("select * from education where user_id = #{userId}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "subject", property = "subject"),
            @Result(column = "id_code", property = "idCode"),
            @Result(column = "address", property = "address"),
            @Result(column = "age_range", property = "ageRange"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "info", property = "info"),
    })
    Education findByUserId(String userId);

    /**
     * 修改education信息，并返回是否成功
     *
     * @param education
     * @param userId
     * @return 影响的条数，1表示成功，0表示失败
     */
    @Update("update education set subject = #{education.subject}, address = #{education.address}," +
            " age_range = #{education.ageRange}, " +
            "tel = #{education.tel}, info = #{education.info}" +
            "where user_id = #{userId}")
    int updateInfo(@Param("education") Education education, @Param("userId") String userId);
}
