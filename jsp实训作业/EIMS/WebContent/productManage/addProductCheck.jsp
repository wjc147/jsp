<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理客户添加数据</title>
</head>
<body>
<% String productName=new String(request.getParameter("productName").getBytes("ISO-8859-1"),"UTF-8");
 String productModel=new String(request.getParameter("productModel").getBytes("ISO-8859-1"),"UTF-8"); 
  String productNumber=new String(request.getParameter("productNumber").getBytes("ISO-8859-1"),"UTF-8"); 
   String productPrice=new String(request.getParameter("productPrice").getBytes("ISO-8859-1"),"UTF-8"); 
   Connection con=null;
   Statement st=null;
   try{
	   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
	    String url="jdbc:sqlserver://localhost:1433;DatabaseName=qy";
	    con=DriverManager.getConnection(url,"sa","1234");
   st=con.createStatement();
   String sql="insert into product(productName,productModel,productNumber,productPrice)values('"+productName+"','"+productModel+"','"+productNumber+"','"+productPrice+"')";
  st.executeUpdate(sql);
  response.sendRedirect("http://localhost:8084/EIMS/productManage/lookProduct.jsp");
   }
   catch(Exception e){
	   e.printStackTrace();
   }
   finally{
	   st.close();
	   con.close();
   }
   %>
</body>
</html>