<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 19:37
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>家长信息</title>
</head>
<body>

<h3>家长信息</h3>

<table border="1">
    <tr>
        <th>id</th>
        <th>userId</th>
        <th>name</th>
        <th>tel</th>
        <th>child_name</th>
        <th>child_sex</th>
        <th>child_age</th>
        <th>subject</th>
        <th>min_fee</th>
        <th>max_fee</th>
        <th>address</th>
    </tr>

    <tr>
        <td>${parent.id}</td>
        <td>${parent.userId}</td>
        <td>${parent.name}</td>
        <td>${parent.tel}</td>
        <td>${parent.childName}</td>
        <td>${parent.childSex}</td>
        <td>${parent.childAge}</td>
        <td>${parent.subject}</td>
        <td>${parent.minFee}</td>
        <td>${parent.maxFee}</td>
        <td>${parent.address}</td>
    </tr>
</table>

<a href="${pageContext.request.contextPath}/audition/findRequestByUserId">返回</a>


</body>
</html>
