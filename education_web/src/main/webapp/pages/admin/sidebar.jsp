<%--
  Created by IntelliJ IDEA.
  User: TLX
  Date: 2019.6.27
  Time: 23:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <ul>
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/pages/admin/admin-index.jsp">
                        <!-- <img src="assets/images/logo.png" alt="" /> -->
                        <span>Admin</span>
                    </a>
                </div>

                <%--main栏--%>
                <li class="label">Main</li>

                <li><a href="${pageContext.request.contextPath}/pages/admin/admin-index.jsp">
                    <i class="ti-home"></i> Main</a>
                </li>

                <%--operation栏--%>
                <li class="label">Operation</li>

                <li><a href="${pageContext.request.contextPath}/user/findPermission">
                    <i class="ti-user"></i> 权限审核</a>
                </li>

                <li><a href="${pageContext.request.contextPath}/announcement/findAll?ver=0">
                    <i class="ti-files"></i> 公告</a>
                </li>

                <li><a href="#">
                    <i class="ti-layout-grid4-alt"></i> 评论</a>
                </li>

                <li><a class="sidebar-sub-toggle"><i class="ti-file"></i> 新闻
                    <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/news/findAll">
                                新闻列表
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/pages/admin/admin-news-add.jsp">
                                发布新闻
                            </a>
                        </li>
                    </ul>
                </li>
                <li><a class="sidebar-sub-toggle"><i class="ti-map"></i> 视频 <span
                        class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="#">视频列表</a></li>
                        <li><a href="#">发布视频</a></li>
                    </ul>
                </li>


                <li class="label">Extra</li>

                <li><a class="sidebar-sub-toggle"><i class="ti-target"></i> Account <span
                        class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="#">Update password</a></li>
                    </ul>
                </li>

                <li><a href="${pageContext.request.contextPath}/user/logout">
                    <i class="ti-close"></i> Logout</a>
                </li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
