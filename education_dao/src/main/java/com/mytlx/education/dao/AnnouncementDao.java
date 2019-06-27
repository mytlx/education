package com.mytlx.education.dao;

import com.mytlx.education.domain.Announcement;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.19
 * @time 15:34
 */
@Repository
public interface AnnouncementDao {

    /**
     * 发布公告
     *
     * @param announcement
     * @return
     */
    @Insert("insert into announcement(user_id, title, text_content, time, picture) values(" +
            "#{userId}, #{title}, #{textContent}, #{time}, #{picture})")
    @SelectKey(resultType = Integer.class, keyColumn = "id", before = true,
            statement = "SELECT LAST_INSERT_ID() AS id", keyProperty = "id")
    int addAnnounce(Announcement announcement);

    /**
     * 通过用户id查找公告
     *
     * @param userId
     * @return
     */
    @Select("select * from announcement where user_id = #{userId}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "title", property = "title"),
            @Result(column = "text_content", property = "textContent"),
            @Result(column = "time", property = "time"),
            @Result(column = "picture", property = "picture"),
    })
    List<Announcement> findByUserId(@Param("userId") String userId);

    /**
     * 根据id删除公告
     *
     * @param id
     * @return
     */
    @Delete("delete from announcement where id = #{id}")
    int deleteById(@Param("id") int id);

    @Update("update announcement set title = #{an.title}, text_content = #{an.textContent}," +
            "time = #{an.time}, picture = #{an.picture} where id = #{an.id}")
    int updateById(@Param("an") Announcement an);

    @Select("select * from announcement where id = #{id}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "title", property = "title"),
            @Result(column = "text_content", property = "textContent"),
            @Result(column = "picture", property = "picture"),
    })
    Announcement findById(@Param("id") int id);

    /**
     * 查找所有公告
     *
     * @return
     */
    @Select("SELECT a.id, a.user_id, a.title, a.text_content, a.time, a.picture, " +
            "u.username " +
            "FROM announcement a LEFT JOIN user u " +
            "ON a.user_id = u.id ")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "user_id", property = "userId"),
            @Result(column = "title", property = "title"),
            @Result(column = "text_content", property = "textContent"),
            @Result(column = "time", property = "time"),
            @Result(column = "picture", property = "picture"),
            @Result(column = "username", property = "username"),
    })
    List<Announcement> findAll();
}
