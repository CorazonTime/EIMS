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
    <title>售后查询</title>
</head>
<body bgcolor="lightgreen">
<table align="center" width="500">
    <tr>
        <td>售后查询</td>
        <td>
            <a href="http://localhost:8084/EIMS/CSManage/addcs.jsp">售后添加</a>
        </td>
    </tr>
</table>
    <br>
    <hr>
    <br>
    <table align="center" width="700"border=2">
    <tr>
        <th colspan="3">查看售后信息</th>
    </tr>
    <tr>
        <td>客户姓名</td>
        <td>客户反馈意见</td>
        <td>业务员</td>
    </tr>
        <%
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("com.mysql.jdbc.Driver");
            string url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
            con=DriverManager.getConnection(url,"root","admin");
            stmt=con.createStatement();
            String sql="select * from cs";
            rs=stmt.executeQuery(sql);
            while(rs.next()){
        %>
        <tr>
        <td><%=rs.getstring("clientName")%></td>
        <td><%=rs.getstring("clientopinion")%></td>
        <td><%=rs.getstring("staffName")%></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
