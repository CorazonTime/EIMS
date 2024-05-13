<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %><%--
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
  String clientName= new String(request.getParameter("clientName").getBytes("ISo-8859-1"),"UTF-8");
  String clientTelephone= new String(request.getParameter("clientTelephone").getBytes("ISo-8859-1"),"UTF-8");
  String clientAddress= new String(request.getParameter("clientAddress").getBytes("ISo-8859-1"),"UTF-8");
  String clientEmail=new String(request.getParameter("clientEmail").getBytes("Iso-8859-1"),"UTF-8");
  Connection con=null;
  Statement st=null;
  if(clientName.equals("")){
  response.sendRedirect("http://localhost:8084/EIMs/clientManage/updateclient.jsp");
  }
  else {
      try {
          Class.forName("com.mysql.jdbc.Driver");
          String url = "jdbc:mysql://localhost:3306/EIMS"?useUnicode = true & characterEncoding = gbk";
          con = DriverManager.getConnection(url, "root", "admin");
          st = con.createStatement();
          String sql = "update client set clientName = '" + clientName +"',clientTelephone = '"+ clientTelephone + "',clientAddress='" + clientAddress + "', clientEmail = '"+ clientEmail +"' where clientName = '"+ clientName + "'";
          st.executeUpdate(sql);
          response.sendRedirect("http://localhost:8084/EIMS/clientManage/lookClient.jsp");
      } catch (Exception e) {
          e.printStackTrace();
      } finally {
          st.close();
          con.close();
      }
  }
  %>
  </body>
</html>
