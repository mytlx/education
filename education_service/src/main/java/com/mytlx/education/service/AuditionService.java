package com.mytlx.education.service;

import com.mytlx.education.domain.Audition;

import java.util.List;

/**
 * @author TLX
 * @date 2019.6.18
 * @time 18:27
 */
public interface AuditionService {


    /**
     * 添加试听申请
     *
     * @param courseId
     * @param userId
     * @return
     */
    boolean addRequest(String courseId, String userId);

    /**
     * 取消试听申请
     *
     * @param courseId
     * @param userId
     * @return
     */
    boolean cancelRequest(String courseId, String userId);

    /**
     * 查找和userId关联教师相关的课程申请
     *
     * @param userId
     * @return
     */
    List<Audition> findRequestByUserId(String userId);

    /**
     * 同意申请，state设为2
     *
     * @param auditionId
     * @return
     */
    boolean agreeRequest(String auditionId);

    /**
     * 拒绝申请，state设为3
     *
     * @param auditionId
     * @return
     */
    boolean refuseRequest(String auditionId);
}
