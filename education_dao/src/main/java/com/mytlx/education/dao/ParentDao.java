package com.mytlx.education.dao;

import com.mytlx.education.domain.Parent;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 14:50
 */
@Repository
public interface ParentDao {

    @Insert("insert into parent(id, user_id, name, tel, child_name, child_sex, child_age)" +
            "values(#{id}, #{userId}, #{name}, #{tel}, #{childName}, #{childSex}, #{childAge})")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "child_name", property = "childName"),
            @Result(column = "child_sex", property = "childSex"),
            @Result(column = "child_age", property = "childAge"),
    })
    void saveParent(Parent parent);

    /**
     * 根据userId查找对应的parent信息
     *
     * @param userId
     * @return
     */
    @Select("select * from parent where user_id = #{userId}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "child_name", property = "childName"),
            @Result(column = "child_sex", property = "childSex"),
            @Result(column = "child_age", property = "childAge"),
            @Result(column = "subject", property = "subject"),
            @Result(column = "min_fee", property = "minFee"),
            @Result(column = "max_fee", property = "maxFee"),
            @Result(column = "address", property = "address"),
    })
    Parent findByUserId(String userId);


    /**
     * 修改parent信息，并返回是否成功
     *
     * @param parent
     * @param userId
     * @return 影响的行数，1代表成功，0代表失败
     */
    @Update("update parent set name = #{parent.name}, tel = #{parent.tel}, " +
            "child_name = #{parent.childName}, child_sex = #{parent.childSex}, " +
            "child_age = #{parent.childAge}, subject = #{parent.subject}, " +
            "min_fee = #{parent.minFee}, " +
            "max_fee = #{parent.maxFee}, address = #{parent.address}" +
            "where user_id = #{userId}")
    int updateInfo(@Param("parent") Parent parent, @Param("userId") String userId);

    /**
     * 通过id查找parent
     *
     * @param id
     * @return
     */
    @Select("select * from parent where id = #{id}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "name", property = "name"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "child_name", property = "childName"),
            @Result(column = "child_sex", property = "childSex"),
            @Result(column = "child_age", property = "childAge"),
            @Result(column = "subject", property = "subject"),
            @Result(column = "min_fee", property = "minFee"),
            @Result(column = "max_fee", property = "maxFee"),
            @Result(column = "address", property = "address"),
    })
    Parent findById(@Param("id") String id);
}
