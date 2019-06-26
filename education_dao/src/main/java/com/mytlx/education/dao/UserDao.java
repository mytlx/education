package com.mytlx.education.dao;

import com.mytlx.education.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * @author TLX
 * @date 2019.6.10
 * @time 17:11
 */
@Repository
public interface UserDao {

    /**
     * 根据用户名查找用户信息
     *
     * @param username 用户名
     * @return
     */
    @Select("select * from user where username = #{username}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "email", property = "email"),
            @Result(column = "tel", property = "tel"),
            @Result(column = "state", property = "state"),
            @Result(column = "code", property = "code"),
            @Result(column = "verification", property = "verification")
    })
    User findByUsername(String username);


    /**
     * 保存用户信息到user
     *
     * @param user
     */
    @Insert("insert into user values(#{id}, #{username},#{password}, #{email},#{tel}," +
            "#{state}, #{code}, #{verification})")
    int saveUser(User user);

    /**
     * 根据code查询用户信息
     *
     * @param code
     * @return
     */
    @Select("select * from user where code = #{code}")
    User findByCode(String code);

    /**
     * 根据用户id查询用户信息
     *
     * @param id
     * @return
     */
    @Select("select * from user where id = #{id}")
    User findById(@Param("id") String id);

    /**
     * 更新user
     *
     * @param user
     */
    @Update("UPDATE user SET code=#{code}, state=#{state}, verification=#{verification} " +
            "where id=#{id}")
    void updateUser(User user);

    @Select("SELECT * FROM user WHERE verification = 2 OR verification = 3")
    List<User> findPermission();

    /**
     * 修改id对应记录的verification为ver
     * @param id
     * @param ver
     * @return
     */
    @Update("update user set verification = #{ver} where id = #{id}")
    int auditPermission(@Param("id") String id, @Param("ver") int ver);
}
