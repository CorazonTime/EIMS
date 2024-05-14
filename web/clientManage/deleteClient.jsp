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
    <title>客户删除</title>
</head>
<body bgcolor="lightgreen">
   <form action="../clientManage/deleteclientcheck.jsp" method="post">
   <table align="center" width="500" >
    <tr>
        <td>
            <a href="../clientManage/lookclient.jsp">客户査询</a>
        </td>
        <td>
            <a href="../clientManage/clientManage.jsp">客户添加</a>
        </td>
        <td>
            <a href="../clientManage/updateclient.jsp">客户修改</a>
        </td>
        <td>客户删除</td>
    </tr>
   </table>
       <br>
       <hr>
       <br>
       <table align="center">
       <tr>
           <th colspan="2">删除客户信息</th>
       </tr>
       <tr>
           <td>客户姓名</td>
           <td>
               <input type="text" name="clientName"/>
               输入要删除的客户姓名
           </td>
       </tr>
           <tr align="center">
       <td colspan="2">
       <input type="submit" name="sure" value="确认"/>
           &nbsp; &nbsp; &nbsp; &nbsp;
           <input name="clear" type="reset" value="取消"/>
       </td>
   </tr>
   </table>
   </form>
</body>
</html>
