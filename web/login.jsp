<%--
  Created by IntelliJ IDEA.
  User: Corazon
  Date: 2024/5/11
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>企业信息管理系统——登录页面</title>
</head>
<body background="image/login.jpg">
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<center>
    <form action="loginCheck.jsp" method="post">
        <table border="0">
            <tr>
                <td>
                    <table border="1" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD" width="360" height="200">
                        <tr height="130">
                            <td align="center" bgcolor="#1B8BDE">
                                输入用户姓名<input type="text" name="userName" size="20">
                                <br>
                                输入用户密码<input type="password" name="password" size="20">
                                <br><br>
                                <input type="submit" size="12" value="登录">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="reset" size="12" value="清除">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>