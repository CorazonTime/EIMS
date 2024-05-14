<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>企业信息管理系统一主页面</title>
</head>
<frameset cols="120,*">
    <frame src="left.jsp" name="left" scrolling="no" />
     <frameset rows="80,*">
       <frame src="top.jsp" name="top" scrolling="no"/>
       <frame src="bottom.jsp" name="main" />
     </frameset>
</frameset>
</html>
