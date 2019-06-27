<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.19
  Time: 14:56
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>发布公告</title>

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
            background: url("../img/bg1.jpg") no-repeat 0 0;
            -webkit-background-size: cover
        }

    </style>
</head>
<body>

<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->

<%--background-color: #f8f9fe;--%>
<!-- courses -->
<section class="branches py-5 tlx-bg" id="home" style=" ">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-5 text-center font-weight-bold">Add Announcement</h3>
        <div class="card-title pr" style="text-align: center; color:red">
            <h3>${requestScope.msg}</h3>
        </div>
        <div class="modal-body mt-md-2 mt-5">
            <div class="news-list" style="margin-top: 3rem">
                <form action="${pageContext.request.contextPath}/announcement/addAnnounce" method="post">

                    <div class="form-group">
                        <label class="col-form-label">Title</label>
                        <input type="text" class="form-control" placeholder="标题" name="title" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="text-a">TextContent</label>
                        <textarea id="text-a" class="form-control" name="textContent"
                                  rows="5"></textarea>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label">Picture</label>
                        <input type="file" class="form-control" placeholder="" name="picture"
                        >
                    </div>

                    <button type="submit" class="btn button-style-w3">Submit</button>
                </form>
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



