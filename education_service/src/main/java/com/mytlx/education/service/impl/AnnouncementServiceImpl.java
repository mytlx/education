package com.mytlx.education.service.impl;

import com.mytlx.education.dao.AnnouncementDao;
import com.mytlx.education.dao.NewsDao;
import com.mytlx.education.dao.UserDao;
import com.mytlx.education.domain.Announcement;
import com.mytlx.education.domain.User;
import com.mytlx.education.service.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author TLX
 * @date 2019.6.19
 * @time 15:29
 */
@Service("announcementService")
public class AnnouncementServiceImpl implements AnnouncementService {

    private AnnouncementDao announcementDao;
    private UserDao userDao;

    @Autowired
    public AnnouncementServiceImpl(AnnouncementDao announcementDao, UserDao userDao) {
        this.announcementDao = announcementDao;
        this.userDao = userDao;
    }

    /**
     * 发布公告
     *
     * @param announcement
     * @return
     */
    @Override
    public boolean addAnnounce(Announcement announcement) {
        // 发布公告时，自动添加时间
        announcement.setTime(new Date());
        int flag = announcementDao.addAnnounce(announcement);
        return flag == 1;
    }

    /**
     * 通过用户id查找公告
     *
     * @param userId
     * @return
     */
    @Override
    public List<Announcement> findByUserId(String userId) {
        return announcementDao.findByUserId(userId);
    }

    /**
     * 根据id删除公告
     *
     * @param id
     * @return
     */
    @Override
    public boolean deleteById(int id) {
        int flag = announcementDao.deleteById(id);
        return flag == 1;
    }

    /**
     * 更新公告
     *
     * @param an
     * @return
     */
    @Override
    public boolean updateById(Announcement an) {
        // 更新公告时，自动更新时间
        an.setTime(new Date());
        int flag = announcementDao.updateById(an);
        return flag == 1;
    }

    /**
     * 根据id查找公告
     *
     * @param id
     * @return
     */
    @Override
    public Announcement findById(int id) {
        Announcement an = announcementDao.findById(id);
        // 通过id查找user
        User user = userDao.findById(an.getUserId());
        // 设置对应的username
        an.setUsername(user.getUsername());
        return an;
    }

    /**
     * 查找所有公告
     *
     * @return
     */
    @Override
    public List<Announcement> findAll() {
        return announcementDao.findAll();
    }
}
