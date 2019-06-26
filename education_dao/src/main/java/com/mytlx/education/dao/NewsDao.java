package com.mytlx.education.dao;

import com.mytlx.education.domain.News;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.22
 * @time 22:13
 */
@Repository
public interface NewsDao {

    @Insert("INSERT INTO news(title, text_content, time) VALUES" +
            "(#{news.title}, #{news.textContent}, #{news.time})")
    @SelectKey(resultType = Integer.class, keyColumn = "id", before = true,
            statement = "SELECT LAST_INSERT_ID() AS id", keyProperty = "id")
    int addNews(@Param("news") News news);

    /**
     * 查找所有新闻
     *
     * @return
     */
    @Select("select * from news")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "title", property = "title"),
            @Result(column = "text_content", property = "textContent"),
            @Result(column = "time", property = "time"),
    })
    List<News> findAll();

    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    @Delete("DELETE FROM news where id = #{id}")
    int deleteNews(@Param("id") int id);

    /**
     * 更新新闻
     *
     * @param news
     * @return
     */
    @Update("UPDATE news SET title = #{news.title}, text_content = #{news.textContent}, " +
            "time = #{news.time} where id = #{news.id}")
    int updateNews(@Param("news") News news);

    @Select("select * from news where id = #{id}")
    @Results(value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "title", property = "title"),
            @Result(column = "text_content", property = "textContent"),
            @Result(column = "time", property = "time"),
    })
    News findById(@Param("id") int id);
}
