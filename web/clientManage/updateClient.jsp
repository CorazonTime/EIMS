<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改客户信息</title>
</head>
<body bgcolor="lightgreen">
  <form action="updateClientCheck.jsp" method="post">
      <table align="center" width="500" >
    <tr>
        <td>
            <a href="lookClient.jsp">客户查询</a>
        </td>
        <td>
            <a href="addClient.jsp">客户添加</a>
        </td>
        <td>客户修改</td>
        <td>
            <a href="deleteClient.jsp">客户删除</a>
        </td>
    </tr>
      </table>
      <br>
      <hr>
      <br>
      <table align="center" width="300" >
          <tr>
              <th colspan="2" align="center">修改客户信息</th>
          </tr>
          <tr>
              <td>姓名</td>
              <td><input type="text" name="clientName"/></td>
          </tr>
          <tr>
              <td>电话</td>
              <td><input type="text" name="clientTelephone"/></td>
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
                  <input name="sure" type="submit" value="确认">
                  &nbsp; &nbsp; &nbsp; &nbsp;
                  <input name="clear" type="reset" value="取消">
              </td>
          </tr>
      </table>
  </form>
</body>
</html>
