<%--
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
         String clientNamenew=String(request.getParameter("clientName").getBytes("IS0-8859-1"),"UTE-8");
         String clientOpinion=new string(request.getParameter("clientOpinion").getBytes("IS0-8859-1"),"UTE-8");
         string staffName= new string(request.getparameter("staffName").getBytes("ISo-8859-1")，"UTE-8");
         Connection con=null;
         Statement st=null;
         try {
             Class.forName("com.mysql.jdbc.Driver");
             string url -"jdbc:mysql://localhost:3306/eims ?useUnicode=true&characterEncoding=gbk";
             con = DriverManager.getConnection(url, "root", "admin");
             st = con.createstatement();
             String sql = "insert into cs (clientName,clientOpinion,staffName) values('" + clientName + "", '"+clientOpinion+"",' "+StaffName+" ')";
             st.executeUpdate(sql);
             response.sendRedirect("http://localhost:8084/EIMS/CsManage/lookcs.jsp");
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
