<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>客户删除</title>
</head>
<body bgcolor="lightgreen">
	<form action="../clientManage/deleteClientCheck.jsp" method="post">
		<table align="center" width="500">
			<tr>
				<td><a href="./lookClient.jsp">客户查询</a></td>
				<td><a href="./addClient.jsp">客户添加</a></td>
				<td><a href="./updateClient.jsp">客户修改</a></td>
				<td>客户删除</td>
			</tr>
		</table>
		<br>
		<hr>
		<br>
		<table align="center">
			<tr>
				<th colspan="2">删除客户信息</th>
			</tr>
			<tr>
				<td>客户姓名</td>
				<td><input type="text" name="clientName" /> 输入要删除的客户姓名</td>
			</tr>
			<tr>
				<td><input type="submit" name="sure" value="确认" />
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<input name="clear" type="reset"value="取消"></td>
			</tr>
		</table>
	</form>
</body>
</html>