<%@ page import="java.sql.*" %>
<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理合同添加数据</title>
</head>
<body>
     <%
         String clientName = request.getParameter("clientName");
         String contactName = request.getParameter("contactName");
         String contactContents = request.getParameter("contactContents");
         String contactStart = request.getParameter("contactStart");
         String contactEnd = request.getParameter("contactEnd");
         String staffName = request.getParameter("staffName");

         SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

         String sql = "INSERT INTO contact (clientName, contactName, contactContents, contactStart,contactEnd,staffName) VALUES (?, ?, ? ,? ,? ,?)";

         try {
             Connection conn = DBConnectionManager.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);

             pstmt.setString(1, clientName);
             pstmt.setString(2, contactName);
             pstmt.setString(3, contactContents);
             pstmt.setString(4, contactStart);
             pstmt.setString(5, contactEnd);
             pstmt.setString(6, staffName);

             int rowsAffected = pstmt.executeUpdate();

             if (rowsAffected > 0) {
                 response.sendRedirect("lookContact.jsp");
             } else {
                 out.println("Failed to insert client information.");
             }
             DBConnectionManager.closeConnection();
         } catch (SQLIntegrityConstraintViolationException e) {
             out.println("Failed to insert contact information.");
         } catch (SQLException e) {
             out.println("Error occurred: " + e.getMessage());
             e.printStackTrace();  // 在控制台打印异常堆栈信息
         }
     %>
</body>
</html>
