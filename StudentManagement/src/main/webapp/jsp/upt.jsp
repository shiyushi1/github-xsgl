<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2020-10-03
  Time: 04:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <script type="application/ecmascript" src="/static/js/jquery-3.4.1.min.js"></script>

</head>
<body>
<form action="/uptby">
    <table border="1px">
        <tr>
            <td colspan="2" height="100px" style="text-align: center;font-size: 40px">学员信息</td>
        </tr>
        <tr>
            <td>编号:</td>
            <td><input type="text" name="sid" value="${listby.sid}" readonly></td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="sname" value="${listby.sname}"></td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="sage" value="${listby.sage}"></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td><input type="text" name="sgender" value="${listby.sgender}"></td>
        </tr>
        <tr>
            <td>家庭住址:</td>
            <td><input type="text" name="saddress" value="${listby.saddress}"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="semail" value="${listby.semail}"></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="修改">
                <input type="reset" value="重置">

            </td>
        </tr>
    </table>
</form>
<script>
    $(function () {
        $("tr:first").css("background-color", "skyblue");
        $("td:odd").css("background-color", "skyblue");
    })
</script>
</body>
</html>
