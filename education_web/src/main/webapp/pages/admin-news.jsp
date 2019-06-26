<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.22
  Time: 22:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新闻</title>
</head>
<body>

<h3>新闻</h3>

<h3>${requestScope.msg}</h3>

<a href="${pageContext.request.contextPath}/pages/news-add.jsp">发布新闻</a>

<table border="1">

    <tr>
        <th>id</th>
        <th>title</th>
        <th>content</th>
        <th>time</th>
        <th>operation</th>
    </tr>
    <c:forEach items="${newsList}" var="news">
        <tr>
            <td>${news.id}</td>
            <td>${news.title}</td>
            <td>${news.textContent}</td>
            <td>${news.timeStr}</td>
            <td>
                <a href="${pageContext.request.contextPath}/news/findById?id=${news.id}">
                    编辑
                </a>
                <a href="${pageContext.request.contextPath}/news/deleteNews?id=${news.id}">
                    删除
                </a>
            </td>
        </tr>
    </c:forEach>

</table>
<a href="${pageContext.request.contextPath}/pages/admin.jsp">返回主页</a>

</body>
</html>
