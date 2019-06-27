package com.mytlx.education.domain;

import com.mytlx.education.utils.DateUtils;

import java.util.Date;

/**
 * @author TLX
 * @date 2019.6.19
 * @time 15:26
 */
public class Announcement {
    private int id;
    private String userId;
    private String title;
    private String textContent;
    private String picture;
    private Date time;
    private String timeStr;
    private String username;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getTimeStr() {
        if (time != null)
            timeStr = DateUtils.date2String(time, "yyyy-MM-dd HH:mm:ss");
        return timeStr;
    }

    public void setTimeStr(String timeStr) {
        this.timeStr = timeStr;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
