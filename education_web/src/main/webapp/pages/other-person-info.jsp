<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.27
  Time: 16:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>他人信息</title>
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

        .table th {
            min-width: 20rem;
            border-bottom: 1px solid #dee2e6;
        }

        .table td {
            min-width: 20rem;
            max-width: 22rem;
            border-bottom: 1px solid #dee2e6;
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

<!-- courses -->
<section class="branches py-5" id="courses" style=" background-color: #f8f9fe;">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="title-w3 mb-5 text-center font-weight-bold">Other Personal Info</h3>
        <div class="card-title pr" style="text-align: center; color:red">
            <%--<h4>All Exam Result</h4>--%>
            <h3>${requestScope.msg}</h3>
        </div>
        <div class="row branches-position pt-lg-4" style=" padding-top: 0 !important;">
            <div class="card" style="background: #fff; font-family: none; margin:0 auto">
                <div class="card-body">
                    <div class="table-responsive">
                        <!-- 培训机构 -->
                        <c:if test="${ver == 5}">
                            <table class="table student-data-table m-t-20">
                                <tr>
                                    <th>账号类型</th>
                                    <td>教育机构</td>
                                </tr>
                                <tr>
                                    <th>Id</th>
                                    <td>${info.id}</td>
                                </tr>
                                <tr>
                                    <th>UserId</th>
                                    <td>${info.userId}</td>
                                </tr>
                                <tr>
                                    <th>教育领域</th>
                                    <td>${info.subject}</td>
                                </tr>
                                <tr>
                                    <th>标识码</th>
                                    <td>${info.idCode}</td>
                                </tr>
                                <tr>
                                    <th>店铺地址</th>
                                    <td>${info.address}</td>
                                </tr>
                                <tr>
                                    <th>教育适合年龄</th>
                                    <td>${info.ageRange}</td>
                                </tr>
                                <tr>
                                    <th>联系方式</th>
                                    <td>${info.tel}</td>
                                </tr>
                                <tr>
                                    <th>简介</th>
                                    <td>${info.info}</td>
                                </tr>
                            </table>
                        </c:if>
                        <!-- 个人教师 -->
                        <c:if test="${ver == 4}">
                            <table class="table student-data-table m-t-20">
                                <tr>
                                    <th>账户类型</th>
                                    <td>个人教师</td>
                                </tr>
                                <tr>
                                    <th>Id</th>
                                    <td>${info.id}</td>
                                </tr>
                                <tr>
                                    <th>UserId</th>
                                    <td>${info.userId}</td>
                                </tr>
                                <tr>
                                    <th>姓名</th>
                                    <td>${info.name}</td>
                                </tr>
                                <tr>
                                    <th>性别</th>
                                    <td>${info.sex}</td>
                                </tr>
                                <tr>
                                    <th>年龄</th>
                                    <td>${info.age}</td>
                                </tr>
                                <tr>
                                    <th>教育领域</th>
                                    <td>${info.subject}</td>
                                </tr>
                                <tr>
                                    <th>从教年限</th>
                                    <td>${info.time}</td>
                                </tr>
                                <tr>
                                    <th>教育适合年龄</th>
                                    <td>${info.ageRange}</td>
                                </tr>
                                <tr>
                                    <th>身份证号</th>
                                    <td>${info.idNumber}</td>
                                </tr>
                                <tr>
                                    <th>联系方式</th>
                                    <td>${info.tel}</td>
                                </tr>
                                <tr>
                                    <th>简介</th>
                                    <td>${info.info}</td>
                                </tr>
                            </table>
                        </c:if>
                        <!-- 学生家长 -->
                        <c:if test="${ver == 1}">
                            <table class="table student-data-table m-t-20">
                                <tr>
                                    <th>账号类型</th>
                                    <td>学生家长</td>
                                </tr>
                                <tr>
                                    <th>Id</th>
                                    <td>${info.id}</td>
                                </tr>
                                <tr>
                                    <th>UserId</th>
                                    <td>${info.userId}</td>
                                </tr>
                                <tr>
                                    <th>家长姓名</th>
                                    <td>${info.name}</td>
                                </tr>
                                <tr>
                                    <th>联系方式</th>
                                    <td>${info.tel}</td>
                                </tr>
                                <tr>
                                    <th>孩子姓名</th>
                                    <td>${info.childName}</td>
                                </tr>
                                <tr>
                                    <th>孩子性别</th>
                                    <td>${info.childSex}</td>
                                </tr>
                                <tr>
                                    <th>孩子年龄</th>
                                    <td>${info.childAge}</td>
                                </tr>
                                <tr>
                                    <th>课程方向</th>
                                    <td>${info.subject}</td>
                                </tr>
                                <tr>
                                    <th>费用范围</th>
                                    <td>${info.minFee} - ${info.maxFee}元</td>
                                </tr>
                                <tr>
                                    <th>上课地点</th>
                                    <td>${info.address}</td>
                                </tr>
                            </table>
                        </c:if>
                    </div>
                </div>
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


