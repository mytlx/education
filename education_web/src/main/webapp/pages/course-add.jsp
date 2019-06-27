<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.27
  Time: 19:49
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加课程</title>
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

        .tlx-bg {
            background: url("../img/bg1.jpg") no-repeat 0 0;
            -webkit-background-size: cover
        }

        .tlx-input {
            display: inline-block;
            width: 45%;
        }
    </style>
</head>

<body>
<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->


<!-- inner banner -->
<div class="inner-banner-w3ls py-5 tlx-bg" id="home">
    <div class="container py-xl-5 py-lg-3">
        <!-- update  -->
        <div class="modal-body mt-md-2 mt-5">
            <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">添加课程</h3>
            <%--错误提示--%>
            <h5 id="span1" class="custom-h5">${requestScope.msg}</h5>

            <form action="${pageContext.request.contextPath}/course/addCourse" method="post">

                <div class="form-group">
                    <label class="col-form-label">课程名称</label>
                    <input type="text" class="form-control" placeholder="course name" name="name"
                           required="" >
                </div>
                <%--<div class="form-group">--%>
                    <%--<label class="col-form-label">课程时间</label>--%>
                    <%--<input type="text" class="form-control" placeholder="" name="time"--%>
                           <%--required="" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd HH:mm:ss'});">--%>
                <%--</div>--%>
                <div class="form-group">
                    <label class="col-form-label">课程时间</label>
                    <div style="overflow: hidden; text-align: center;">
                        <input type="date" class="form-control tlx-input" placeholder="**" name="date1"
                               required="" style="float: left;">
                        <%--<label class="col-form-label" style="font-size: 20px;">至</label>--%>
                        <input type="time" class="form-control tlx-input" placeholder="**" name="time1"
                               required="" style="float: right">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-form-label">上课地点</label>
                    <input type="text" class="form-control" placeholder="address" name="address" required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">任课教师</label>
                    <input type="text" class="form-control" placeholder="teacher" name="teacher" required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">课程费用</label>
                    <input type="number" class="form-control" placeholder="fee" name="fee" required="">
                </div>
                <div class="form-group">
                    <label class="col-form-label">课程内容</label>
                    <input type="text" class="form-control" placeholder="content" name="content" required="">
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


