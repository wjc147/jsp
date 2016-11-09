<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>合同查询</title>
</head>
<body bgcolor="lightgreen">
	<table align="center" width="500">
		<tr>
			<td>合同查询</td>
			<td><a href="../contactManage/addContact.jsp">合同添加</a></td>
		</tr>
	</table>
	<br>
	<hr>
	<br>
	<table align="center" width="700" border="2">
		<tr>
			<th colspan="6">查看合同信息</th>
		</tr>
		<tr>
			<td>客户姓名</td>
			<td>合同名称</td>
			<td>合同内容</td>
			<td>合同生效时间</td>
			<td>合同有效时间</td>
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
			String sql = "select * from contact";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("clientName")%></td>
			<td><%=rs.getString("contactName")%></td>
			<td><%=rs.getString("contactContents")%></td>
			<td><%=rs.getString("contactStart")%></td>
			<td><%=rs.getString("contactEnd")%></td>
			<td><%=rs.getString("StaffName")%></td>
		</tr>
		<%
}
%>
	</table>
</body>
</html>