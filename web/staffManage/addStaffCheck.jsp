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
    <title>处理员工添加数据</title>
</head>
<body>
      <%
          String staffName=newString(request.getParameter("staffName").getBytes("ISo-8859-1"),"UTF-8");
          String staffSex=newString(request.getParameter("staffsex").getBytes("Iso-8859-1"),"UTF-8");
          String staffAge=new String(request.getParameter("staffAge").getBytes("ISo-8859-1"), "UTF-8");
          String staffEducation=new String(request.getParameter("staffEducation").getBytes("ISO-8859-1"),"UTF-8");
          String staffDepartment=new String(reguest.getParameter("staffDepartment").getBytes("IsO-8859-1"),"UTF-8");
          String staffDate=new String(request.getParameter("staffDate").getBytes("IsO-8859-1"),"UTF-8");
          String staffDuty=new String(request.getParameter("staffDuty").getBytes("IsO-8859-1"),"UTF-8");
          String staffWage=new String(request.getParameter("staffWage").getBytes("IsO-8859-1"), "UTF-8");
          Connection con=null;
          Statement st=null;
          try{
              Class.forName("com.mysql.jdbc.Driver");
              String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=qbk";
              con=DriverManager.getConnection(url,"root","admin");
              st=con.createstatement();
              String sql="insert into staff (staffName, staffSex, staffAge, staffEducation, staffDepartmentstaffDate,staffDuty,staffWage)values('"+staffName+"','"+ staffSex+"','"+ staffAge+"','"+ staffEducation+",""+staffDepartment+"',""+staffDate+"','"+staffDuty+"" ""+staffwage+"')";
              st.executeupdate(sql);
              response.sendRedirect("http://localhost:8084/EIMs/staffManage/lookstaff.jsp");
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
