package com.mytlx.education.domain;

import com.mytlx.education.utils.DateUtils;

import java.util.Date;

/**
 * @author TLX
 * @date 2019.6.11
 * @time 23:04
 */
public class Course {
    private String id;
    private String userId;
    private String name;
    private Date time;
    private String timeStr;
    private String address;
    private String teacher;
    private String content;
    private double fee;
    private String auditionId;
    private int state;
    private String stateStr;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getTimeStr() {
        // TODO: 时间转换 ok
        if (time != null)
            timeStr = DateUtils.date2String(time, "yyyy-MM-dd HH:mm:ss");
        return timeStr;
    }

    public void setTimeStr(String timeStr) {
        this.timeStr = timeStr;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }

    public String getAuditionId() {
        return auditionId;
    }

    public void setAuditionId(String auditionId) {
        this.auditionId = auditionId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getStateStr() {
        if (state == 1)
            stateStr = "申请中";
        else if (state == 2)
            stateStr = "已通过";
        else if (state == 3)
            stateStr = "被拒绝";
        return stateStr;
    }

    public void setStateStr(String stateStr) {
        this.stateStr = stateStr;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id='" + id + '\'' +
                ", userId='" + userId + '\'' +
                ", name='" + name + '\'' +
                ", time=" + time +
                ", timeStr='" + timeStr + '\'' +
                ", address='" + address + '\'' +
                ", teacher='" + teacher + '\'' +
                ", content='" + content + '\'' +
                ", fee=" + fee +
                '}';
    }
}
