<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询数据库所有内容</title>
</head>
<body>
  <%
      
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
      String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=student";
      Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","1234");
      Statement stmt=conn.createStatement();
      ResultSet rs=stmt.executeQuery("select * from student");
      while(rs.next())
      {
    	    out.println("<tr>");
    		out.println("<td><a href='modify.jsp?id="+rs.getInt("id")+"'>学号</a>"+rs.getInt("id"));
    		out.println("<td>"+rs.getString("name")+"</td>");
    		out.println("<td>"+rs.getInt("age")+"</td>");
    		out.println("<td>"+rs.getString("major")+"</td>");
    		out.println("</tr>");
      }
       	
  %>
      <%=session.getAttribute("info") %>
</body>
</html>