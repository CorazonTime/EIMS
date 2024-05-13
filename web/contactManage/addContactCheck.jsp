<%@ page import="java.sql.Connection" %><%--
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
         String clientNamenew=String(request.getparameter("clientName").getBytes("ISo-8859-1"),"UTF-8");
         String contactNamenew=String(request.getParameter("contactName").getBytes("Iso-8859-1"),"UTF-8");
         String contactContents= new String(request.getParameter("contactContents").getBytes("ISo-8859-1"),"UTF-8");
         String contactstart= new String(request.getParameter("contactstart").getBytes("ISo-8859-1"),"UTF-8");
         String contactEnd= new String(request.getParameter("contactEnd").getBytes("ISO-8859-1"),"UTF-8");
         String StaffName= new String(request.getParameter("staffName").getBytes("ISO-8859-1"),"UTF-8");
         Connection con=null;
         Statement st=null;
         try {
             Class.forName("com.mysql.jdbc.Driver");
             String url = "jdbc:mysql://localhost:3306/eims ?useUnicode=true&characterEncoding=qbk";
             con = DriverManager.getConnection(url, "root", "admin");
             st = con.createstatement();
             String sql = "insert into contact(clientName,contactName,contactContents,contactstart, contactEnd,StaffName)values ('" + clientName + "','" + contactName + "','" + contactContents + "", "+contactStart+"','"+contactEnd+"','"+ StaffName+"')";
             st.executeUpdate(sql);
             response.sendRedirect("http://localhost:8084/EIMS/ contactManage/lookContact.jsp");
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
