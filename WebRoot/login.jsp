<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check(form){
	if (form.Name.value==""){
		alert("请输入用户名");form.Name.focus();return false;
	}
	if (form.Password.value==""){
		alert("请输入密码!");form.Password.focus();return false;
	}	
}
</script>
</head>
<body>
<form  name="form1" action="logindo.jsp" method="post">
<table align="center" height="960" width="100%" background="image/1.jpg" >
<tr>
  <td height="10%"> <h1 align="center"><strong>登录</strong></h1></td></tr>
    <tr><td></td></tr> 
<tr><td height="5%"><div align="center">
  <input style="height:28px" size="28" type="text" name="Name"  placeholder="请输入用户名"/></div></td></tr>

<tr><td height="5%"><div align="center">
  <input style="height:28px"   size="28" type="password" name="Password"  placeholder="请输入密码"/></div></td></tr>

<tr><td  height="10%"><div align="center">
   <input type="radio" value="1" name="usertype" >用户
    <input type="radio" value="2" name="usertype">管理员
    <script>document.getElementsByName("usertype")[0].checked="checked";</script>
  	   &nbsp;
      <input style="height:30px" type="submit" value="登陆" onClick="return check(form1)">
      <pre>
     <div id="sign" height="10%" valign="top" align="center"><a href="passwordlost.jsp">忘记密码？</a>          <a href="register.jsp">立即注册</a></div>
     </pre>
      </div></td></tr>
      <tr><td ></td></tr>
       <tr><td></td></tr> 
       <tr><td></td></tr>
       <tr><td></td></tr> 
        <tr><td></td></tr> 
</table>
</form>
</body>
</html>