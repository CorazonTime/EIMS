<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工信息</title>
</head>
<body bgcolor="lightgreen">
<form action="addStaffCheck.jsp" method="post">
    <table align="center" width="500">
        <tr>
            <td>
                <a href="lookStaff.jsp">员工査询</a>
            </td>
            <td>员工添加</td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table align="center" width="300">
        <tr>
            <th colspan="8" align="center">添加员工信息</th>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="staffName"/></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" name="staffSex"/></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" name="staffAge"/></td>
        </tr>
        <tr>
            <td>学历</td>
            <td><input type="text" name="staffEducation"/></td>
        </tr>
        <tr>
            <td>部门</td>
            <td><input type="text" name="staffDepartment"/></td>
        </tr>
        <tr>
            <td>入职时间</td>
            <td><input type="text" name="staffDate"/></td>
        </tr>
        <tr>
            <td>职务</td>
            <td><input type="text" name="staffDuty"/></td>
        </tr>
        <tr>
            <td>工资</td>
            <td><input type="text" name="staffWage"/></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input name="sure" type="submit" value="确认">
                &nbsp; &nbsp:&nbsp;&nbsp;
                <input name="clear" type="reset" value="取消">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
