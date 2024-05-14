<%@ page import="com.mysql.cj.protocol.Resultset" %>
<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>合同查询</title>
</head>
<body bgcolor="lightgreen">
   <table align="center" width="500">
    <tr>
        <td>合同查询</td>
        <td>
            <a href="addContact.jsp">合同添加</a>
        </td>
    </tr>
   </table>
   <br>
   <hr>
   <br>
<table align="center" width="700" border=2" >
    <tr>
        <th colspan="6">查看合同信息</th>
    </tr>
    <tr>
        <td>客户姓名</td>
        <td>合同名称</td>
        <td>合同内容</td>
        <td>合同生效日期</td>
        <td>合同有效期</td>
        <td>业务员</td>
    </tr>
    <%
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBConnectionManager.getConnection();
            String sql = "SELECT * FROM contact";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString("clientName")%></td>
        <td><%=rs.getString("contactName")%></td>
        <td><%=rs.getString("contactContents")%></td>
        <td><%=rs.getString("contactstart")%></td>
        <td><%=rs.getString("contactEnd")%></td>
        <td><%=rs.getString("staffName")%></td>
        </tr>
    <%
            }
        } catch (SQLException e) {
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
