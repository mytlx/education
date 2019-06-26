<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 16:03
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>已发布公告</title>
</head>
<body>

<h3>已发布公告</h3>
<h3>${requestScope.msg}</h3>

<table border="1">
    <tr>
        <th>id</th>
        <th>userId</th>
        <th>title</th>
        <th>text_content</th>
        <th>picture</th>
        <th>operation</th>
    </tr>
    <c:forEach var="announce" items="${announcementList}">
        <tr>
            <td>${announce.id}</td>
            <td>${announce.userId}</td>
            <td>${announce.title}</td>
            <td>${announce.textContent}</td>
            <td>${announce.picture}</td>
            <td>
                <a href="${pageContext.request.contextPath}/announcement/findById?id=${announce.id}">
                    修改
                </a>
                <a href="${pageContext.request.contextPath}/announcement/deleteById?id=${announce.id}">
                    删除
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/pages/announcement.jsp">返回</a>

</body>
</html>
