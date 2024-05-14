<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="SQL.DBConnectionManager" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理客户修改数据</title>
</head>
<body>
    <%
      String clientName= request.getParameter("clientName");
      String clientTelephone= request.getParameter("clientTelephone");
      String clientAddress= request.getParameter("clientAddress");
      String clientEmail= request.getParameter("clientEmail");
      Connection conn=null;
      Statement stmt=null;
      if(clientName.equals("")){
        response.sendRedirect("updateClient.jsp");
      }else {
          try {
              conn = DBConnectionManager.getConnection();
              stmt = conn.createStatement();
              String sql = "update client set clientName = '" + clientName +"',clientTelephone = '"+ clientTelephone + "',clientAddress='" + clientAddress + "', clientEmail = '"+ clientEmail +"' where clientName = '"+ clientName + "'";
              stmt.executeUpdate(sql);
              response.sendRedirect("lookClient.jsp");
          } catch (Exception e) {
              e.printStackTrace();
          } finally {
              DBConnectionManager.closeConnection();
          }
      }
  %>
  </body>
</html>
