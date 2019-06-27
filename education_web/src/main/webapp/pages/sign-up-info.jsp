<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.11
  Time: 9:41
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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

            <!-- 教育机构 -->
            <c:if test="${sessionScope.user.verification == 3}">
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
                        <textarea id="text-a" class="form-control" name="info" rows="4"></textarea>
                    </div>

                    <button type="submit" class="btn button-style-w3">Submit</button>
                </form>
            </c:if>

            <!-- 个人教师 -->
            <c:if test="${sessionScope.user.verification == 2}">
                <form action="${pageContext.request.contextPath}/teacher/register" method="post">
                    <div class="form-group">
                        <label class="col-form-label">姓名</label>
                        <input type="text" class="form-control" placeholder="name" name="name" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">性别</label>
                        <div style="padding-left: 5rem;">
                            <label for="radio11" class="text-li text-style-w3ls">
                                <span></span>男
                            </label>
                            <input type="radio" id="radio11" checked="checked" name="sex" value="male">
                            <label for="radio22" class="text-li text-style-w3ls" style="margin-left: 3rem;">
                                <span></span>女
                            </label>
                            <input type="radio" id="radio22" name="sex" value="female">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">年龄</label>
                        <input type="text" class="form-control" placeholder="age" name="age"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">教育领域</label>
                        <input type="text" class="form-control" placeholder="如：数学，语文.." name="subject" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">从教年限</label>
                        <input type="text" class="form-control" placeholder="**" name="time" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">教育适合年龄</label>
                        <input type="text" class="form-control" placeholder="如：10-14" name="ageRange"
                               required="">
                    </div>
                    <div>
                        <label class="col-form-label">身份证号</label>
                        <input type="text" class="form-control" placeholder="******" name="idNumber"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">联系方式</label>
                        <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="text-a1">简介</label>
                        <textarea id="text-a1" class="form-control" name="info" rows="4"></textarea>
                    </div>

                    <button type="submit" class="btn button-style-w3">Submit</button>
                </form>
            </c:if>

            <!-- 学生家长 -->
            <c:if test="${sessionScope.user.verification == 1}">
                <form action="${pageContext.request.contextPath}/parent/register" method="post">
                    <div class="form-group">
                        <label class="col-form-label">孩子姓名</label>
                        <input type="text" class="form-control" placeholder="***" name="childName" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">孩子性别</label><br>
                        <div style="padding-left: 5rem;">
                            <label for="radio1" class="text-li text-style-w3ls">
                                <span></span>男
                            </label>
                            <input type="radio" id="radio1" checked="checked" name="sex" value="male">
                            <label for="radio2" class="text-li text-style-w3ls" style="margin-left: 3rem;">
                                <span></span>女
                            </label>
                            <input type="radio" id="radio2" name="sex" value="female">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">孩子年龄</label>
                        <input type="text" class="form-control" placeholder="**" name="childAge"
                               required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">家长姓名</label>
                        <input type="text" class="form-control" placeholder="***" name="name" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">联系方式</label>
                        <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                               required="">
                    </div>
                    <button type="submit" class="btn button-style-w3">Submit</button>
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

