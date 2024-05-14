<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="SQL.DBConnectionManager" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/13
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理客户删除的数据</title>
</head>
<body>
     <%
         String clientName = request.getParameter("clientName");
         Connection conn =null;
         Statement stmt = null;
         try {
             conn = DBConnectionManager.getConnection();
             stmt = conn.createStatement();
             String sql = "delete from client where clientName='" + clientName + "' ";
             stmt.executeUpdate(sql);
             response.sendRedirect("lookClient.jsp");
         }catch(Exception e){
             e.printStackTrace();
         }finally {
             DBConnectionManager.closeConnection();
         }
     %>
</body>
</html>
