<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.27
  Time: 23:01
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理系统</title>
    <!-- Styles -->
    <link href="../../assets/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="../../assets/css/lib/owl.carousel.min.css" rel="stylesheet"/>
    <link href="../../assets/css/lib/owl.theme.default.min.css" rel="stylesheet"/>
    <link href="../../assets/css/lib/weather-icons.css" rel="stylesheet"/>
    <link href="../../assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="../../assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/lib/helper.css" rel="stylesheet">
    <link href="../../assets/css/style.css" rel="stylesheet">
</head>

<body>

<jsp:include page="sidebar.jsp"/>
<!-- /# sidebar -->

<jsp:include page="header.jsp"/>


<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>Hello, <span>Welcome Here</span></h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active">Home</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
            <!-- /# row -->
            <section id="main-content">
                <div class="row">

                    <!-- /# column -->
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-title pr">
                                <h4>All Exam Result</h4>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table student-data-table m-t-20">
                                        <thead>
                                        <tr>
                                            <th><label><input type="checkbox" value=""></label>Exam Name</th>
                                            <th>Subject</th>
                                            <th>Grade Point</th>
                                            <th>Percent Form</th>
                                            <th>Percent Upto</th>
                                            <th>Date</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>Mathmatics</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>Mathmatics</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>English</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>Bangla</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>Mathmatics</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>English</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        <tr>
                                            <td>Class Test</td>
                                            <td>Mathmatics</td>
                                            <td>
                                                4.00
                                            </td>
                                            <td>
                                                95.00
                                            </td>
                                            <td>
                                                100
                                            </td>
                                            <td>20/04/2017</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->

                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="year-calendar"></div>
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                </div>
                <!-- /# row -->
                <div class="row">
                    <!-- /# column -->
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Notice Board </h4>

                            </div>
                            <div class="recent-comment m-t-15">
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#"><img class="media-object" src="../../assets/images/avatar/1.jpg"
                                                         alt="..."></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading color-primary">john doe</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                        <p class="comment-date">10 min ago</p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#"><img class="media-object" src="../../assets/images/avatar/2.jpg"
                                                         alt="..."></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading color-success">Mr. John</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                        <p class="comment-date">1 hour ago</p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#"><img class="media-object" src="../../assets/images/avatar/3.jpg"
                                                         alt="..."></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading color-danger">Mr. John</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                        <div class="comment-date">Yesterday</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#"><img class="media-object" src="../../assets/images/avatar/1.jpg"
                                                         alt="..."></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading color-primary">john doe</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                        <p class="comment-date">10 min ago</p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <a href="#"><img class="media-object" src="../../assets/images/avatar/2.jpg"
                                                         alt="..."></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading color-success">Mr. John</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                        <p class="comment-date">1 hour ago</p>
                                    </div>
                                </div>
                                <div class="media no-border">
                                    <div class="media-left">
                                        <a href="#"><img class="media-object" src="../../assets/images/avatar/3.jpg"
                                                         alt="..."></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading color-info">Mr. John</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                        <div class="comment-date">Yesterday</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Timeline</h4>

                            </div>
                            <div class="card-body">
                                <ul class="timeline">
                                    <li>
                                        <div class="timeline-badge primary"><i class="fa fa-smile-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h5 class="timeline-title">School promote video sharing</h5>
                                            </div>
                                            <div class="timeline-body">
                                                <p>10 minutes ago</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="timeline-badge warning"><i class="fa fa-sun-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h5 class="timeline-title">Ready our school website and online
                                                    service</h5>
                                            </div>
                                            <div class="timeline-body">
                                                <p>20 minutes ago</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="timeline-badge danger"><i class="fa fa-times-circle-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h5 class="timeline-title">Routine pubish our website form
                                                    10/03/2017 </h5>
                                            </div>
                                            <div class="timeline-body">
                                                <p>30 minutes ago</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="timeline-badge success"><i class="fa fa-check-circle-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h5 class="timeline-title">Principle quotation publish our website</h5>
                                            </div>
                                            <div class="timeline-body">
                                                <p>15 minutes ago</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="timeline-badge warning"><i class="fa fa-sun-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h5 class="timeline-title">Class schedule publish our website</h5>
                                            </div>
                                            <div class="timeline-body">
                                                <p>20 minutes ago</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                </div>
                <!-- /# row -->

                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Task</h4>

                            </div>
                            <div class="todo-list">
                                <div class="tdl-holder">
                                    <div class="tdl-content">
                                        <ul>
                                            <li>
                                                <label>
                                                    <input type="checkbox"><i></i><span>22,Dec Publish The Final Exam Result</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>
                                            <li>
                                                <label>
                                                    <input type="checkbox" checked><i></i><span>First Jan Start Our School</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>
                                            <li>
                                                <label>
                                                    <input type="checkbox"><i></i><span>Recently Our Maganement Programme Start</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>
                                            <li>
                                                <label>
                                                    <input type="checkbox" checked><i></i><span>Check out some Popular courses</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>

                                            <li>
                                                <label>
                                                    <input type="checkbox" checked><i></i><span>First Jan Start Our School</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>
                                            <li>
                                                <label>
                                                    <input type="checkbox" checked><i></i><span>Connect with one new person</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>
                                        </ul>
                                    </div>
                                    <input type="text" class="tdl-new form-control"
                                           placeholder="Write new item and hit 'Enter'...">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-title pr">
                                <h4>All Expense</h4>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table student-data-table m-t-20">
                                        <thead>
                                        <tr>
                                            <th><label><input type="checkbox" value=""></label>ID</th>
                                            <th>Expense Type</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th>Email</th>
                                            <th>Date</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><label><input type="checkbox" value=""></label>#2901</td>
                                            <td>
                                                Salary
                                            </td>
                                            <td>
                                                $2000
                                            </td>
                                            <td>
                                                <span class="badge badge-primary">Paid</span>
                                            </td>
                                            <td>
                                                edumin@gmail.com
                                            </td>
                                            <td>
                                                10/05/2017
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" value=""></label>#2901</td>
                                            <td>
                                                Salary
                                            </td>
                                            <td>
                                                $2000
                                            </td>
                                            <td>
                                                <span class="badge badge-warning">Pending</span>
                                            </td>
                                            <td>
                                                edumin@gmail.com
                                            </td>
                                            <td>
                                                10/05/2017
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" value=""></label>#2901</td>
                                            <td>
                                                Salary
                                            </td>
                                            <td>
                                                $2000
                                            </td>
                                            <td>
                                                <span class="badge badge-primary">Paid</span>
                                            </td>
                                            <td>
                                                edumin@gmail.com
                                            </td>
                                            <td>
                                                10/05/2017
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" value=""></label>#2901</td>
                                            <td>
                                                Salary
                                            </td>
                                            <td>
                                                $2000
                                            </td>
                                            <td>
                                                <span class="badge badge-danger">Due</span>
                                            </td>
                                            <td>
                                                edumin@gmail.com
                                            </td>
                                            <td>
                                                10/05/2017
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" value=""></label>#2901</td>
                                            <td>
                                                Salary
                                            </td>
                                            <td>
                                                $2000
                                            </td>
                                            <td>
                                                <span class="badge badge-primary">Paid</span>
                                            </td>
                                            <td>
                                                edumin@gmail.com
                                            </td>
                                            <td>
                                                10/05/2017
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer">
                            <p>Copyright &copy; 2019.My School All rights reserved.<a target="_blank"
                                                                                         href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<!-- jquery vendor -->
