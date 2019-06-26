package com.mytlx.education.domain;

/**
 * @author TLX
 * @date 2019.6.18
 * @time 18:35
 */
public class Audition {
    private String id;
    private String courseId;
    private String parentId;
    private int state;      // 1：正在申请，2：申请通过，3：拒绝申请
    private String stateStr;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getStateStr() {
        if(state == 1)
            stateStr = "申请中";
        else if (state == 2)
            stateStr = "已通过";
        else if (state == 3)
            stateStr = "已拒绝";
        return stateStr;
    }

    public void setStateStr(String stateStr) {
        this.stateStr = stateStr;
    }
}
