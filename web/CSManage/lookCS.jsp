<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>售后查询</title>
</head>
<body bgcolor="lightgreen">
    <table align="center" width="500">
        <tr>
            <td>售后查询</td>
            <td>
                <a href="addCS.jsp">售后添加</a>
            </td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table align="center" width="700"border=2">
        <tr>
            <th colspan="3">查看售后信息</th>
        </tr>
        <tr>
            <td>客户姓名</td>
            <td>客户反馈意见</td>
            <td>业务员</td>
        </tr>
        <%
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            try {
                conn = DBConnectionManager.getConnection();
                String sql = "SELECT * FROM cs";
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();

                while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getString("clientName")%></td>
            <td><%=rs.getString("clientOpinion")%></td>
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
