<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.23
  Time: 22:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>权限审核</title>
</head>
<body>

<h3>权限审核</h3>

<h3>${requestScope.msg}</h3>

<c:if test="${not empty requestScope.userList}">
    <table border="1">
        <tr>
            <th>id</th>
            <th>username</th>
            <th>email</th>
            <th>tel</th>
            <th>state</th>
            <th>code</th>
            <th>verification</th>
            <th>operation</th>
        </tr>
        <c:forEach var="user" items="${requestScope.userList}">
            <tr>
                <td>${user.id}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/user/findRequestInfoByUserId?id=${user.id}&ver=${user.verification}">
                            ${user.username}
                    </a>
                </td>
                <td>${user.email}</td>
                <td>${user.tel}</td>
                <td>${user.stateStr}</td>
                <td>${user.code}</td>
                <td>${user.verificationStr}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/user/auditPermission?id=${user.id}&op=pass">
                        通过
                    </a>
                    <a href="${pageContext.request.contextPath}/user/auditPermission?id=${user.id}&op=reject">
                        拒绝
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${empty requestScope.userList}">
    <h3>无申请审核的账号</h3>
</c:if>

<a href="${pageContext.request.contextPath}/pages/admin.jsp">返回主页</a>

</body>
</html>
