<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理客户删除的数据</title>
</head>
<body>
	<%
		String clientName = new String(request.getParameter("clientName").getBytes("ISO-8859-1"), "utf-8");
		Connection con = null;
		Statement st = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=eims";
			con = DriverManager.getConnection(url, "sa", "1234");
			st = con.createStatement();
			String sql = "delete from client where clientName='" + clientName + "'";
			st.executeUpdate(sql);
			response.sendRedirect("../clientManage/lookClient.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			st.close();
			con.close();
		}
	%>
</body>
</html>