<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 19:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>课程详情</title>
</head>
<body>

<h3>课程详情</h3>

<h3>${msg}</h3>
<c:if test="${not empty course}">
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
        </tr>

        <tr>
            <td>${course.id}</td>
            <td>${course.userId}</td>
            <td>${course.name}</td>
            <td>${course.timeStr}</td>
            <td>${course.address}</td>
            <td>${course.teacher}</td>
            <td>${course.content}</td>
            <td>${course.fee}</td>
        </tr>
    </table>
</c:if>
<a href="${pageContext.request.contextPath}/audition/findRequestByUserId">返回</a>


</body>
</html>
