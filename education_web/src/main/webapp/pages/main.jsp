<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.11
  Time: 22:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- Bootstrap-CSS -->
    <link href="../css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Style-CSS -->
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext"
          rel="stylesheet">
    <!-- //Web-Fonts -->
</head>
<body>
<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->
<div class="inner-banner-w3ls py-5" style="height: 900px">
    <!-- 学生家长 -->
    <c:if test="${sessionScope.user.verification == 1}">
        <a href="">个人课程表</a><br>
        <a href="${pageContext.request.contextPath}/course/findAll">查询</a><br>
    </c:if>

    <!-- 个人教师 -->
    <c:if test="${sessionScope.user.verification == 4}">
        <a href="${pageContext.request.contextPath}/course/findByUser">课程表</a><br>
        <a href="${pageContext.request.contextPath}/audition/findRequestByUserId">试听申请列表</a><br>
    </c:if>

    <!-- 培训机构 -->
    <c:if test="${sessionScope.user.verification == 5}">
        <a href="">店面选择</a><br>
        <a href="${pageContext.request.contextPath}/course/findByUser">店面课程表</a><br>
        <a href="${pageContext.request.contextPath}/audition/findRequestByUserId">试听申请列表</a><br>
    </c:if>

    <%--共有的三项--%>
    <a href="${pageContext.request.contextPath}/pages/update-info.jsp">信息修改</a><br>
    <a href="${pageContext.request.contextPath}/announcement/findAll">通知公告</a><br>
    <a href="${pageContext.request.contextPath}/user/findByUserId">个人信息</a><br>
</div>
</body>
</html>
