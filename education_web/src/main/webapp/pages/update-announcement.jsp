<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 21:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新公告</title>
</head>
<body>

<h3>更新公告</h3>

<form action="${pageContext.request.contextPath}/announcement/updateById?id=${announcement.id}" method="post">
    <table border="1">

        <tr>
            <td>标题</td>
            <td>
                <input type="text" name="title" value="${announcement.title}"/>
            </td>
        </tr>
        <tr>
            <td>内容</td>
            <td>
                <textarea name="textContent" cols="30" rows="10">${announcement.textContent}
                </textarea>
            </td>
        </tr>
        <tr>
            <td>图片</td>
            <td>
                <input type="text" name="picture" value="${announcement.picture}">
            </td>
        </tr>
    </table>
    <input type="submit" value="提交"/>
</form>

<c:if test="${sessionScope.user.id != 0}">
    <a href="${pageContext.request.contextPath}/announcement/findByUserId">
        返回
    </a>
</c:if>
<c:if test="${sessionScope.user.id == 0}">
    <a href="${pageContext.request.contextPath}/announcement/findAll">
        返回
    </a>
</c:if>



</body>
</html>
