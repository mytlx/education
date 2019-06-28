<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 14:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>公告</title>

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

        .custom-tr {
            border-collapse: collapse;
            border-bottom: 1px solid #e7e7e7;

        }

        .custom-td {
            text-overflow: ellipsis;
            overflow: hidden;
            max-width: 12rem;
            white-space: nowrap;
        }

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

<!-- announcement -->
<section class="branches py-5" id="courses" style=" background-color: #f8f9fe;">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-5 text-center font-weight-bold">Announcement List</h3>
        <div class="card-title pr" style="text-align: center; color:red">
            <h3>${requestScope.msg}</h3>
        </div>
        <%--用户类型是education和teacher时，显示这两个选项--%>
        <c:if test="${sessionScope.user.verification == 4 or sessionScope.user.verification == 5}">
            <div style="overflow: hidden">
                <div class="card-title pr" style="float:left">
                    <a href="${pageContext.request.contextPath}/pages/announcement-add.jsp">
                        <h5>发布公告</h5>
                    </a>
                </div>
                <div class="card-title pr" style="float: right">
                    <a href="${pageContext.request.contextPath}/announcement/findByUserId">
                        <h5>已发表的公告</h5>
                    </a>
                </div>
            </div>
        </c:if>
        <div class="news-list" style="margin-top: 3rem">
            <c:forEach items="${announcementList}" var="announcement">
                <div class="news-item-body">
                    <h5>
                        <a href="${pageContext.request.contextPath}/announcement/findById?id=${announcement.id}&op=info"
                           class="title-lnk">
                                ${announcement.title}
                        </a>
                    </h5>
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
<!-- //announcement -->


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


<%--<h3>${requestScope.msg}</h3>--%>

<%--<c:if test="${sessionScope.user.verification == 4 or sessionScope.user.verification == 5}">--%>

<%--<a href="${pageContext.request.contextPath}/pages/announcement-add.jsp">--%>
<%--发布公告--%>
<%--</a>--%>
<%--&nbsp;&nbsp;--%>
<%--<a href="${pageContext.request.contextPath}/announcement/findByUserId">--%>
<%--已发表的公告--%>
<%--</a>--%>

<%--</c:if>--%>

<%--<table border="1">--%>
<%--<tr>--%>
<%--<th>id</th>--%>
<%--<th>userId</th>--%>
<%--<th>title</th>--%>
<%--<th>text_content</th>--%>
<%--<th>picture</th>--%>
<%--<c:if test="${sessionScope.user.id == 0}">--%>
<%--<th>operation</th>--%>
<%--</c:if>--%>
<%--</tr>--%>
<%--<c:forEach var="announce" items="${announcementList}">--%>
<%--<tr>--%>
<%--<td>${announce.id}</td>--%>
<%--<td>${announce.userId}</td>--%>
<%--<td>${announce.title}</td>--%>
<%--<td>${announce.textContent}</td>--%>
<%--<td>${announce.picture}</td>--%>
<%--<c:if test="${sessionScope.user.id == 0}">--%>
<%--<td>--%>
<%--<a href="${pageContext.request.contextPath}/announcement/deleteById?id=${announce.id}">--%>
<%--删除--%>
<%--</a>--%>
<%--<a href="${pageContext.request.contextPath}/announcement/findById?id=${announce.id}">--%>
<%--修改--%>
<%--</a>--%>
<%--</td>--%>
<%--</c:if>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>

<%--<c:if test="${sessionScope.user.id == 0}">--%>
<%--<a href="${pageContext.request.contextPath}/pages/admin.jsp">--%>
<%--返回主页--%>
<%--</a>--%>
<%--</c:if>--%>

