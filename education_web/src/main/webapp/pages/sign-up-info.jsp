<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.11
  Time: 9:41
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>


<c:if test="${sessionScope.user.verification == 3}">
    <form action="${pageContext.request.contextPath}/education/register" method="post">
        教育领域：<input type="text" name="subject"/><br>
        标识码：<input type="text" name="idCode"/><br>
        店铺地址：<input type="text" name="address"><br>
        教育适合年龄：<input type="text" name="ageRange"><br>
        联系方式：<input type="text" name="tel"><br>
        简介：<textarea name="info" cols="30" rows="10"></textarea><br>
        <input type="submit" value="提交">
    </form>
</c:if>

<c:if test="${sessionScope.user.verification == 2}">
    <form action="${pageContext.request.contextPath}/teacher/register" method="post">
        姓名：<input type="text" name="name"/><br>
        性别：<input type="radio" checked="checked" name="sex" value="male"/>男
        <input type="radio" name="sex" value="female"/>女 <br>
        年龄：<input type="text" name="age"/><br>
        教育领域：<input type="text" name="subject"/><br>
        从教年限：<input type="text" name="time"/><br>
        教育适合年龄：<input type="text" name="ageRange"/><br>
        身份证号：<input type="text" name="idNumber"/><br>
        联系方式：<input type="text" name="tel"/><br>
        简介：<textarea name="info" cols="30" rows="10"></textarea><br>
        <input type="submit" value="提交">
    </form>
</c:if>

<c:if test="${sessionScope.user.verification == 1}">
    <form action="${pageContext.request.contextPath}/parent/register" method="post">
        孩子姓名：<input type="text" name="childName"/><br>
        孩子年龄：<input type="text" name="childSex"/><br>
        孩子性别：<input type="radio" checked="checked" name="childSex" value="male"/>男
        <input type="radio" name="childSex" value="female"/>女 <br>
        家长姓名：<input type="text" name="name"><br>
        联系方式：<input type="text" name="tel"><br>
        <input type="submit" value="提交">
    </form>
</c:if>
<head>
    <title>注册页面</title>
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
            <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">请进一步完善信息</h3>
            <%--错误提示--%>
            <h5 id="span1" class="custom-h5">${requestScope.msg}</h5>
            <c:if test="${sessionScope.user.verification == 3}">
                <form action="${pageContext.request.contextPath}/education/register" method="post">
                    教育领域：<input type="text" name="subject"/><br>
                    标识码：<input type="text" name="idCode"/><br>
                    店铺地址：<input type="text" name="address"><br>
                    教育适合年龄：<input type="text" name="ageRange"><br>
                    联系方式：<input type="text" name="tel"><br>
                    简介：<textarea name="info" cols="30" rows="10"></textarea><br>
                    <input type="submit" value="提交">
                </form>

                <form action="${pageContext.request.contextPath}/education/register" method="post">

                    <div class="form-group">
                        <label class="col-form-label">教育领域</label>
                        <input type="text" class="form-control" placeholder="如：数学，语文.." name="subject" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">标识码</label>
                        <input type="text" class="form-control" placeholder="店铺标识码" name="idCode" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">店铺地址</label>
                        <input type="text" class="form-control" placeholder="**省**市**街道**小区" name="address"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">教育适合年龄</label>
                        <input type="text" class="form-control" placeholder="如：10-14" name="ageRange"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">联系方式</label>
                        <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="text-a">简介</label>
                        <textarea id="text-a" name="info" cols="30" rows="10"></textarea>
                    </div>

                    <button type="submit" class="btn button-style-w3">Register</button>
                </form>
            </c:if>
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