<script src="../../assets/js/lib/jquery.min.js"></script>
<script src="../../assets/js/lib/jquery.nanoscroller.min.js"></script>
<!-- nano scroller -->
<script src="../../assets/js/lib/menubar/sidebar.js"></script>
<script src="../../assets/js/lib/preloader/pace.min.js"></script>
<!-- sidebar -->

<script src="../../assets/js/lib/bootstrap.min.js"></script>
<script src="../../assets/js/scripts.js"></script>
<!-- bootstrap -->

<script src="../../assets/js/lib/calendar-2/moment.latest.min.js"></script>
<script src="../../assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
<script src="../../assets/js/lib/calendar-2/pignose.init.js"></script>


<script src="../../assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
<script src="../../assets/js/lib/weather/weather-init.js"></script>
<script src="../../assets/js/lib/circle-progress/circle-progress.min.js"></script>
<script src="../../assets/js/lib/circle-progress/circle-progress-init.js"></script>
<script src="../../assets/js/lib/chartist/chartist.min.js"></script>
<script src="../../assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
<script src="../../assets/js/lib/sparklinechart/sparkline.init.js"></script>
<script src="../../assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
<script src="../../assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
<!-- scripit init-->
<script src="../../assets/js/dashboard2.js"></script>
</body>
</html>

