<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.11
  Time: 23:03
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>课程列表</title>
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

        td {
            min-width: 70px;
            /*display:block;*/
        }
    </style>
</head>
<body>

<!-- header -->
<jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"/>
<!-- //header -->

<div class="inner-banner-w3ls py-5 custom-div">
    <a href="${pageContext.request.contextPath}/pages/add-course.jsp">
        <h3>添加课程</h3>
    </a>

    <h3>${requestScope.msg}</h3>
    <table border="1" class="custom-table">
        <tr class="custom-tr">
            <th>id</th>
            <th>userId</th>
            <th>name</th>
            <th>time</th>
            <th>address</th>
            <th>teacher</th>
            <th>content</th>
            <th>fee</th>
        </tr>
        <c:forEach var="course" items="${courseList}">
            <tr class="custome-td">
                <td>${course.id}</td>
                <td>${course.userId}</td>
                <td>${course.name}</td>
                <td>${course.timeStr}</td>
                <td>${course.address}</td>
                <td>${course.teacher}</td>
                <td>${course.content}</td>
                <td>${course.fee}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<a href="${pageContext.request.contextPath}/pages/main.jsp">返回</a>


</body>
</html>
