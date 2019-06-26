<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.10
  Time: 21:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h3>login</h3>--%>
<%--<h3>${requestScope.msg}</h3>--%>
<%--<form action="${pageContext.request.contextPath}/user/login" method="post">--%>
<%--用户名：<input type="text" name="username"/><br>--%>
<%--密码：<input type="password" name="password"/><br>--%>
<%--<input type="submit" value="登录"><br>--%>
<%--<a href="${pageContext.request.contextPath}/pages/sign-up.jsp">还没账户，点击注册</a>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>


<%--==================================================--%>
<head>
    <title>Login</title>
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
        .custom-span {
            color: red;
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
        <!-- login  -->
        <div class="modal-body my-5 pt-4">
            <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Login Now</h3>
            <form action="${pageContext.request.contextPath}/user/login" method="post">
                <div class="form-group">
                    <label class="col-form-label">Username</label>
                    <input type="text" class="form-control" placeholder="username" name="username" required="">

                    <%--错误提示--%>
                    <span id="span1" class="custom-span">${requestScope.msg}</span>

                </div>
                <div class="form-group">
                    <label class="col-form-label">Password</label>
                    <input type="password" class="form-control" placeholder="*****" name="password" required="">
                </div>
                <button type="submit" class="btn button-style-w3">Login</button>
                <div class="row sub-w3l mt-3 mb-5">
                    <div class="col-sm-6 sub-w3layouts_hub">
                        <input type="checkbox" id="brand1" name="autoLogin">
                        <label for="brand1" class="text-li text-style-w3ls">
                            <span></span>Remember me?</label>
                    </div>
                    <div class="col-sm-6 forgot-w3l text-sm-right">
                        <a href="#" class="text-li text-style-w3ls">Forgot Password?</a>
                    </div>
                </div>
                <p class="text-center dont-do text-style-w3ls text-li">Don't have an account?
                    <a href="${pageContext.request.contextPath}/pages/sign-up.jsp" class="font-weight-bold text-li">
                        Register Now</a>
                </p>
            </form>
        </div>
        <!-- //login -->
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