<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2020-10-03
  Time: 03:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="application/ecmascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<table border=""px>
    <tr>
        <td colspan="6" height="100px" style="text-align: center;font-size: 40px">学员信息列表</td>
    </tr>
    <tr style="font-weight: bold">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>住址</td>
        <td>Email</td>
    </tr>
     <c:forEach items="${list}" var="item">
         <tr>
             <td><a href="/chabyid/${item.sid}">${item.sid}</a> </td>
             <td>${item.sname}</td>
             <td>${item.sgender}</td>
             <td>${item.sage}</td>
             <td>${item.saddress}</td>
             <td>${item.semail}</td>
         </tr>
     </c:forEach>
</table>
<script>
    $(function () {
        $("tr:odd").css("background-color", "skyblue");
    })
</script>
</body>
</html>
