<%--
  Created by IntelliJ IDEA.
  User: Corazon
  Date: 2024/5/9
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="SQL.DBConnectionManager" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Connect to MySQL in JSP</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        conn = DBConnectionManager.getConnection();
        String sql = "SELECT * FROM client";
        stmt = conn.prepareStatement(sql);
        rs = stmt.executeQuery();

        while (rs.next()) {
            // 处理查询结果
            out.println("姓名：" + rs.getString("clientName") + ", 电话：" + rs.getString("clientTelephone")+",地址："+rs.getString("clientAddress")+",邮箱："+rs.getString("clientEmail"));
            out.println("<br>");
        }
     } catch (SQLException e) {
    out.println("获取数据时发生错误: " + e.getMessage());
    // 还可以将错误记录到日志文件或控制台
    e.printStackTrace();
    } finally {
        DBConnectionManager.closeConnection();
    }
%>
</body>
</html>
