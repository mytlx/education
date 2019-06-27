<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.25
  Time: 22:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<!-- header -->

<header>
    <div class="container">
        <div class="header d-lg-flex justify-content-between align-items-center py-2 px-sm-2 px-1">
            <!-- logo -->
            <div id="logo">
                <h1><a href="${pageContext.request.contextPath}/index.jsp">My School</a></h1>
            </div>
            <!-- //logo -->
            <!-- nav -->
            <div class="nav_w3ls ml-lg-5">
                <nav>
                    <ul class="menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/user/index">
                                Home
                            </a>
                        </li>

                        <c:if test="${not empty sessionScope.user}">
                            <!-- 学生家长 -->
                            <c:if test="${sessionScope.user.verification == 1}">
                                <li><a href="">个人课程表</a></li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/course/findAll">
                                        查询
                                    </a>
                                </li>
                            </c:if>

                            <!-- 个人教师 -->
                            <c:if test="${sessionScope.user.verification == 4}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/course/findByUser">
                                        课程表
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/audition/findRequestByUserId">
                                        试听申请列表
                                    </a>
                                </li>
                            </c:if>

                            <!-- 培训机构 -->
                            <c:if test="${sessionScope.user.verification == 5}">
                                <li>
                                    <a href="">店面选择</a></li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/course/findByUser">
                                        店面课程表
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/audition/findRequestByUserId">
                                        试听申请列表
                                    </a>
                                </li>
                            </c:if>

                            <!-- 共有的三项 -->
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findByUserId?op=update">
                                    信息修改
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/announcement/findAll">
                                    通知公告
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/findByUserId?op=info">
                                    个人信息
                                </a>
                            </li>

                            <li>
                                <a href="${pageContext.request.contextPath}/user/logout">
                                    退出
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${empty sessionScope.user}">
                            <li>
                                <a href="${pageContext.request.contextPath}/user/login">
                                    Login
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/pages/sign-up.jsp">
                                    Register
                                </a>
                            </li>
                        </c:if>
                    </ul>
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop"/>
                </nav>
            </div>
            <!-- //nav -->
        </div>
    </div>
</header>


</body>
</html>
