<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>企业信息管理系统--登录页面</title>
</head>
<body background="image/login.jpg">
  <br><br><br><br><br><br>
  <br><br><br><br><br><br>
  <center>
  <form action="loginCheck.jsp" method="post">
    <table border="0">
     <tr>
   <td>
   <table border="1" cellspacing="0" cellpadding="0"
         bgcolor="#dddddd" width="360" height="200">
         <tr height="130">
          <td align="center">
                                             输入用户姓名:<input type="text"
               name="userName" size="20">
               <br>
                                              输入用户密码:<input type="password"name="password" size="22">
               <br>
               <input type="submit" value="登 录"size="12"/>&nbsp;&nbsp;&nbsp;
               <input type="reset" value="清 除"size="12"/>
           </td>
          </tr>
         <tr height="30">
           <td bgcolor="#95BDFF">&nbsp;&nbsp;</td>
         </tr>
        </table>
       </td>
      </tr>
     </table>
    </form>
   </center>
</body>
</html>