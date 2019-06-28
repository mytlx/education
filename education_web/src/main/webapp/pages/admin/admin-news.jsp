<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.28
  Time: 10:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理系统-新闻</title>
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

        .news-item-body {
            /*width: 1100px;*/
            margin: 0 auto 15px;
            border-bottom: 1px #005cbf solid;
            padding: 0 10px 15px;
        }

        .post-item-summary {
            color: #333;
            margin-top: 1rem;
            font-size: 18px
        }

        .post_item_foot {
            color: #555;
            font-family: none;
            margin-top: 1rem;
            font-size: 16px
        }

        .tlx-ul {
            float: right;
        }

        .tlx-ul > li {
            margin-right: 2rem;
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
                            <h1>后台管理系统-新闻列表</h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">News</a></li>
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
                                <h4>新闻列表</h4><br>
                                <div style="float: right; margin-right: 1rem">
                                    <a href="${pageContext.request.contextPath}/pages/admin/admin-news-add.jsp">
                                    <h4 style="color: deepskyblue">发布新闻</h4>
                                    </a>
                                </div>
                                <h3 style="color: red;margin-top: 1rem;">${requestScope.msg}</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <%--<div style="overflow: hidden">--%>
                                    <%--<div class="card-title pr" style="float:left">--%>
                                    <%--<a href="${pageContext.request.contextPath}/pages/announcement-add.jsp">--%>
                                    <%--<h5>发布公告</h5>--%>
                                    <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="card-title pr" style="float: right">--%>
                                    <%--<a href="${pageContext.request.contextPath}/announcement/findByUserId">--%>
                                    <%--<h5>已发表的公告</h5>--%>
                                    <%--</a>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <div class="news-list" style="margin-top: 3rem">
                                        <c:forEach items="${newsList}" var="news">
                                            <div class="news-item-body">
                                                <div style="overflow: hidden">
                                                    <div style="float: left">
                                                        <h5>
                                                            <a href="${pageContext.request.contextPath}/news/findById?id=${news.id}&op=info"
                                                               class="title-lnk">
                                                                    ${news.title}
                                                            </a>
                                                        </h5>
                                                    </div>
                                                    <div class="card-title pr" style="float:right;">
                                                        <a href="${pageContext.request.contextPath}/news/findById?id=${news.id}&op=update">
                                                            <h6 style="color:red; margin-top: 0.5rem">编辑</h6>
                                                        </a>
                                                    </div>
                                                    <div class="card-title pr" style="float: right;margin-right: 1rem">
                                                        <a href="${pageContext.request.contextPath}/news/deleteNews?id=${news.id}">
                                                            <h6 style="color:red; margin-top: 0.5rem">删除</h6>
                                                        </a>
                                                    </div>
                                                </div>
                                                <p class="post-item-summary">
                                                    <a href="" target="_blank"></a>
                                                    <c:if test="${fn:length(news.textContent) > '120'}">
                                                        ${fn:substring(news.textContent, 0, 120)}...
                                                    </c:if>
                                                    <c:if test="${fn:length(news.textContent) < '120'}">
                                                        ${news.textContent}
                                                    </c:if>
                                                </p>
                                                <div class="post_item_foot">
                                                    发布于 ${news.timeStr}
                                                </div>
                                            </div>
                                        </c:forEach>
                                        <div class="" style=" margin: 0 auto 15px; padding: 0 10px 15px; overflow: hidden;">
                                            <ul class="pagination tlx-ul">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=${pageInfo.pageSize}"
                                                       aria-label="Previous">首页</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a>
                                                </li>
                                                <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                                                    </li>
                                                </c:forEach>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}"
                                                       aria-label="Next">尾页</a>
                                                </li>
                                            </ul>
                                        </div>
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



