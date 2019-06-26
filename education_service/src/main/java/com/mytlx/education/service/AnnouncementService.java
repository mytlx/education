package com.mytlx.education.service;

import com.mytlx.education.domain.Announcement;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.19
 * @time 15:27
 */
public interface AnnouncementService {

    /**
     * 发布公告
     *
     * @param announcement
     * @return
     */
    boolean addAnnounce(Announcement announcement);

    /**
     * 通过用户id查找公告
     *
     * @param userId
     * @return
     */
    List<Announcement> findByUserId(String userId);

    /**
     * 根据id删除公告
     *
     * @param id
     * @return
     */
    boolean deleteById(int id);

    /**
     * 更新公告
     *
     * @param an
     * @return
     */
    boolean updateById(Announcement an);

    /**
     * 根据id查找公告
     *
     * @param id
     * @return
     */
    Announcement findById(int id);

    /**
     * 查找所有公告
     *
     * @return
     */
    List<Announcement> findAll();
}
