<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>issue</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check(form){
	if (form.lname.value==""){
		alert("请输入丢失物品名称！");form.lname.focus();return false;
	}
	if (form.lost_trait.value==""){
		alert("请输入丢失物品特征!");form.lost_trait.focus();return false;
	}	
	if (form.lost_time.value==""){
		alert("请输入物品丢失时间!");form.lost_time.focus();return false;
	}
	if (form.lost_placel.value==""){
		alert("请输入物品丢失地点!");form.lost_placel.focus();return false;
	}
	if (form.lcontact_way.value==""){
		alert("请输入您的联系方式!");form.lcontact_way.focus();return false;
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
   <td width="87%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
    
   <table width="100%" height="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td height="4"> <img src="image/email.png" width="20" height="20" /><span id="detail">发布丢失信息</span></td>
  </tr>
  <tr>
    <td valign="top">
    <form name="form3"  action="issuedo.jsp" method="post">
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="45%" id="detail" ><div align="right">丢失物品名称：</div></td>
    <td width="55%"  id="detail"><div align="left">
      <input name="lname" type="text" style="height:28px" size="30"   placeholder="请输入物品名称"/>
    </div></td>
  </tr>
  <tr>
    <td width="45%" id="detail" valign="top"><div align="right">丢失物品特点：</div></td>
    <td width="55%"><div align="left">  <textArea cols="30" rows="5" name="lost_trait"  placeholder="请输入物品特点"></textArea></div></td>
  </tr>
  <tr>
       <td width="45%" id="detail" valign="top"><div align="right">物品丢失时间：</div></td>
    <td width="55%"  id="detail"><div align="left">
      <input name="lost_time" type="text" style="height:28px" size="30"   placeholder="例：2015-12-15"/>
    </div></td>
  </tr>
  <tr>
   <td width="45%" id="detail" valign="top"><div align="right">物品丢失地点：</div></td>
    <td width="55%"id="detail"><div align="left">
      <input name="lost_placel" type="text" style="height:28px" size="30"   placeholder="请输入物品丢失地点"/>
    </div></td>
  </tr>
  <tr>
   <td width="45%" id="detail" valign="top"><div align="right">联系方式：</div></td>
     <td width="55%"id="detail"><div align="left">
      <input name="lcontact_way" type="text" style="height:28px" size="30"   placeholder="请输入你的联系方式"/>
    </div></td>
  </tr>
  <tr>
   <td width="45%">&nbsp;</td>
    <td width="55%" valign="top"> 
    <pre><div align="left"><input  style="height:30px"  type="reset" value="重置">          <input style="height:30px" type="submit" value="发布" onClick="return check(form3)" >
    </div>
    </pre></td>
  </tr>
  <tr>
   <td width="45%">&nbsp;</td>
    <td width="55%">&nbsp;</td>
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