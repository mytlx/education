<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 14:56
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>发布公告</title>
</head>
<body>

<h3>发布公告</h3>

<form action="${pageContext.request.contextPath}/announcement/addAnnounce" method="post">
    <table border="1">

        <tr>
            <td>标题</td>
            <td>
                <input type="text" name="title"/>
            </td>
        </tr>
        <tr>
            <td>内容</td>
            <td>
                <textarea name="textContent" cols="30" rows="10"></textarea>
            </td>
        </tr>
        <tr>
            <td>图片</td>
            <td>
                <input type="text" name="picture">
            </td>
        </tr>
    </table>
    <input type="submit" value="提交"/>
</form>
<a href="${pageContext.request.contextPath}/pages/announcement.jsp">返回</a>
</body>
</html>
