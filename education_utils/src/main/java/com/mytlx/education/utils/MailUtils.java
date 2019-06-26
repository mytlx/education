package com.mytlx.education.utils;

import com.sun.mail.util.MailSSLSocketFactory;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import java.util.Properties;

public class MailUtils {

    public static void sendMail(String email, String emailMsg)
            throws Exception {
        // 1.创建一个程序与邮件服务器会话对象 Session

        Properties props = new Properties();
        // 开启debug调试  ，打印信息
        props.setProperty("mail.debug", "true");

        //设置发送的协议
        props.setProperty("mail.transport.protocol", "SMTP");

        //设置发送邮件的服务器
        props.setProperty("mail.host", "smtp.qq.com");
        props.setProperty("mail.smtp.auth", "true");// 指定验证为true


        //开 启 SSL加 密，否则会失败
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);


        // 创建验证器
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                //设置发送人的帐号和密码
                return new PasswordAuthentication("260890930@qq.com", "lrfesjieewgscajf");
            }
        };

        Session session = Session.getInstance(props, auth);

        // 2.创建一个Message，它相当于是邮件内容
        Message message = new MimeMessage(session);

        //设置发送者
        message.setFrom(new InternetAddress("260890930@qq.com"));

        //设置发送方式与接收者
        message.setRecipient(RecipientType.TO, new InternetAddress(email));

        //设置邮件主题
        message.setSubject("用户激活");
        // message.setText("这是一封激活邮件，请<a href='#'>点击</a>");

        // 获取本机ip地址
        // InetAddress inetAddress = null;
        //
        // inetAddress = InetAddress.getLocalHost();
        // String ip = inetAddress.getHostAddress();
        String ip = NetUtils.getRealIP();


        // TODO: 邮件信息
        String url = ip + ":8080/user/active?code=" + emailMsg;
        String content = "<h1>来自education的激活邮件!激活请点击以下链接!</h1><h3><a href='" + url + "'>" + url + "</a></h3>";
        //设置邮件内容
        message.setContent(content, "text/html;charset=utf-8");

        // 3.创建 Transport用于将邮件发送
        Transport.send(message);
    }

    public static void main(String[] args) throws Exception {
        // MailUtils.sendMail("373606970@qq.com", "test");

    }



}
