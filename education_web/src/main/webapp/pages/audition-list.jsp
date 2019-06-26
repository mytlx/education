<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 19:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>试听申请列表</title>
</head>
<body>

<h3>试听申请列表</h3>
<h3>${requestScope.msg}</h3>
<table class="table1" border="1">
    <tr>
        <th>id</th>
        <th>course_id</th>
        <th>parent_id</th>
        <th>state</th>
        <th>操作</th>
    </tr>
    <c:forEach var="audition" items="${auditionList}">
        <tr>
            <td>${audition.id}</td>
            <td>
                <a href="${pageContext.request.contextPath}/course/findById?id=${audition.courseId}">
                        ${audition.courseId}
                </a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/parent/findById?id=${audition.parentId}">
                        ${audition.parentId}
                </a>
            </td>
            <td>${audition.stateStr}</td>
            <c:if test="${audition.state == 1}">
                <td>
                    <a href="${pageContext.request.contextPath}/audition/agreeRequest?auditionId=${audition.id}">
                        同意申请
                    </a>
                    <a href="${pageContext.request.contextPath}/audition/refuseRequest?auditionId=${audition.id}">
                        拒绝
                    </a>
                </td>
            </c:if>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/pages/main.jsp">返回</a>

</body>
</html>
