<%@ page import="java.sql.*" %>
<%@ page import="SQL.DBConnectionManager" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理售后添加数据</title>
</head>
<body>
     <%
         String clientName = request.getParameter("clientName");
         String clientOpinion = request.getParameter("clientOpinion");
         String staffName = request.getParameter("staffName");
         String sql = "INSERT INTO CS (clientName, clientOpinion, staffName ) VALUES (?, ?, ? )";

         try {
             Connection conn = DBConnectionManager.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);

             pstmt.setString(1, clientName);
             pstmt.setString(2, clientOpinion);
             pstmt.setString(3, staffName);

             int rowsAffected = pstmt.executeUpdate();

             if (rowsAffected > 0) {
                 response.sendRedirect("lookCS.jsp");
             } else {
                 out.println("Failed to insert client information.");
             }

             DBConnectionManager.closeConnection();
         } catch (SQLIntegrityConstraintViolationException e) {
             out.println("Failed to insert CS information.");
         } catch (SQLException e) {
             out.println("Error occurred: " + e.getMessage());
             e.printStackTrace();  // 在控制台打印异常堆栈信息
         }
     %>
</body>
</html>
