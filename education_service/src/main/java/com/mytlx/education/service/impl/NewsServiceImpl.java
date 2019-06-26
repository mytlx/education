package com.mytlx.education.service.impl;

import com.mytlx.education.dao.NewsDao;
import com.mytlx.education.domain.News;
import com.mytlx.education.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author TLX
 * @date 2019.6.22
 * @time 22:32
 */
@Service("newsService")
public class NewsServiceImpl implements NewsService {

    private NewsDao newsDao;

    @Autowired
    public NewsServiceImpl(NewsDao newsDao) {
        this.newsDao = newsDao;
    }

    /**
     * 添加新闻，并返回是否成功
     *
     * @param news
     * @return
     */
    @Override
    public boolean addNews(News news) {
        // 将当前时间设为发布时间
        news.setTime(new Date());
        int flag = newsDao.addNews(news);
        return flag == 1;
    }

    /**
     * 查询所有新闻
     *
     * @return
     */
    @Override
    public List<News> findAll() {
        return newsDao.findAll();
    }

    /**
     * 根据新闻id删除新闻
     *
     * @param id
     * @return
     */
    @Override
    public boolean deleteNews(int id) {
        int flag = newsDao.deleteNews(id);
        return flag == 1;
    }

    /**
     * 更新新闻
     *
     * @param news
     * @return
     */
    @Override
    public boolean updateNews(News news) {
        news.setTime(new Date());
        int flag = newsDao.updateNews(news);
        return flag == 1;
    }

    /**
     * 通过id查找新闻，用于更新新闻时，显示原新闻
     *
     * @param id
     * @return
     */
    @Override
    public News findById(int id) {
        return newsDao.findById(id);
    }
}
