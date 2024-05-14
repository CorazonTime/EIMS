<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客户查询</title>
</head>
<body bgcolor="lightgreen">
  <table align="center" width="500">
    <tr>
        <td>客户查询</td>
        <td>
            <a href="http://localhost:8084/EIMs/clientManage/addClient.jsp">客户添加</a>
        </td>
        <td>
            <a href="http://localhost:8084/EIMs/clientManage/updateClient.jsp">客户修改</a>
        </td>
        <td>
            <a href="http://localhost:8084/EIMs/clientManage/deleteclient.jsp">客户删除</a>
        </td>
    </tr>
</table>
<br>
<hr>
<br>
<table align="center" width="700" border=2">
    <tr>
        <th colspan="4">查看客户信息</th>
    </tr>
    <tr>
        <td>姓名</td>
        <td>电话</td>
        <td>地址</td>
        <td>邮箱</td>
    </tr>
    <%
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/eims
    ?useUnicode=true&characterEncoding=gbk";
    con=DriverManager.getConnection(url,"root","admin");
    stmt=con.createstatement();
    String sql="select* from client";
    rs=stmt.executeQuery(sql);
    while(rs.next()){
    %>
    <tr>
        <td><%=rs.getstring("clientName")%></td>
        <td><%=rs.getstring("clientTelephone")%></td>
        <td><%=rs.getstring("clientAddress")%></td>
        <td><%=rs.getstring("clientEmail")%></td>
        </tr>
        <%
            }
        %>
        </table>
</body>
</html>
