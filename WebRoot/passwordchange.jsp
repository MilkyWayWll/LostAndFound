<%@page import="cn.jju.actionForm.UserForm"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>passwordchange</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check(form){
	if (form.Phone.value==""){
		alert("请输入你的手机号！");form.Phone.focus();return false;
	}
	if (form.password.value==""){
		alert("请输入你的新密码!");form.password.focus();return false;
	}	
	if (form.password2.value==""){
		alert("请输入再次输入你的新密码!");form.password2.focus();return false;
	}
	if (form.password2.value!=form.password.value){
		alert("两次输入的密码不一致，请重新输入!");form.password.focus();return false;
	}
}
</script>
</head>
<body>
<table width="100%" height="960" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="13%"  valign="top">
  <!--   left.html --> 
  <%@ include file="left.jsp" %>
    <!--  left.html end -->
    </td>
   <td width="87%" valign="top">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td id="title"><h2>失物招领系统</h2></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
     <%
   int User_id2=(Integer)session.getAttribute("User_id");
   UserDao userDao2=new UserDao();
   UserForm user=new UserForm();
   user=userDao2.findName(User_id2);
   %>
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td height="2%"> <img src="image/uppassword.png" width="20" height="20" /><span id="detail">修改密码</span></td>
  </tr>
  <tr>
    <td>
    <form name="form6" action="passwordchangedo.jsp" method="post">
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="45%" id="detail" ><div align="right">你当前的手机号为：</div></td>
    <td width="55%" id="detail"><div align="left"><%=user.getPhone().substring(0,user.getPhone().length()-(user.getPhone().substring(3)).length())+"****"+user.getPhone().substring(7)%></div></td>
  </tr>
  <tr>
  <td width="45%" id="detail" ><div align="right">请确认你的手机号：</div></td>
    <td width="55%" id="detail"><div align="left">
      <input name="Phone" type="text" style="height:28px" size="30"   placeholder="请输入你的手机号"/>
    </div></td>
  </tr>
  <tr>
  <td width="45%" id="detail" ><div align="right">请输入你的新密码：</div></td>
    <td width="55%" id="detail"><div align="left">
      <input name="password" type="password" style="height:28px" size="30"   placeholder="请输入你的新密码"/>
    </div></td>
  </tr>
  <tr>
    <td width="45%" id="detail" ><div align="right">请再次输入你的新密码：</div></td>
    <td width="55%" id="detail"><div align="left">
      <input name="password2" type="password" style="height:28px" size="30"   placeholder="请再次输入你的新密码"/>
    </div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="55%" valign="top"> 
    <pre><div align="left"><input  style="height:30px"  type="reset" value="重置">          <input style="height:30px" type="submit" value="更改" onClick="return check(form6)" >
    </div>
    </pre></td>
  </tr>
</table>
</form>
</td>
  </tr>
</table>

   
    
    </td>
  </tr>
</table>

</body>
</html>