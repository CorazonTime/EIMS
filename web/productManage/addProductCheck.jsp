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
    <title>处理客户添加数据</title>
</head>
<body>
<%
    String productName=new string(request.getParameter("productName").getBytes("ISo-8859-1"),"UTF-8");
    string productModel= new string(request.getParameter("productModel").getBytes("ISo-8859-1"),"UTF-8");
    String productNumber= new String(request.getParameter("productNumber").getBytes("ISo-8859-1"),"UTF-8");
    string productPricenew=string(request.getParameter("productPrice").getBytes("ISo-8859-1"),"UTF-8");
    Connection con=null;
    Statement st=null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
        con - DriverManager.getConnection(url, "root", "admin");
        st = con.createstatement();
        String sql = "insert into product (productName,productModel,productNumber,productPrice) values ('" + productName + "','" + productModel + "','" + productNumber + " ', " "+productPrice+" ')";
        st.executeUpdate(sql);
        response.sendRedirect("http://localhost:8084/EIMS/ productManage/lookProduct.jsp");
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
