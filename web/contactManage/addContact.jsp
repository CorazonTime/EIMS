<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2024/5/11
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加合同信息</title>
</head>
<body bgcolor="lightgreen">
   <form action="addContactCheck.jsp" method="post">
       <table align="center" width="500">
            <tr>
                <td>
                    <a href="lookcontact.jsp">合同査询</a>
                </td>
                <td>合同添加</td>
            </tr>
       </table>
       <br>
           <hr>
           <br>
       <table align="center"width="300">
            <tr>
                <th colspan="6" align="center">添加合同信息</th>
            </tr>
            <tr>
                <td>客户姓名</td>
                <td><input type="text" name="clientName"/></td>
            </tr>
            <tr>
                <td>合同名称</td>
                <td><input type="text" name="contactName"/></td>
            </tr>
           <tr>
                <td>合同内容</td>
                <td><input type="text" name="contactContents"/></td>
            </tr>
           <tr>
                <td>合同生效日期</td>
                <td><input type="text" name="contactStart"/></td>
           </tr>
           <tr>
                <td>合同有效期</td>
                <td><input type="date" name="contactEnd"/></td>
           </tr>
           <tr>
                <td>业务员</td>
                <td><input type="text" name="staffName"/></td>
           </tr>
           <tr align="center">
                <td colspan="2">
                    <input name="sure" type="submit" value="确认">
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    <input name="clear"type="reset"value="取消">
                </td>
           </tr>
       </table>
   </form>
</body>
</html>
