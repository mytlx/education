<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.11
  Time: 22:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            background: url(../img/bg1.jpg) no-repeat center fixed;
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

<!-- apps -->
<div class="apps_w3w3pvt bg-li py-5" id="apps">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-2 text-center text-bl font-weight-bold">Recent News</h3>
        <p class="text-center title-w3 mb-md-5 mb-4">Excepteur sint occaecat cupidatat</p>
    </div>
    <div class="img-podi-w3ls">
        <span class="fa fa-leanpub"></span>
    </div>

    <div class="news-list">
        <c:forEach items="${newsList}" var="news">
            <div class="news-item-body">
                <h5>
                    <a href="${pageContext.request.contextPath}/news/findById?id=${news.id}&op=info"
                       class="title-lnk">
                            ${news.title}
                    </a>
                </h5>
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
<!-- //apps -->

<!-- testimonials -->
<section class="clients py-5 tlx-bg" id="testi">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-sm-5 mb-4 text-center text-wh font-weight-bold">My School Video</h3>
        <div class="feedback-info text-center">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod.
                sed do eiusmod tempor
                incididunt
                ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                exercitation ullamco laboris nisi</p>
            <img src="../img/t1.png" alt=" " class="img-fluid mt-5">
            <h4 class="mt-4 text-wh font-weight-bold mb-4">Alizee Leah</h4>
        </div>
    </div>
</section>
<!-- //testimonials -->

<!-- apps -->
<div class="apps_w3w3pvt bg-li py-5" id="apps">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-2 text-center text-bl font-weight-bold">Video</h3>
        <p class="text-center title-w3 mb-md-5 mb-4">Excepteur sint occaecat cupidatat</p>
    </div>
    <%--<div class="img-podi-w3ls">--%>
        <%--<span class="fa fa-leanpub"></span>--%>
    <%--</div>--%>


</div>


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