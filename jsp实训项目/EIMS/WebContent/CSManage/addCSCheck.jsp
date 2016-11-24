<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理售后添加数据</title>
</head>
<body>
	<%
		String clientName = new String(request.getParameter("clientName").getBytes("ISO-8859-1"), "UTF-8");
		String clientOpinion = new String(request.getParameter("clientOpinion").getBytes("ISO-8859-1"), "UTF-8");
		String StaffName = new String(request.getParameter("StaffName").getBytes("ISO-8859-1"), "UTF-8");
		Connection con = null;
		Statement st = null;

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=eims";
			con = DriverManager.getConnection(url, "sa", "1234");
			st = con.createStatement();
			String sql = "insert into cs(clientName,clientOpinion,StaffName) values('" + clientName + "','"
					+ clientOpinion + "','" + StaffName + "')";
			st.executeUpdate(sql);
			response.sendRedirect("../CSManage/lookCS.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			st.close();
			con.close();
		}
	%>
</body>
</html>