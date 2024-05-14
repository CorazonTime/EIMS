<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.SQLException" %><%--
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
            <a href="addClient.jsp">客户添加</a>
        </td>
        <td>
            <a href="updateClient.jsp">客户修改</a>
        </td>
        <td>
            <a href="deleteClient.jsp">客户删除</a>
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
            Connection conn=null;
            Statement stmt=null;
            ResultSet rs=null;
        try {
            conn = DBConnectionManager.getConnection();
            String sql = "SELECT * FROM client";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString("clientName")%></td>
        <td><%=rs.getString("clientTelephone")%></td>
        <td><%=rs.getString("clientAddress")%></td>
        <td><%=rs.getString("clientEmail")%></td>
    </tr>
        <%
            }
        }catch (SQLException e) {
                out.println("获取数据时发生错误: " + e.getMessage());
                // 还可以将错误记录到日志文件或控制台
                e.printStackTrace();
        } finally {
                DBConnectionManager.closeConnection();
        }
        %>
        </table>
</body>
</html>
