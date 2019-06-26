package com.mytlx.education.service.impl;

import com.mytlx.education.dao.AnnouncementDao;
import com.mytlx.education.domain.Announcement;
import com.mytlx.education.service.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.19
 * @time 15:29
 */
@Service("announcementService")
public class AnnouncementServiceImpl implements AnnouncementService {

    private AnnouncementDao announcementDao;

    @Autowired
    public AnnouncementServiceImpl(AnnouncementDao announcementDao) {
        this.announcementDao = announcementDao;
    }

    /**
     * 发布公告
     *
     * @param announcement
     * @return
     */
    @Override
    public boolean addAnnounce(Announcement announcement) {
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
        return announcementDao.findById(id);
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
