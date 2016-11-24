<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>产品查询</title>
</head>
<body bgcolor="lightgreen">
  <table align="center" width="500">
  <tr>
  <td>产品查询</td>
  <td> <a href="./addProduct.jsp">产品添加</a>
  </td>
  </tr>
  </table>
  <br>
  <hr>
  <br>
  <table align="center" width="700" border="2">
  <tr>
  <th colspan="4">查看产品信息</th>
  </tr>
  <tr>
  <td>产品名称</td>
  <td>产品型号</td>
  <td>产品数量</td>
  <td>产品价格</td>
  </tr>
  <% Connection con=null;
     Statement stmt=null;
     ResultSet rs=null;
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
     String url="jdbc:sqlserver://localhost:1433;DatabaseName=qy";
     con=DriverManager.getConnection(url,"sa","1234");
     stmt=con.createStatement();
     String sql="select* from product";
     rs=stmt.executeQuery(sql);
     while(rs.next()){
     %>
     <tr>
     <td><%=rs.getString("productName") %></td>
      <td><%=rs.getString("productModel") %></td>
       <td><%=rs.getString("productNumber") %></td>
        <td><%=rs.getString("productPrice") %></td>
        </tr>
        <%
        }
        %>
</table>      
</body>
</html>