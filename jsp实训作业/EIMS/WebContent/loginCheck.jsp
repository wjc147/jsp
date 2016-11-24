<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>数据处理页面</title>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("utf-8");
%>
</head>
<body>
  <%
    String userName =request.getParameter("userName");
    String password =request.getParameter("password");
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    if(userName.equals("") || password.equals("")){
    	response.sendRedirect("login.jsp");
    }
    try{
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
        String url="jdbc:sqlserver://localhost:1433;DatabaseName=eims";
        con=DriverManager.getConnection(url,"sa","1234");
        
    	st=con.createStatement();
    	String query="use eims select * from user_table where userName='"+userName+"'";
    	rs=st.executeQuery(query);
    	if(rs.next()){
    		String query2="use eims select * from user_table where password='"+password+"'";
    		rs=st.executeQuery(query2);
    		if(rs.next()){
    			response.sendRedirect("main/main.jsp");
    		}else{
    			response.sendRedirect("login.jsp");
    		}
    	}
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	if(rs!=null){rs.close();}  	
    	if(rs!=null){st.close();}
    	if(rs!=null){con.close();}
    }
  %>
</body>
</html>