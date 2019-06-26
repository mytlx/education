<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 10:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人信息</title>
</head>
<body>
<h3>${msg}</h3>
<!-- 学生家长 -->
<c:if test="${sessionScope.user.verification == 1}">

    <table border="1">
        <tr>
            <td>id</td>
            <td>${info.id}</td>
        </tr>
        <tr>
            <td>userId</td>
            <td>${info.userId}</td>
        </tr>
        <tr>
            <td>name</td>
            <td>${info.name}</td>
        </tr>
        <tr>
            <td>tel</td>
            <td>${info.tel}</td>
        </tr>
        <tr>
            <td>child_name</td>
            <td>${info.childName}</td>
        </tr>
        <tr>
            <td>child_sex</td>
            <td>${info.childSex}</td>
        </tr>
        <tr>
            <td>child_age</td>
            <td>${info.childAge}</td>
        </tr>
        <tr>
            <td>subject</td>
            <td>${info.subject}</td>
        </tr>
        <tr>
            <td>min_fee</td>
            <td>${info.minFee}</td>
        </tr>
        <tr>
            <td>max_fee</td>
            <td>${info.maxFee}</td>
        </tr>
        <tr>
            <td>address</td>
            <td>${info.address}</td>
        </tr>

    </table>

</c:if>

<!-- 个人教师 -->
<c:if test="${sessionScope.user.verification == 4}">
    <table border="1">
        <tr>
            <td>id</td>
            <td>${info.id}</td>
        </tr>
        <tr>
            <td>userId</td>
            <td>${info.userId}</td>
        </tr>
        <tr>
            <td>name</td>
            <td>${info.name}</td>
        </tr>
        <tr>
            <td>sex</td>
            <td>${info.sex}</td>
        </tr>
        <tr>
            <td>age</td>
            <td>${info.age}</td>
        </tr>
        <tr>
            <td>subject</td>
            <td>${info.subject}</td>
        </tr>
        <tr>
            <td>time</td>
            <td>${info.time}</td>
        </tr>
        <tr>
            <td>age_range</td>
            <td>${info.ageRange}</td>
        </tr>
        <tr>
            <td>id_number</td>
            <td>${info.idNumber}</td>
        </tr>
        <tr>
            <td>tel</td>
            <td>${info.tel}</td>
        </tr>
        <tr>
            <td>info</td>
            <td>${info.info}</td>
        </tr>

    </table>

</c:if>

<!-- 培训机构 -->
<c:if test="${sessionScope.user.verification == 5}">
    <table border="1">
        <tr>
            <td>id</td>
            <td>${info.id}</td>
        </tr>
        <tr>
            <td>userId</td>
            <td>${info.userId}</td>
        </tr>
        <tr>
            <td>subject</td>
            <td>${info.subject}</td>
        </tr>
        <tr>
            <td>id_code</td>
            <td>${info.idCode}</td>
        </tr>
        <tr>
            <td>address</td>
            <td>${info.address}</td>
        </tr>
        <tr>
            <td>age_range</td>
            <td>${info.ageRange}</td>
        </tr>
        <tr>
            <td>tel</td>
            <td>${info.tel}</td>
        </tr>
        <tr>
            <td>info</td>
            <td>${info.info}</td>
        </tr>
    </table>

</c:if>
<a href="${pageContext.request.contextPath}/pages/main.jsp">返回</a>

</body>
</html>
