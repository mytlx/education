<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.18
  Time: 11:39
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>修改个人信息</title>

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

        .tlx-input {
            display: inline-block;
            width: 40%;
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
        <!-- update personal info -->
        <div class="modal-body mt-md-2 mt-5">
            <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">修改个人信息</h3>
            <%--错误提示--%>
            <h5 id="span1" class="custom-h5">${requestScope.msg}</h5>

            <!-- 教育机构 -->
            <c:if test="${sessionScope.user.verification == 5}">
                <form action="${pageContext.request.contextPath}/education/updateInfo" method="post">

                    <div class="form-group">
                        <label class="col-form-label">教育领域</label>
                        <input type="text" class="form-control" placeholder="如：数学，语文.."
                               name="subject" required="" value="${requestScope.info.subject}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">店铺地址</label>
                        <input type="text" class="form-control" placeholder="**省**市**街道**小区" name="address"
                               required="" value="${requestScope.info.address}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">教育适合年龄</label>
                        <input type="text" class="form-control" placeholder="如：10-14" name="ageRange"
                               required="" value="${requestScope.info.ageRange}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">联系方式</label>
                        <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                               required="" value="${requestScope.info.tel}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="text-a">简介</label>
                        <textarea id="text-a" class="form-control" name="info" rows="4">${requestScope.info.info}</textarea>
                    </div>
                    <button type="submit" class="btn button-style-w3">Submit</button>
                </form>
            </c:if>

            <!-- 个人教师 -->
            <c:if test="${sessionScope.user.verification == 4}">
                <form action="${pageContext.request.contextPath}/teacher/updateInfo" method="post">
                    <div class="form-group">
                        <label class="col-form-label">姓名</label>
                        <input type="text" class="form-control" placeholder="name"
                               name="name" required="" value="${requestScope.info.name}">
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
                               required="" value="${requestScope.info.age}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">教育领域</label>
                        <input type="text" class="form-control" placeholder="如：数学，语文.."
                               name="subject" required="" value="${requestScope.info.subject}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">从教年限</label>
                        <input type="text" class="form-control" placeholder="**" name="time"
                               required="" value="${requestScope.info.time}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">教育适合年龄</label>
                        <input type="text" class="form-control" placeholder="如：10-14" name="ageRange"
                               required="" value="${requestScope.info.ageRange}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">联系方式</label>
                        <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                               required="" value="${requestScope.info.tel}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="text-a1">简介</label>
                        <textarea id="text-a1" class="form-control" name="info" rows="4">${requestScope.info.info}</textarea>
                    </div>

                    <button type="submit" class="btn button-style-w3">Submit</button>
                </form>
            </c:if>

            <!-- 学生家长 -->
            <c:if test="${sessionScope.user.verification == 1}">
                <form action="${pageContext.request.contextPath}/parent/updateInfo" method="post">
                    <div class="form-group">
                        <label class="col-form-label">孩子姓名</label>
                        <input type="text" class="form-control" placeholder="***"
                               name="childName" required="" value="${requestScope.info.childName}">
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
                               required="" value="${requestScope.info.childAge}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">家长姓名</label>
                        <input type="text" class="form-control" placeholder="***" name="name"
                               required="" value="${requestScope.info.name}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">联系方式</label>
                        <input type="tel" class="form-control" placeholder="1** **** ****" name="tel"
                               required="" value="${requestScope.info.tel}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">选课意向</label>
                        <input type="text" class="form-control" placeholder="**" name="subject"
                               required="" value="${requestScope.info.subject}">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">价格区间</label>
                        <div style="overflow: hidden; text-align: center;">
                            <input type="number" class="form-control tlx-input" placeholder="**" name="minFee"
                                   required="" value="${requestScope.info.minFee}" style="float: left;">
                            <label class="col-form-label" style="font-size: 20px;">至</label>
                            <input type="number" class="form-control tlx-input" placeholder="**" name="maxFee"
                                   required="" value="${requestScope.info.maxFee}" style="float: right">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">上课地点</label>
                        <input type="text" class="form-control" placeholder="**" name="address"
                               required="" value="${requestScope.info.address}">
                    </div>
                    <button type="submit" class="btn button-style-w3">Submit</button>
                </form>
            </c:if>
        </div>
        <!-- //update personal info -->
        <%--<a href="${pageContext.request.contextPath}/user/index">返回</a>--%>
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

