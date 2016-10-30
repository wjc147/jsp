<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.DriverManager" %>
    <%
       request.setCharacterEncoding("UTF-8");
       response.setCharacterEncoding("UTF-8");
       response.setContentType("text/html; charset=utf-8");
    %>
<html>
<body>
   <%
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
      String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=student";
      Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","1234");
      
       
      
      String sql = "Update student set name=?,age=?,major=? where id=?";
      PreparedStatement ps = conn.prepareStatement(sql);
       
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      String age = request.getParameter("age");
      String major = request.getParameter("major");
      
      ps.setString(1,name);
      ps.setInt(2,Integer.parseInt(age));
      ps.setString(3,major);
      ps.setInt(4,Integer.parseInt(id));
      
      ps.executeUpdate();
      
      ps.close();
      conn.close();      
      %>
      
      <h1>
        数据修改成功
        
        <%
          response.sendRedirect("connect.jsp");
          session.setAttribute("info","数据修改成功");
        %>
      </h1>
</body>
</html>