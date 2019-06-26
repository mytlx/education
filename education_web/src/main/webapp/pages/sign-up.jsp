<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.11
  Time: 9:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>注册</title>
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
        <!-- register  -->
        <div class="modal-body mt-md-2 mt-5">
            <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Register Now</h3>
            <%--错误提示--%>
            <h5 id="span1" class="custom-h5">${requestScope.msg}</h5>

            <form action="${pageContext.request.contextPath}/user/signUpUser" method="post">
                <%--<div class="form-group">--%>
                    <%--<label class="col-form-label" for="tlx-select">UserType</label>--%>
                    <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--<select id="tlx-select" name="verification">--%>
                        <%--<option value="1">学生家长</option>--%>
                        <%--<option value="2">个人教师</option>--%>
                        <%--<option value="3">教育机构</option>--%>
                    <%--</select>--%>
                <%--</div>--%>
                <div class="form-group">
                    <label class="col-form-label">Username</label>
                    <input type="text" class="form-control" placeholder="your name" name="username" required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Password</label>
                    <input type="password" class="form-control" placeholder="*****" name="password" required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Confirm Password</label>
                    <input type="password" class="form-control" placeholder="*****" name="password1" required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Email</label>
                    <input type="email" class="form-control" placeholder="loremipsum@email.com" name="email"
                           required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">Phone</label>
                    <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                           required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="tlx-select">UserType</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <select id="tlx-select" name="verification">
                        <option value="1">学生家长</option>
                        <option value="2">个人教师</option>
                        <option value="3">教育机构</option>
                    </select>
                </div>
                <div class="sub-w3l my-3">
                    <div class="sub-w3layouts_hub">
                        <input type="checkbox" id="brand1" value="">
                        <label for="brand1" class="text-li text-style-w3ls">
                            <span></span>I Accept to the Terms & Conditions</label>
                    </div>
                </div>
                <button type="submit" class="btn button-style-w3">Register</button>
            </form>
        </div>
        <!-- //register -->
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
