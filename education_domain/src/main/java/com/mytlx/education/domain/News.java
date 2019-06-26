package com.mytlx.education.domain;

import java.util.Date;

import com.mytlx.education.utils.DateUtils;

/**
 * @author TLX
 * @date 2019.6.22
 * @time 22:12
 */
public class News {

    private int id;
    private String title;
    private String textContent;
    private Date time;
    private String timeStr;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
