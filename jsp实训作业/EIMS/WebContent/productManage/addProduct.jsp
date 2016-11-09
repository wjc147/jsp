<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加产品信息</title>
</head>
<body bgcolor="lightgreen">
<form action="http://localhost:8084/EIMS/productManage/addProductCheck.jsp" method="post">
<table align="center" width="500">
<tr>
<td>
<a href="./lookProduct.jsp">产品查询</a>
</td>
<td>产品添加</td>
</tr>
</table>
<br>
<hr>
<br>
<table align="center" width="300">
<tr>
<th colspan="2" align="center">添加产品信息</th>
<tr>
<td>产品名称</td>
<td><input type="text" name="productName"/></td>
</tr>
<tr>
<td>产品型号</td>
<td><input type="text" name="productModel"/></td>
</tr>
<tr>
<td>产品数量</td>
<td><input type="text" name="productNumber"/></td>
</tr>
<tr>
<td>产品价格</td>
<td><input type="text" name="productPrice"/></td>
</tr>
<tr align="center">
<td colspan="2">
<input name="sure" type="submit" value="确认">
&nbsp;&nbsp;&nbsp;&nbsp;
<input name="clear" type="reset" value="取消">
</td>
</tr>
</table>
</form>
</body>
</html>