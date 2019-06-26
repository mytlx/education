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
</head>
<body>

<h3>修改个人信息</h3>

<!-- 学生家长 -->
<c:if test="${sessionScope.user.verification == 1}">
    <form action="${pageContext.request.contextPath}/parent/updateInfo" method="post">
        <table border="0">
            <tr>
                <td>name</td>
                <td>
                    <input type="text" name="name"/>
                </td>
            </tr>
            <tr>
                <td>tel</td>
                <td>
                    <input type="text" name="tel"/>
                </td>
            </tr>
            <tr>
                <td>child_name</td>
                <td>
                    <input type="text" name="childName"/>
                </td>
            </tr>
            <tr>
                <td>child_sex</td>
                <td>
                    <input type="text" name="childSex"/>
                </td>
            </tr>
            <tr>
                <td>child_age</td>
                <td>
                    <input type="text" name="childAge"/>
                </td>
            </tr>
            <tr>
                <td>subject</td>
                <td>
                    <input type="text" name="subject"/>
                </td>
            </tr>
            <tr>
                <td>min_fee</td>
                <td>
                    <input type="text" name="minFee"/>
                </td>
            </tr>
            <tr>
                <td>max_fee</td>
                <td>
                    <input type="text" name="maxFee"/>
                </td>
            </tr>
            <tr>
                <td>address</td>
                <td>
                    <input type="text" name="address"/>
                </td>
            </tr>

        </table>
        <input type="submit" value="修改"/>
    </form>

</c:if>

<!-- 个人教师 -->
<c:if test="${sessionScope.user.verification == 4}">
    <form action="${pageContext.request.contextPath}/teacher/updateInfo" method="post">
        <table border="0">

            <tr>
                <td>name</td>
                <td>
                    <input type="text" name="name"/>
                </td>
            </tr>
            <tr>
                <td>sex</td>
                <td>
                    <input type="radio" checked="checked" name="sex" value="male"/>男
                    <input type="radio" name="sex" value="female"/>女
                </td>
            </tr>
            <tr>
                <td>age</td>
                <td>
                    <input type="text" name="age"/>
                </td>
            </tr>
            <tr>
                <td>subject</td>
                <td>
                    <input type="text" name="subject"/>
                </td>
            </tr>
            <tr>
                <td>time</td>
                <td>
                    <input type="text" name="time"/>
                </td>
            </tr>
            <tr>
                <td>age_range</td>
                <td>
                    <input type="text" name="ageRange"/>
                </td>
            </tr>
            <tr>
                <td>tel</td>
                <td>
                    <input type="text" name="tel"/>
                </td>
            </tr>
            <tr>
                <td>info</td>
                <td>
                    <textarea name="info" cols="30" rows="10"></textarea>
                </td>
            </tr>

        </table>
        <input type="submit" value="修改"/>
    </form>
</c:if>

<!-- 培训机构 -->
<c:if test="${sessionScope.user.verification == 5}">
    <form action="${pageContext.request.contextPath}/education/updateInfo" method="post">
        <table border="0">
            <tr>
                <td>subject</td>
                <td>
                    <input type="text" name="subject"/>
                </td>
            </tr>

            <tr>
                <td>address</td>
                <td>
                    <input type="text" name="address"/>
                </td>
            </tr>
            <tr>
                <td>age_range</td>
                <td>
                    <input type="text" name="ageRange"/>
                </td>
            </tr>
            <tr>
                <td>tel</td>
                <td>
                    <input type="text" name="tel"/>
                </td>
            </tr>
            <tr>
                <td>info</td>
                <td>
                    <textarea name="info" cols="30" rows="10"></textarea>
                </td>
            </tr>
        </table>
        <input type="submit" value="修改"/>
    </form>
</c:if>
<a href="${pageContext.request.contextPath}/pages/main.jsp">返回</a>

</body>
</html>
