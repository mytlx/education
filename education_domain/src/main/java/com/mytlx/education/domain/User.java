package com.mytlx.education.domain;

/**
 * 与数据库中表user对应
 *
 * @author TLX
 * @date 2019.6.10
 * @time 15:58
 */
public class User {
    private String id;
    private String username;    // 用户名
    private String password;    // 密码
    private String email;
    private String tel;
    private int state;      // 0：未激活  1：激活
    private String stateStr;
    private String code;                // 激活码
    private int verification;           // 资格认证  0：admin    1：Parent 无需认证
    private String verificationStr;     // 2：teacher  认证后 4
                                        // 3：Education    认证后 5
                                        // 6：未通过认证


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getStateStr() {
        // 状态0 未开启 1开启
        if(state == 0)
            stateStr = "未激活";
        if(state == 1)
            stateStr = "已激活";

        return stateStr;
    }

    public void setStateStr(String stateStr) {
        this.stateStr = stateStr;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getVerification() {
        return verification;
    }

    public void setVerification(int verification) {
        this.verification = verification;
    }

    public String getVerificationStr() {
        if (verification == 2)
            verificationStr = "个人教师";
        else if (verification == 3)
            verificationStr = "教育机构";
        else if (verification == 1)
            verificationStr = "学生家长";
        return verificationStr;
    }

    public void setVerificationStr(String verificationStr) {
        this.verificationStr = verificationStr;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", tel='" + tel + '\'' +
                ", state=" + state +
                ", stateStr='" + stateStr + '\'' +
                ", code='" + code + '\'' +
                ", verification=" + verification +
                ", verificationStr='" + verificationStr + '\'' +
                '}';
    }
}
