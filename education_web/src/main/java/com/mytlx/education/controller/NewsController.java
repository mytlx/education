package com.mytlx.education.controller;

import com.mytlx.education.domain.News;
import com.mytlx.education.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.22
 * @time 22:10
 */
@Controller
@RequestMapping("/news")
public class NewsController {

    private NewsService newsService;

    @Autowired
    public NewsController(NewsService newsService) {
        this.newsService = newsService;
    }

    @RequestMapping("/addNews")
    public ModelAndView addNews(News news) {

        ModelAndView mv = new ModelAndView();
        boolean flag = newsService.addNews(news);
        if (flag) {
            mv.addObject("msg", "发布新闻成功");
        } else {
            mv.addObject("msg", "发布新闻失败");
        }

        mv.setViewName("redirect:findAll");
        return mv;

    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(String msg) {
        ModelAndView mv = new ModelAndView();

        List<News> newsList = newsService.findAll();

        mv.addObject("newsList", newsList);
        mv.addObject("msg", msg);
        mv.setViewName("admin-news");

        return mv;
    }

    @RequestMapping("/updateNews")
    public ModelAndView updateNews(News news, int id) {
        ModelAndView mv = new ModelAndView();
        news.setId(id);

        boolean flag = newsService.updateNews(news);

        if (flag) {
            mv.addObject("msg", "编辑新闻成功");
        } else {
            mv.addObject("msg", "编辑新闻失败");
        }

        mv.setViewName("redirect:findAll");
        return mv;
    }

    @RequestMapping("/deleteNews")
    public ModelAndView deleteNews(int id) {
        ModelAndView mv = new ModelAndView();

        boolean flag = newsService.deleteNews(id);

        if (flag) {
            mv.addObject("msg", "删除新闻成功");
        } else {
            mv.addObject("msg", "删除新闻失败");
        }

        mv.setViewName("redirect:findAll");
        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(int id, String op) {
        ModelAndView mv = new ModelAndView();

        News news = newsService.findById(id);

        mv.addObject("news", news);
        mv.setViewName("news-update");
        if (op.equals("info"))
            mv.setViewName("news-info");
        return mv;
    }


}
