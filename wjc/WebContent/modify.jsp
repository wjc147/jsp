<%@ page  contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改内容</title>
</head>
<body>
  <%
      
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
      String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=student";
      Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","1234");
      Statement stmt=conn.createStatement();
      
      String id = request.getParameter("id");
      String sql = "select * from student where id = " + id;
      ResultSet rs=stmt.executeQuery(sql);
        String name = "";
        int age = 0;
        String major = "";
         
        while(rs.next()){
        	
        	name = rs.getString("name");
        	age = rs.getInt("age");
        	major = rs.getString("major");
        }
      
  %>
  
      强势插入
   <form action="updatestudent.jsp" method="post">
      学号 ：<input type="hidden" name="id" value='<%=id %>'/><br>
     姓名：<input type="text" name="name" value='<%=name %>'/><br>
    年龄：<input type="text" name="age" value='<%=age %>'/><br>
     专业 ：<input type="text" name="major" value='<%=major %>'/><br>

<button type="submit" >提交</button>
  </form>
</body>
</html>