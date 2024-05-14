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
    <script src="http://cdn.bootcss.com/blueimp-md5/1.1.0/js/md5.js"></script>
</head>
<body background="image/login.jpg">
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<center>
    <form action="" >
        <table border="0">
            <tr>
                <td>
                    <table border="1" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD" width="360" height="200">
                        <tr height="130">
                            <td align="center" bgcolor="#1B8BDE">
                                输入用户姓名<input type="text" name="userName" size="20">
                                <br>
                                输入用户密码<input type="password" name="password" size="20">
                                <%
                                    // 获取用户提交的密码
                                    String password = request.getParameter("password");
                                    // 对密码进行加密
                                    String encryptedPassword = new String();

                                    if (password != null) {
                                        // 对密码进行加密
                                        encryptedPassword = "123456";
                                        // 将加密后的密码放入隐藏域，以便传递给后端处理验证
                                    }
                                %>
                                <%= "Debug: 加密后的密码值是：" + encryptedPassword %>
                                <input type="hidden" name="encryptedPassword" id="encryptedPassword" value="<%= encryptedPassword%>" />

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