<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.12
  Time: 14:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>添加课程</h3>

<form action="${pageContext.request.contextPath}/course/addCourse" method="post">
    课程名称：<input type="text" name="name"/><br>
    <%--课程时间；<input type="text" name="time"/><br>--%>
    上课地点：<input type="text" name="address"/><br>
    任课教师：<input type="text" name="teacher"/><br>
    课程内容：<input type="text" name="content"/><br>
    课程费用：<input type="text" name="fee"/><br>
    <input type="submit" value="提交"/>

</form>

</body>
</html>
