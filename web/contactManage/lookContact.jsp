<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>合同查询</title>
</head>
<body bgcolor="lightgreen">
   <table align="center" width="500">
    <tr>
        <td>合同查询</td>
        <td>
        <a href="http://localhost:8084/EIMS/contactManage/addContact.jsp">合同添加</a>
    </td>
    </tr>
   </table>
   <br>
   <hr>
   <br>
<table align="center" width="700" border=2" >
    <tr>
        <th colspan="6">查看合同信息</th>
    </tr>
    <tr>
        <td>客户姓名</td>
        <td>合同名称</td>
        <td>合同内容</td>
        <td>合同生效日期</td>
        <td>合同有效期</td>
        <td>业务员</td>
    </tr>
    <%
        Connection con=null;
        Statement stmt=null;
        Resultset rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=qbk";
        con=DriverManager.getConnection(url,"root","admin");
        stmt=con.createstatement();
        String sql="select * from contact";
        rs=stmt.executeQuery(sql);
        while(rs.next()){
    %>
    <tr>
        <td><%=rs.getstring("clientName")%></td>
        <td><%=rs.getstring("contactName")%></td>
        <td><%=rs.getstring("contactContents")%></td>
        <td><%=rs.getstring("contactstart")%></td>
        <td><%=rs.getstring("contactEnd")%></td>
        <td><%=rs.getstring("staffName")%></td>
        </tr>
    <%
        }
    %>
</table>
</body>
</html>
