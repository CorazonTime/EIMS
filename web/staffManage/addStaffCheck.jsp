<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理员工添加数据</title>
</head>
<body>
      <%
          String staffName = request.getParameter("staffName");
          String staffSex = request.getParameter("staffSex");
          String staffAge = request.getParameter("staffAge");
          String staffEducation = request.getParameter("staffEducation");
          String staffDepartment = request.getParameter("staffDepartment");
          String staffDate = request.getParameter("staffDate");
          String staffDuty = request.getParameter("staffDuty");
          String staffWage = request.getParameter("staffWage");

          String sql = "INSERT INTO staff (staffName, staffSex, staffAge, staffEducation, staffDepartment, staffDate, staffDuty, staffWage) VALUES (?, ?, ? ,? ,? ,?,? ,?)";

          try {
              Connection conn = DBConnectionManager.getConnection();
              PreparedStatement pstmt = conn.prepareStatement(sql);

              pstmt.setString(1, staffName);
              pstmt.setString(2, staffSex);
              pstmt.setString(3, staffAge);
              pstmt.setString(4, staffEducation);
              pstmt.setString(5, staffDepartment);
              pstmt.setString(6, staffDate);
              pstmt.setString(7, staffDuty);
              pstmt.setString(8, staffWage);

              int rowsAffected = pstmt.executeUpdate();

              if (rowsAffected > 0) {
                  response.sendRedirect("lookStaff.jsp");
              } else {
                  out.println("Failed to insert product information.");
              }
              DBConnectionManager.closeConnection();
          } catch (SQLIntegrityConstraintViolationException e) {
              out.println("Failed to insert product information.");
          } catch (SQLException e) {
              out.println("Error occurred: " + e.getMessage());
              e.printStackTrace();  // 在控制台打印异常堆栈信息
          }
      %>
</body>
</html>
