<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理员工添加数据</title>
</head>
<body>
  <%
    String staffName=new
    String(request.getParameter("staffName").getBytes("ISO-8859-1"),"utf-8");
    String staffSex=new
    String(request.getParameter("staffSex").getBytes("ISO-8859-1"),"utf-8");
    String staffAge=new
    String(request.getParameter("staffAge").getBytes("ISO-8859-1"),"utf-8");
    String staffEducation=new
    String(request.getParameter("staffEducation").getBytes("ISO-8859-1"),"utf-8");
    String staffDepartment=new
    String(request.getParameter("staffDepartment").getBytes("ISO-8859-1"),"utf-8");
    String staffDate=new
    String(request.getParameter("staffDate").getBytes("ISO-8859-1"),"utf-8");
    String staffDuty=new
    String(request.getParameter("staffDuty").getBytes("ISO-8859-1"),"utf-8");
    String staffWage=new
    String(request.getParameter("staffWage").getBytes("ISO-8859-1"),"utf-8");
    Connection con=null;
    Statement st=null;
   try{
	   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
	    String url="jdbc:sqlserver://localhost:1433;DatabaseName=qy";
	    con=DriverManager.getConnection(url,"sa","1234");
	   st=con.createStatement();
	   String sql="insert into staff(staffName,staffSex,staffAge,staffEducation,staffDepartment,staffDate,staffDuty,staffWage)values('"+staffName+"','"+staffSex+"','"+staffAge+"','"+staffEducation+"','"+staffDepartment+"','"+staffDate+"','"+staffDuty+"','"+staffWage+"')";
	   st.executeUpdate(sql);
	   response.sendRedirect("http://localhost:8084/EIMS/staffManage/lookStaff.jsp");
   }
   catch(Exception e){
	   e.printStackTrace();
   }
   finally{
	   st.close();
	   con.close();
   }
  %>
</body>
</html>