<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Corazon
  Date: 2024/5/14
  Time: 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据处理页面</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String encryptedPassword = request.getParameter("encryptedPassword");

    if (userName == null || userName.isEmpty()) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        conn = DBConnectionManager.getConnection();

        String sql1 = "SELECT * FROM user WHERE userName=?";
        stmt = conn.prepareStatement(sql1);
        stmt.setString(1, userName);
        rs = stmt.executeQuery();

        if (rs.next()) {
            // 用户名存在，验证密码
            String storedEncryptedPassword = rs.getString("encryptedPassword");

            if (storedEncryptedPassword.equals(encryptedPassword)) {
                // 密码匹配，重定向到主页面
                response.sendRedirect("main/main.jsp");
            } else {
                // 密码不匹配，重定向到登录页面
                out.println("输入的用户名：" + userName +"输入的密码：" + encryptedPassword);
                out.println("数据库用户名：" + rs.getString("userName") + ", 数据库密码：" + rs.getString("encryptedPassword"));
//                response.sendRedirect("login.jsp");
            }
        } else {
            // 用户名不存在，重定向到登录页面
            response.sendRedirect("login.jsp");
        }

    } catch (SQLException e) {
        out.println("Database error: " + e.getMessage());
        e.printStackTrace();
    }finally {
        DBConnectionManager.closeConnection();
    }
%>
</body>
</html>
