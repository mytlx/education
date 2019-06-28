<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.28
  Time: 10:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理系统-发布新闻</title>
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
                            <h1>后台管理系统-发布新闻</h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">News Add</a></li>
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
                                <h4>发布新闻</h4><br>
                                <div style="float: right; margin-right: 1rem">
                                    <a href="${pageContext.request.contextPath}/user/findPermission">
                                        <h4 style="color: deepskyblue">返回</h4>
                                    </a>
                                </div>
                                <h3 style="color: red">${requestScope.msg}</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                        <table class="table student-data-table m-t-20">
                                            <tr>
                                                <th>
                                                    <label class="col-form-label">Title</label>
                                                </th>
                                                <td>
                                                    <input type="text" class="form-control" placeholder="标题" name="ageRange"
                                                           required="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <label class="col-form-label" for="text-a1">textContent</label>
                                                </th>
                                                <td>
                                                    <textarea id="text-a1" class="form-control" name="info" rows="4"
                                                    style="height: 10rem"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <button type="submit" class="btn button-style-w3"
                                                    style="float: right">Submit</button>
                                                </td>
                                            </tr>
                                        </table>
                                </div>
                            </div>
                        </div>
                    </div>

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


