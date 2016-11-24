<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>客户查询</title>
</head>
<body bgcolor="lightgreen">
	<table align="center" width="500">
		<tr>
			<td>客户查询</td>
			<td><a href="./addClient.jsp">客户添加</a></td>
			<td><a href="./updateClient.jsp">客户修改</a></td>
			<td><a href="./deleteClient.jsp">客户删除</a></td>
		</tr>
	</table>
	<br>
	<hr>
	<br>
	<table align="center" width="700" border="2">
		<tr>
			<th colspan="4">查看客户信息</th>
		</tr>
		<tr>
			<td>姓名</td>
			<td>电话</td>
			<td>地址</td>
			<td>邮箱</td>
		</tr>
		<%
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=eims";
			con = DriverManager.getConnection(url, "sa", "1234");
			stmt = con.createStatement();
			String sql = "select * from client";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("clientName")%></td>
			<td><%=rs.getString("clientTelephone")%></td>
			<td><%=rs.getString("clientAddress")%></td>
			<td><%=rs.getString("clientEmail")%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>