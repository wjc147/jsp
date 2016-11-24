<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加客户信息</title>
</head>
<body>
	<%
		String clientName = new String(request.getParameter("clientName").getBytes("ISO-8859-1"), "utf-8");
		String clientTelephone = new String(request.getParameter("clientTelephone").getBytes("ISO-8859-1"),"utf-8");
		String clientAddress = new String(request.getParameter("clientAddress").getBytes("ISO-8859-1"), "utf-8");
		String clientEmail = new String(request.getParameter("clientEmail").getBytes("ISO-8859-1"), "utf-8");
		Connection con = null;
		Statement st = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=eims";
			con = DriverManager.getConnection(url, "sa", "1234");

			st = con.createStatement();
			String sql = "insert into client(clientName,clientTelephone,clientAddress,clientEmail) values('"+ clientName + "','" + clientTelephone + "','" + clientAddress + "','" + clientEmail + "')";
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