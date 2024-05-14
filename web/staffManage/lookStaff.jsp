<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询员工</title>
</head>
<body bgcolor="lightgreen">
<table align="center"width="500">
    <tr>
        <td>员工查询</td><td>

    </td>
    </tr>
</table>
<br>
<hr>
<br>
<table align="center"width="700"border=2" >
    <tr>
        <th colspan="8">查看员工信息</th>
    </tr>
    <tr>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>学历</td>
        <td>部门</td>
        <td>人职时间</td>
        <td>职务</td>
        <td>工资</td>
</tr>
      <%
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName("com.mysgl.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/eims?useUnicode-true&characterEncoding-gbk";con=DriverManager.getConnection(url,"root","admin");
        stmt=con.createstatement();
        String sql="select * from staff";
        rs=stmt.executeQuery(sql);while(rs.next()){
      %>
      <tr>
          <td><%=rs.getstring("staffName")%></td>
          <td><%=rs.getstring("staffsex")%></td>
          <td><%=rs.getstring("staffAge")%></td>
          <td><%=rs.getstring("staffEducation")%></td>
          <td><%=rs.getstring("staffDepartment")%></td>
          <td><%=rs.getstring("staffDate")%></td>
          <td><%=rs.getstring("staffDuty")%></td>
          <td><%=rs.getstring("staffwage")%></td>
      </tr>
      <%
        }
      %>

</body>
</html>
