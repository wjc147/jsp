<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>售后查询</title>
</head>
<body bgcolor="lightgreen">
	<table align="center" width="500">
		<tr>
			<td>售后查询</td>
			<td><a href="./addCS.jsp">售后添加 </a></td>
		</tr>
	</table>
	<br>
	<hr>
	<br>
	<table align="center" width="700" border="2">
		<tr>
			<th colspan="3">查看售后信息</th>
		</tr>
		<tr>
			<td>客户姓名</td>
			<td>客户反馈意见</td>
			<td>业务员</td>
		</tr>
		<%
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=eims";
			con = DriverManager.getConnection(url, "sa", "1234");
			stmt = con.createStatement();
			String sql = "select*from cs";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("clientName")%></td>
			<td><%=rs.getString("clientOpinion")%></td>
			<td><%=rs.getString("StaffName")%></td>
		</tr>
		<%
			}
		%>

	</table>
</body>
</html>