<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.22
  Time: 22:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>发布公告</title>
</head>
<body>

<h3>发布公告</h3>

<form action="${pageContext.request.contextPath}/news/addNews" method="post">
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
    </table>
    <input type="submit" value="提交"/>
</form>
<a href="${pageContext.request.contextPath}/news/findAll">返回</a>

</body>
</html>
