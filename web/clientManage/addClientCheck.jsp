<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>处理客户添加数据</title>
</head>
<body>
<%
    String clientName = request.getParameter("clientName");
    String clientTelephone = request.getParameter("clientTelephone");
    String clientAddress = request.getParameter("clientAddress");
    String clientEmail = request.getParameter("clientEmail");
    String sql = "INSERT INTO client (clientName, clientTelephone, clientAddress, clientEmail) VALUES (?, ?, ?, ?)";

    try {
        Connection conn = DBConnectionManager.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1, clientName);
        pstmt.setString(2, clientTelephone);
        pstmt.setString(3, clientAddress);
        pstmt.setString(4, clientEmail);

        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            response.sendRedirect("lookClient.jsp");
        } else {
            out.println("Failed to insert client information.");
        }

        DBConnectionManager.closeConnection();
    } catch (SQLIntegrityConstraintViolationException e) {
        out.println("Failed to insert client information. Client name already exists.");
    } catch (SQLException e) {
        out.println("Error occurred: " + e.getMessage());
        e.printStackTrace();  // 在控制台打印异常堆栈信息
    }
%>
</body>
</html>

