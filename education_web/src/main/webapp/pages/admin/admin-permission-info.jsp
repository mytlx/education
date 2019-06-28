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
        .table td {
            text-overflow: ellipsis;
            overflow: hidden;
            min-width: 5rem;
            white-space: nowrap;
            text-align: left !important;
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
                                <li class="breadcrumb-item">
                                    <a href="${pageContext.request.contextPath}/user/findPermission">
                                        Permission</a>
                                </li>
                                <li class="breadcrumb-item active">Home</li>
                            </ol>
                        </div>
                    </div>
                </div>                <!-- /# column -->
            </div>
            <!-- /# row -->
            <section id="main-content">
                <div class="row">
                    <!-- /# column -->
                    <div class="col-lg-8" style="margin: 5rem auto;">
                        <div class="card">
                            <div class="card-title pr">
                                <h4>权限申请人信息</h4><br>
                                <div style="float: right; margin-right: 1rem">
                                    <a href="${pageContext.request.contextPath}/user/findPermission">
                                        <h4 style="color: deepskyblue">返回</h4>
                                    </a>
                                </div>
                                <h3 style="color: red">${requestScope.msg}</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <!-- 个人教师 -->
                                    <c:if test="${requestScope.identity == 'teacher'}">
                                        <table class="table student-data-table m-t-20">
                                            <tr>
                                                <th>Id</th>
                                                <td>${info.id}</td>
                                            </tr>
                                            <tr>
                                                <th>UserId</th>
                                                <td>${info.userId}</td>
                                            </tr>
                                            <tr>
                                                <th>姓名</th>
                                                <td>${info.name}</td>
                                            </tr>
                                            <tr>
                                                <th>性别</th>
                                                <td>${info.sex}</td>
                                            </tr>
                                            <tr>
                                                <th>年龄</th>
                                                <td>${info.age}</td>
                                            </tr>
                                            <tr>
                                                <th>教育领域</th>
                                                <td>${info.subject}</td>
                                            </tr>
                                            <tr>
                                                <th>从教年限</th>
                                                <td>${info.time}</td>
                                            </tr>
                                            <tr>
                                                <th>教育适合年龄</th>
                                                <td>${info.ageRange}</td>
                                            </tr>
                                            <tr>
                                                <th>身份证号</th>
                                                <td>${info.idNumber}</td>
                                            </tr>
                                            <tr>
                                                <th>联系方式</th>
                                                <td>${info.tel}</td>
                                            </tr>
                                            <tr>
                                                <th>简介</th>
                                                <td>${info.info}</td>
                                            </tr>
                                        </table>
                                    </c:if>

                                    <!-- 培训机构 -->
                                    <c:if test="${requestScope.identity == 'education'}">
                                        <table class="table student-data-table m-t-20">
                                            <tr>
                                                <th>Id</th>
                                                <td>${info.id}</td>
                                            </tr>
                                            <tr>
                                                <th>UserId</th>
                                                <td>${info.userId}</td>
                                            </tr>
                                            <tr>
                                                <th>教育领域</th>
                                                <td>${info.subject}</td>
                                            </tr>
                                            <tr>
                                                <th>标识码</th>
                                                <td>${info.idCode}</td>
                                            </tr>
                                            <tr>
                                                <th>店铺地址</th>
                                                <td>${info.address}</td>
                                            </tr>
                                            <tr>
                                                <th>教育适合年龄</th>
                                                <td>${info.ageRange}</td>
                                            </tr>
                                            <tr>
                                                <th>联系方式</th>
                                                <td>${info.tel}</td>
                                            </tr>
                                            <tr>
                                                <th>简介</th>
                                                <td>${info.info}</td>
                                            </tr>
                                        </table>
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


