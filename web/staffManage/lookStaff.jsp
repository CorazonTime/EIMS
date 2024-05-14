<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %><%--
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
<table align="center" width="500">
    <tr>
        <td>员工查询</td>
        <td>
            <a href="addStaff.jsp">员工添加</a>
        </td>
    </tr>
</table>
<br>
<hr>
<br>
<table align="center" width="700" border=2">
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
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            try {
                conn = DBConnectionManager.getConnection();
                String sql = "SELECT * FROM staff";
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();

                while (rs.next()) {
        %>
    <tr>
        <td><%=rs.getString("staffName")%></td>
        <td><%=rs.getString("staffSex")%></td>
        <td><%=rs.getString("staffAge")%></td>
        <td><%=rs.getString("staffEducation")%></td>
        <td><%=rs.getString("staffDepartment")%></td>
        <td><%=rs.getString("staffDate")%></td>
        <td><%=rs.getString("staffDuty")%></td>
        <td><%=rs.getInt("staffWage")%></td>
    </tr>
        <%
                }
            } catch (SQLException e) {
                out.println("获取数据时发生错误: " + e.getMessage());
                // 还可以将错误记录到日志文件或控制台
                e.printStackTrace();
            } finally {
                DBConnectionManager.closeConnection();
            }
        %>
</body>
</html>
