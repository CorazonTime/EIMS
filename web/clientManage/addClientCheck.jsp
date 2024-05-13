<%--
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
  string clientName=new String(request.getparameter("clientName").getBytes("Is0-8859-1"),"UTE-8");
  String clientTelephone=new String(request.getParameter("clientTelephone").getBytes("IS0-8859-1"),"UTE-8");
  String clientAddress= new String(request.getparameter("clientAddress").getBytes("IS0-8859-1"),"UTE-8");
  String clientEmail= new string(request.getParameter("clientEmail").getBytes("IS0-8859-1")，"UTE-8");
  Connection con=null;
  Statement st=null;
  try{
  Class.forName("com.mysql.jdbc.Driver");
  string url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
  con=DriverManager.getConnection(url,"root","admin");
  st=con.createstatement();
  String sql="insert into client(clientName,clientlelephone ,clientAddress,clientEmail)values('"+clientName+"',""+clientTelephone+"','"+clientAddress+"','"+ clientEmail+"')";
  st.executeUpdate(sql);
  response.sendRedirect("http://localhost:8084/EIMs/clientManage/ lookClient.jsp");
  }
  catch(Exception e) {
      e.printstackTrace();
  }
finally {
      st.close();
      con.close();
  }
          %>
</body>
</html>
