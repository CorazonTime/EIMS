<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="SQL.DBConnectionManager" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理客户添加数据</title>
</head>
<body>
   <%
  String clientName=new String(request.getParameter("clientName").getBytes("Iso-8859-1"),"UTf-8");
  String clientTelephone=new String(request.getParameter("clientTelephone").getBytes("ISo-8859-1"),"UTF-8");
  String clientAddress= new String(request.getParameter("clientAddress").getBytes("ISo-8859-1"),"UTf-8");
  String clientEmail= new String(request.getParameter("clientEmail").getBytes("ISo-8859-1"),"UTF-8");
  Connection con=null;
  Statement st=null;
  try{
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
      Connection conn = DBConnectionManager.getConnection();
  st=con.createStatement();
  String sql="insert into client(clientName,clientlelephone ,clientAddress,clientEmail)values('"+clientName+"',""+clientTelephone+"','"+clientAddress+"','"+ clientEmail+"')";
  st.executeUpdate(sql);
  response.sendRedirect("http://localhost:8084/EIMs/clientManage/ lookClient.jsp");
  }
  catch(Exception e) {
      e.printStackTrace();
  }
finally {
     DBConnectionManager.closeConnection();
  }
          %>
</body>
</html>
