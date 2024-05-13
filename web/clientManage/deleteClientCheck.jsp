<%--
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
         String clientNamenew=String(request.getParameter("clientName").getBytes("IS0-8859-1")"UTE-8");
         Connection con=null;
         Statement st=null;
         try {
             Class.forName("com.mysql.idbc.Driver");
             String url = "jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
             con = DriverManager.getConnection(url, "root", "admin");
             st = con.createstatement();
             String sql = "delete from client where clientName='" + clientName + "'";
             st.executeUpdate(sql);
             response.sendRedirect("http://localhost:8084/EIMS/clientManage/lookClient.jsp");
         }
             catch(Exception e){
               e.printstackTrace();
             }
finally {
             st.close();
             con.close();
         }
     %>
</body>
</html>
