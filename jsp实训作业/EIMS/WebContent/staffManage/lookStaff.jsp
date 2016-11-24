<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询员工</title>
</head>
<body bgcolor="lightgreen">
<table align="center" width="500">
<tr>
<td>员工查询</td>
<td>
<a href="./addStaff.jsp">员工添加</a>
</td>
</tr>
</table>
<br>
<hr>
<br>
<table align="center" width="700"border="2">
<tr>
<th colspan="8">查看员工信息</th>
</tr>
<tr>
<td>姓名</td>
<td>性别</td>
<td>年龄</td>
<td>学历</td>
<td>部门</td>
<td>入职时间</td>
<td>职务</td>
<td>工资</td>
</tr>
<%   Connection con=null;
     Statement stmt=null;
     ResultSet rs=null;
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
     String url="jdbc:sqlserver://localhost:1433;DatabaseName=qy";
     con=DriverManager.getConnection(url,"sa","1234");
     stmt=con.createStatement();
     String sql="select* from staff";
     rs=stmt.executeQuery(sql);
     while(rs.next()){
     %>
     <tr>
     <td><%=rs.getString("staffName") %></td>
      <td><%=rs.getString("staffSex") %></td>
       <td><%=rs.getString("staffAge") %></td>
        <td><%=rs.getString("staffEducation") %>
         <td><%=rs.getString("staffDepartment") %>
          <td><%=rs.getString("staffDate") %>
           <td><%=rs.getString("staffDuty") %>
            <td><%=rs.getString("staffWage") %></td>
        </tr>
        <%
        }
        %>
</table>
</body>
</html>