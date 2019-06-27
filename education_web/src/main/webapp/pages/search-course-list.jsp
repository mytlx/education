<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 17:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查询课程列表</title>

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

    <style>
        .custom-div {
            height: 900px;
            border: 1px solid #e7e7e7;
            border-radius: 3px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }

        .custom-table {
            border-spacing: 2px;
            border-color: grey;
            text-align: center;

            background: #5c5b5bab;
            font-size: 30px;
            font-family: none;
            color: #fff;
            line-height: 58px;
        }

        .custom-time {
            text-overflow: ellipsis;
            overflow: hidden;
            max-width: 8rem;
            white-space: normal;

        }

        .custom-td {
            text-overflow: ellipsis;
            overflow: hidden;
            max-width: 6rem;
            white-space: nowrap;
        }
    </style>
</head>
<body>

<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->

<div id="home">
    <!-- testimonials -->
    <section class="clients py-5" id="testi">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-center text-wh font-weight-bold">What Students Say</h3>
            <div class="feedback-info text-center">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod.
                    sed do eiusmod tempor
                    incididunt
                    ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi</p>
                <img src="../img/te1.jpg" alt=" " class="img-fluid mt-5">
                <h4 class="mt-4 text-wh font-weight-bold mb-4">Mary Jane</h4>
            </div>
        </div>
    </section>
    <!-- //testimonials -->
</div>

<!-- courses -->
<section class="branches py-5" id="courses" style=" background-color: #f8f9fe;">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-5 text-center font-weight-bold">Course List</h3>
        <div class="card-title pr" style="text-align: center; color:red">
            <%--<h4>All Exam Result</h4>--%>
            <h3>${requestScope.msg}</h3>
        </div>

        <div class="row branches-position pt-lg-4" style=" padding-top: 0 !important;">
            <div class="card" style="background: #fff; font-family: none; margin:0 auto">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table student-data-table m-t-20">
                            <thead>
                            <tr>
                                <th>CourseId</th>
                                <th>UserId</th>
                                <th>CourseName</th>
                                <th>Teacher</th>
                                <th>Fee</th>
                                <th>Address</th>
                                <th>Time</th>
                                <th>RequestInfo</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="course" items="${courseList}">
                                <tr>
                                    <td class="custom-td">${course.id}</td>
                                    <td>${course.userId}</td>
                                    <td>${course.name}</td>
                                    <td>${course.teacher}</td>
                                    <td>￥${course.fee}</td>
                                    <td>${course.address}</td>
                                    <td class="custom-time">${course.timeStr}</td>
                                    <td>
                                        <c:if test="${course.state == 0}">
                                            <a href="${pageContext.request.contextPath}/audition/addRequest?courseId=${course.id}">
                                                申请试听
                                            </a>
                                        </c:if>
                                        <c:if test="${course.state == 1}">
                                            <a href="${pageContext.request.contextPath}/audition/cancelRequest?courseId=${course.id}">
                                                取消申请
                                            </a>
                                        </c:if>
                                        <c:if test="${course.state == 2}">
                                            ${course.stateStr}
                                        </c:if>
                                        <c:if test="${course.state == 3}">
                                            ${course.stateStr}
                                        </c:if>
                                        <a href="">购买</a>
                                    </td>
                                        <%--<td>${course.content}</td>--%>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //places -->


<!-- footer -->
<jsp:include page="${pageContext.request.contextPath}/pages/footer.jsp"/>
<!-- //footer -->

<!-- copyright -->
<jsp:include page="${pageContext.request.contextPath}/pages/copyright.jsp"/>

<!-- //copyright -->
<!-- move top icon -->
<a href="#home" class="move-top text-center">
    <span class="fa fa-angle-double-up" aria-hidden="true"></span>
</a>
<!-- //move top icon -->
</body>
</html>

