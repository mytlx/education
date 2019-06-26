<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 14:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>公告</title>
</head>
<body>

<h3>${requestScope.msg}</h3>

<c:if test="${sessionScope.user.verification == 4 or sessionScope.user.verification == 5}">

    <a href="${pageContext.request.contextPath}/pages/add-announcement.jsp">
        发布公告
    </a>
    &nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/announcement/findByUserId">
        已发表的公告
    </a>

</c:if>

<table border="1">
    <tr>
        <th>id</th>
        <th>userId</th>
        <th>title</th>
        <th>text_content</th>
        <th>picture</th>
        <c:if test="${sessionScope.user.id == 0}">
            <th>operation</th>
        </c:if>
    </tr>
    <c:forEach var="announce" items="${announcementList}">
        <tr>
            <td>${announce.id}</td>
            <td>${announce.userId}</td>
            <td>${announce.title}</td>
            <td>${announce.textContent}</td>
            <td>${announce.picture}</td>
            <c:if test="${sessionScope.user.id == 0}">
                <td>
                    <a href="${pageContext.request.contextPath}/announcement/deleteById?id=${announce.id}">
                        删除
                    </a>
                    <a href="${pageContext.request.contextPath}/announcement/findById?id=${announce.id}">
                        修改
                    </a>
                </td>
            </c:if>
        </tr>
    </c:forEach>
</table>

<c:if test="${sessionScope.user.id != 0}">
<a href="${pageContext.request.contextPath}/pages/main.jsp">
    返回主页
</a>
</c:if>
<c:if test="${sessionScope.user.id == 0}">
    <a href="${pageContext.request.contextPath}/pages/admin.jsp">
        返回主页
    </a>
</c:if>

</body>
</html>
