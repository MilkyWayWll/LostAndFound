<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>passwordlost</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check(form){

	if (form.Name.value==""){
		alert("请输入注册的用户名");form.Name.focus();return false;
	}
	if (form.Password.value==""){
		alert("请输入新的密码!");form.Password.focus();return false;
	}
	if (form.Password2.value==""){
		alert("请输入确认新的密码!");form.Password.focus();return false;
	}
	if (form.Password2.value!=form.Password.value){
		alert("两次输入的密码不一致，请重新输入!");form.Password.focus();return false;
	}
	if (form.Phone.value==""||form.Phone.value.length<7){
		alert("请输入正确的电话号码!");form.Password.focus();return false;
	}
}
</script>
</head>

<body>
<form name="form8" action="passwordlostdo.jsp" method="post">
<table align="center" height="960" width="100%" background="image/3.jpg">
	 <tr height="3%">
    <th width="45%" height="85px"><div align="right"><h1><strong></strong></h1></div></th>
    <th width="55%" height="85px"><div align="left"><h1 class="d"><strong>找回密码</strong></h1></div></th>
  </tr>
  <tr height="3%">
    <th width="45%" height="50px"  valign="top"><div align="right" style="color: #999"><span id="xin">*</span>请输入你的用户名：</div></th>
    <th width="55%" height="50px"  valign="top"> <div align="left">
      <input name="Name" type="text" style="height:28px" size="28" nput onkeyup="value=value.replace(/[\d]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[\d]/g,''))" maxlength=10   placeholder="请输入用户名"/>
    </div></th>
  </tr>
  <tr height="3%">
    <th width="45%" height="50px"  valign="top" ><div align="right" style="color: #999"><span id="xin">*</span>请输入你的电话号码：</div></th>
    <th width="55%" height="50px"  valign="top"> <div align="left">
      <input style="height:28px"   size="28" type="text" name="Phone" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" placeholder="不少于七位数字！"/>
    </div></th>
  </tr>
  <tr height="3%">
    <th width="45%" height="50px"  valign="top"><div align="right" style="color: #999"><span id="xin">*</span>请设置新的密码：</div></th>
    <th width="55%" height="50px"  valign="top" align="left"> <div align="left">
      <input style="height:28px"   size="28" type="password" name="Password" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" placeholder="请设置新的密码"/>
    </div></th>
  </tr>
  <tr height="3%">
    <th width="45%" height="50px"  valign="top"><div align="right" style="color: #999"><span id="xin">*</span>请再次输入新的密码：</div></th>
    <th width="55%" height="50px"  valign="top"> <div align="left">
      <input style="height:28px"   size="28" type="password" name="Password2" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" placeholder="请再次输入新的密码"/>
    </div></th>
  </tr>
  <tr height="5%">
   <th width="45%"> 
    <th width="55%" height="100px"  valign="top">
     <pre><div align="left"><input  style="height:30px"  type="reset" value="重置">          <input style="height:30px" type="submit" value="找回" onClick="return check(form8)" >
    </div>
    </pre></th>
  </tr>
</table>
</form>
</body>
</html>