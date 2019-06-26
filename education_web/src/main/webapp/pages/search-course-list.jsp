<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 17:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查询课程列表</title>
</head>
<body>

<h3>${requestScope.msg}</h3>

<table border="1">
    <tr>
        <th>id</th>
        <th>userId</th>
        <th>name</th>
        <th>time</th>
        <th>address</th>
        <th>teacher</th>
        <th>content</th>
        <th>fee</th>
        <th>申请情况</th>
    </tr>
    <c:forEach var="course" items="${courseList}">
        <tr>
            <td>${course.id}</td>
            <td>${course.userId}</td>
            <td>${course.name}</td>
            <td>${course.timeStr}</td>
            <td>${course.address}</td>
            <td>${course.teacher}</td>
            <td>${course.content}</td>
            <td>${course.fee}</td>
            <td>
                <c:if test="${course.state == 0}">
                    <a href="${pageContext.request.contextPath}/audition/addRequest?courseId=${course.id}">
                        申请试听
                    </a>
                </c:if>
                <c:if test="${course.state == 1}">
                    <a href="${pageContext.request.contextPath}/audition/cancelRequest?courseId=${course.id}">
                        取消申请
                    </a>
                </c:if>
                <c:if test="${course.state == 2}">
                    ${course.stateStr}
                </c:if>
                <c:if test="${course.state == 3}">
                    ${course.stateStr}
                </c:if>
                <a href="">购买</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/pages/main.jsp">返回</a>

</body>
</html>
