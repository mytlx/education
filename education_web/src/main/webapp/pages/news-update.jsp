<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.22
  Time: 23:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>更新新闻</title>
</head>
<body>

<h3>更新新闻</h3>

<form action="${pageContext.request.contextPath}/news/updateNews?id=${news.id}" method="post">
    <table border="1">

        <tr>
            <td>标题</td>
            <td>
                <input type="text" name="title" value="${news.title}"/>
            </td>
        </tr>
        <tr>
            <td>内容</td>
            <td>
                <textarea name="textContent" cols="30" rows="10">${news.textContent}
                </textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="提交"/>
</form>
<a href="${pageContext.request.contextPath}/news/findAll">返回</a>


</body>
</html>
