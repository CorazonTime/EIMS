<%@ page import="SQL.DBConnectionManager" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理产品添加数据</title>
</head>
<body>
<%
    String  productName = request.getParameter("productName");
    String  productModel = request.getParameter("productModel");
    String  productNumber = request.getParameter("productNumber");
    String  productPrice = request.getParameter("productPrice");
    String sql = "INSERT INTO product (productName, productModel, productNumber, productPrice) VALUES (?, ?, ?, ?)";

    try {
        Connection conn = DBConnectionManager.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1, productName);
        pstmt.setString(2, productModel);
        pstmt.setString(3, productNumber);
        pstmt.setString(4, productPrice);

        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            response.sendRedirect("lookProduct.jsp");
        } else {
            out.println("Failed to insert product information.");
        }

        DBConnectionManager.closeConnection();
    } catch (SQLIntegrityConstraintViolationException e) {
        out.println("Failed to insert product information.");
    } catch (SQLException e) {
        out.println("Error occurred: " + e.getMessage());
        e.printStackTrace();  // 在控制台打印异常堆栈信息
    }
%>

</body>
</html>
