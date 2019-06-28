<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 16:03
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>已发布公告</title>

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
        .news-item-body {
            width: 1100px;
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

        .tlx-bg {
            background: url(../img/bg3.jpg) no-repeat center fixed;
            -webkit-background-size: cover;
        }

    </style>
</head>
<body>

<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->

<div id="home">
    <!-- testimonials -->
    <section class="clients py-5 tlx-bg" id="testi">
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
        <h3 class="title-w3 mb-5 text-center font-weight-bold">Your Announcement List</h3>
        <div class="card-title pr" style="text-align: center; color:red">
            <h3>${requestScope.msg}</h3>
        </div>

        <div class="news-list" style="margin-top: 3rem">
            <c:forEach items="${announcementList}" var="announcement">
                <div class="news-item-body">
                    <div style="overflow: hidden">
                        <div style="float: left">
                            <h5>
                                <a href="${pageContext.request.contextPath}/announcement/findById?id=${announcement.id}&op=info"
                                   class="title-lnk">
                                        ${announcement.title}
                                </a>
                            </h5>
                        </div>
                        <div class="card-title pr" style="float:right;">
                            <a href="${pageContext.request.contextPath}/announcement/findById?id=${announcement.id}&op=update">
                                <h6 style="color:red; margin-top: 0.5rem">修改</h6>
                            </a>
                        </div>
                        <div class="card-title pr" style="float: right;margin-right: 1rem">
                            <a href="${pageContext.request.contextPath}/announcement/deleteById?id=${announcement.id}">
                                <h6 style="color:red; margin-top: 0.5rem">删除</h6>
                            </a>
                        </div>
                    </div>

                    <p class="post-item-summary">
                        <a href="" target="_blank"></a>
                        <c:if test="${fn:length(announcement.textContent) > '120'}">
                            ${fn:substring(announcement.textContent, 0, 120)}...
                        </c:if>
                        <c:if test="${fn:length(announcement.textContent) < '120'}">
                            ${announcement.textContent}
                        </c:if>
                    </p>
                    <div class="post_item_foot">
                        <a href="${pageContext.request.contextPath}/user/findByParamId?id=${announcement.userId}">
                                ${announcement.username}
                        </a>
                        发布于 ${announcement.timeStr}
                    </div>
                </div>
            </c:forEach>
            <div class="" style=" width: 1100px;
            margin: 0 auto 15px;
            padding: 0 10px 15px;
            overflow: hidden;">
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


