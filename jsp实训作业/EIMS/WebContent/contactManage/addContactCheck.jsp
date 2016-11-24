<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理合同添加数据</title>
</head>
<body>
	<%
		String clientName = new String(request.getParameter("clientName").getBytes("ISO-8859-1"), "UTF-8");

		String contactName = new String(request.getParameter("contactName").getBytes("ISO-8859-1"), "UTF-8");

		String contactContents = new String(request.getParameter("contactContents").getBytes("ISO-8859-1"),"UTF-8");

		String contactStart = new String(request.getParameter("contactStart").getBytes("ISO-8859-1"), "UTF-8");
		String contactEnd = new String(request.getParameter("contactEnd").getBytes("ISO-8859-1"), "UTF-8");
		String StaffName = new String(request.getParameter("staffName").getBytes("ISO-8859-1"), "UTF-8");
		Connection con = null;
		Statement st = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=eims";
			con = DriverManager.getConnection(url, "sa", "1234");
			
			st = con.createStatement();
			String sql = "insert into contact(clientName,contactName,contactContents,contactStart,contactEnd,StaffName)values('"+ clientName + "','" + contactName + "','" + contactContents + "','" + contactStart + "','"+ contactEnd + "','" + StaffName + "')";
			st.executeUpdate(sql);
			response.sendRedirect("../contactManage/lookContact.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			st.close();
			con.close();
		}
	%>
</body>
</html>