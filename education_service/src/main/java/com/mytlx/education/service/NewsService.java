package com.mytlx.education.service;

import com.mytlx.education.domain.News;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.22
 * @time 22:31
 */
public interface NewsService {

    /**
     * 添加新闻，并返回是否成功
     *
     * @param news
     * @return
     */
    boolean addNews(News news);

    /**
     * 查询所有新闻
     *
     * @return
     */
    List<News> findAll();

    /**
     * 根据新闻id删除新闻
     *
     * @param id
     * @return
     */
    boolean deleteNews(int id);

    /**
     * 更新新闻
     *
     * @param news
     * @return
     */
    boolean updateNews(News news);

    /**
     * 通过id查找新闻，用于更新新闻时，显示原新闻
     *
     * @param id
     * @return
     */
    News findById(int id);
}
