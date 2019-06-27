<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.27
  Time: 17:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新公告</title>

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
        .custom-h5 {
            color: red;
            text-align: center;
        }
    </style>
</head>

<body>
<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->


<!-- inner banner -->
<div class="inner-banner-w3ls py-5" id="home">
    <div class="container py-xl-5 py-lg-3">
        <!-- update  -->
        <div class="modal-body mt-md-2 mt-5">
            <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">更新公告信息</h3>
            <%--错误提示--%>
            <h5 id="span1" class="custom-h5">${requestScope.msg}</h5>

            <form action="${pageContext.request.contextPath}/announcement/updateById?id=${announcement.id}"
                  method="post">

                <div class="form-group">
                    <label class="col-form-label">Id*</label>
                    <input type="text" class="form-control" placeholder="" name=""
                           required="" disabled value="${announcement.id}">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Title</label>
                    <input type="text" class="form-control" placeholder="" name="title" required=""
                           value="${announcement.title}">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="text-a">TextContent</label>
                    <textarea id="text-a" class="form-control" name="textContent"
                              rows="5">${announcement.textContent}</textarea>
                </div>

                <div class="form-group">
                    <label class="col-form-label">Picture</label>
                    <input type="file" class="form-control" placeholder="" name="picture"
                    >
                </div>

                <button type="submit" class="btn button-style-w3">Submit</button>
            </form>

            <!-- //update -->
        </div>
    </div>
    <!-- //inner banner -->

    <!-- footer -->
    <jsp:include page="footer.jsp"/>
    <!-- //footer -->
    <!-- copyright -->
    <jsp:include page="copyright.jsp"/>
    <!-- //copyright -->
    <!-- move top icon -->
    <a href="#home" class="move-top text-center">
        <span class="fa fa-angle-double-up" aria-hidden="true"></span>
    </a>
    <!-- //move top icon -->

</body>
</html>


