<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.28
  Time: 1:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理系统-权限详情</title>
    <!-- Styles -->
    <link href="../../assets/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="../../assets/css/lib/owl.carousel.min.css" rel="stylesheet"/>
    <link href="../../assets/css/lib/owl.theme.default.min.css" rel="stylesheet"/>
    <link href="../../assets/css/lib/weather-icons.css" rel="stylesheet"/>
    <link href="../../assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="../../assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/helper.css" rel="stylesheet">
    <link href="../../assets/css/style.css" rel="stylesheet">

    <style>
        .tlx-td {
            text-overflow: ellipsis;
            overflow: hidden;
            max-width: 8rem;
            white-space: nowrap;
        }

        a {
            color: #0d71bb
        }
    </style>

</head>

<body>

<jsp:include page="sidebar.jsp"/>
<!-- /# sidebar -->

<jsp:include page="header.jsp"/>


<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>后台管理系统-权限审核</h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Permission Info</a></li>
                                <li class="breadcrumb-item active">Home</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
            <!-- /# row -->
            <section id="main-content">
                <div class="row">
                    <!-- /# column -->
                    <div class="col-lg-8" style="margin: 5rem auto;">
                        <div class="card">
                            <div class="card-title pr">
                                <h4>权限申请人信息</h4><br>
                                <h3 style="color: red">${requestScope.msg}</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <c:if test="${not empty requestScope.userList}">
                                        <table class="table student-data-table m-t-20">

                                            <tr>
                                                <th>UserId</th>
                                                <th>Username</th>
                                                <th>Email</th>
                                                <th>Tel</th>
                                                <th>状态</th>
                                                <th>激活码</th>
                                                <th>申请情况</th>
                                                <th>操作</th>
                                            </tr>
                                            <tbody>
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
                                                    <td class="tlx-td">${user.code}</td>
                                                    <td>${user.verificationStr}</td>
                                                    <td>
                                                        <a href="${pageContext.request.contextPath}/user/auditPermission?id=${user.id}&op=pass"
                                                           style="color: #0d71bb">
                                                            通过
                                                        </a>
                                                        <a href="${pageContext.request.contextPath}/user/auditPermission?id=${user.id}&op=reject"
                                                           style="color: #0d71bb">
                                                            拒绝
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </c:if>
                                    <c:if test="${empty requestScope.userList}">
                                        <h3>无申请审核的账号</h3>
                                    </c:if>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->

                    <%--<div class="col-lg-4">--%>
                    <%--<div class="card">--%>
                    <%--<div class="card-body">--%>
                    <%--<div class="year-calendar"></div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<!-- /# card -->--%>
                    <%--</div>--%>
                </div>
            </section>
        </div>
    </div>
</div>

<!-- jquery vendor -->
<script src="../../assets/js/lib/jquery.min.js"></script>
<script src="../../assets/js/lib/jquery.nanoscroller.min.js"></script>
<!-- nano scroller -->
<script src="../../assets/js/lib/menubar/sidebar.js"></script>
<script src="../../assets/js/lib/preloader/pace.min.js"></script>
<!-- sidebar -->

<script src="../../assets/js/lib/bootstrap.min.js"></script>
<script src="../../assets/js/scripts.js"></script>
<!-- bootstrap -->

<script src="../../assets/js/lib/calendar-2/moment.latest.min.js"></script>
<script src="../../assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
<script src="../../assets/js/lib/calendar-2/pignose.init.js"></script>


<script src="../../assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
<script src="../../assets/js/lib/weather/weather-init.js"></script>
<script src="../../assets/js/lib/circle-progress/circle-progress.min.js"></script>
<script src="../../assets/js/lib/circle-progress/circle-progress-init.js"></script>
<script src="../../assets/js/lib/chartist/chartist.min.js"></script>
<script src="../../assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
<script src="../../assets/js/lib/sparklinechart/sparkline.init.js"></script>
<script src="../../assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
<script src="../../assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
<!-- scripit init-->
<script src="../../assets/js/dashboard2.js"></script>
</body>
</html>


