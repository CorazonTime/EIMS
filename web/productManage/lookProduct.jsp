<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.mysql.cj.protocol.Resultset" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品查询</title>
</head>
<body bgcolor ="lightgreen">
<table align="center" width="500">
    <tr>
        <td>产品查询</td>
        <td>
            <a href ="http://localhost:8084/EIMS/productManage/addProduct.jsp">产品添加</a>
        </td>
        </tr>
</table>
<br>
<hr>
<br>
<table align="center" width="700" border=2">
    <tr>
        <th colspan="4">查看产品信息</th>
    </tr>
    <tr>
        <td>产品名称</td>
        <td>产品型号</td>
        <td>产品数量</td>
        <td>产品价格</td>
    </tr>
    <%
            Connection con=null;
            Statement stmt=null;
            Resultset rs=null;
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/eims?useUnicode-true&characterEncodinggbk";
            con= DriverManager.getConnection(url,"root","admin");
            stmt=con.createStatement();
            String sql="select* from product";
            rs= (Resultset) stmt.executeQuery(sql);
            while(rs.next()){
            %>
    <tr>
        <td><%=rs.getString("productName")%></td>
        <td><%=rs.getString("productModel")%></td>
        <td><%=rs.getString("productNumber")%></td>
        <td><%=rs.getString("productPrice")%></td>
        </tr>
        <%
        }
        %>
</table>
</body>
</html>
