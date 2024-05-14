<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加客户信息</title>
</head>
<body bgcolor="lightgreen">
  <form action="http://localhost:8084/EIMS/clientManage/addclientcheck.jsp" method="post">
     <table align="center"width="500" >
    <tr>
        <td>
            <a href="http://localhost:8084/EIMS/clientManage/lookClient.jsp">客户查询</a>
        </td>
        <td>客户添加</td>
        <td>
            <a href="http://localhost:8084/EIMS/updateClient.jsp">客户修改</a>
        </td>
        <td>
        <a href="http://localhost:8084/EIMS/clientManage/deleteclient.jsp">客户删除</a>
        </td>
    </tr>
     </table>
  <br>
  <hr>
  <br>
    <table align="center" width="300">
        <tr>
            <th colspan="4" align="center">添加客户信息</th>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="clientName"/></td>
        </tr>
        <tr>
        <td>电话</td><td><input type="text" name="clientTelephone"/></td>
        </tr>
        <tr>
        <td>地址</td>
            <td><input type="text" name="clientAddress"/></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="clientEmail"/></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input name="sure" type="submit"value="确认">
                &nbsp; &nbsp; &nbsp; &nbsp;
                <input name="clear" type="reset"value="取消">
            </td>
        </tr>
    </table>
  </form>
</body>
</html>
