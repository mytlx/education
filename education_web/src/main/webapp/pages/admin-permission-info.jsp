<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.23
  Time: 23:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>申请账户详情</title>
</head>
<body>

<!-- 个人教师 -->
<c:if test="${requestScope.identity == 'teacher'}">
    <table border="1">
        <tr>
            <th>id</th>
            <th>user_id</th>
            <th>name</th>
            <th>sex</th>
            <th>age</th>
            <th>subject</th>
            <th>time</th>
            <th>age_range</th>
            <th>id_number</th>
            <th>tel</th>
            <th>info</th>
        </tr>
        <tr>
            <td>${info.id}</td>
            <td>${info.userId}</td>
            <td>${info.name}</td>
            <td>${info.sex}</td>
            <td>${info.age}</td>
            <td>${info.subject}</td>
            <td>${info.time}</td>
            <td>${info.ageRange}</td>
            <td>${info.idNumber}</td>
            <td>${info.tel}</td>
            <td>${info.info}</td>
        </tr>

    </table>

</c:if>

<!-- 培训机构 -->
<c:if test="${requestScope.identity == 'education'}">
    <table border="1">
        <tr>
            <th>id</th>
            <th>user_id</th>
            <th>subject</th>
            <th>id_code</th>
            <th>address</th>
            <th>age_range</th>
            <th>tel</th>
            <th>info</th>
        </tr>
        <tr>
            <td>${requestScope.info.id}</td>
            <td>${requestScope.info.userId}</td>
            <td>${requestScope.info.subject}</td>
            <td>${requestScope.info.idCode}</td>
            <td>${requestScope.info.address}</td>
            <td>${requestScope.info.ageRange}</td>
            <td>${requestScope.info.tel}</td>
            <td>${requestScope.info.info}</td>
        </tr>
    </table>

</c:if>
<a href="${pageContext.request.contextPath}/user/findPermission">返回</a>


</body>
</html>
