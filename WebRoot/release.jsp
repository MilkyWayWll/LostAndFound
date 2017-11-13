<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>release</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check(form){
	if (form.pname.value==""){
		alert("请输入拾取物品名称！");form.pname.focus();return false;
	}
	if (form.pick_trait.value==""){
		alert("请输入拾取物品特征!");form.pick_trait.focus();return false;
	}	
	if (form.pick_time.value==""){
		alert("请输入物品拾取时间!");form.pick_time.focus();return false;
	}
	if (form.pick_place.value==""){
		alert("请输入物品拾取地点!");form.pick_place.focus();return false;
	}
	if (form.pcontact_way.value==""){
		alert("请输入您的联系方式!");form.pcontact_way.focus();return false;
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
  <td height="4"> <img src="image/email.png" width="20" height="20" /><span id="detail">发布拾取信息</span></td>
  </tr>
  <tr>
    <td valign="top">
    <form name="form4"  action="releasedo.jsp" method="post">
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="45%" id="detail" ><div align="right">拾取物品名称：</div></td>
    <td width="55%"  id="detail"><div align="left">
      <input name="pname" type="text" style="height:28px" size="30"   placeholder="请输入物品名称"/>
    </div></td>
  </tr>
  <tr>
    <td width="45%" id="detail" valign="top"><div align="right">拾取物品特点：</div></td>
    <td width="55%"><div align="left">  <textArea cols="30" rows="5" name="pick_trait"  placeholder="请输入物品特点"></textArea></div></td>
  </tr>
  <tr>
       <td width="45%" id="detail" valign="top"><div align="right">物品拾取时间：</div></td>
    <td width="55%"  id="detail"><div align="left">
      <input name="pick_time" type="text" style="height:28px" size="30"   placeholder="例：2015-12-15"/>
    </div></td>
  </tr>
  <tr>
   <td width="45%" id="detail" valign="top"><div align="right">物品拾取地点：</div></td>
    <td width="55%"id="detail"><div align="left">
      <input name="pick_place" type="text" style="height:28px" size="30"   placeholder="请输入物品拾取地点"/>
    </div></td>
  </tr>
  <tr>
   <td width="45%" id="detail" valign="top"><div align="right">联系方式：</div></td>
     <td width="55%"id="detail"><div align="left">
      <input name="pcontact_way" type="text" style="height:28px" size="30"   placeholder="请输入您的联系方式"/>
    </div></td>
  </tr>
  <tr>
   <td width="45%">&nbsp;</td>
    <td width="55%" valign="top"> 
    <pre><div align="left"><input  style="height:30px"  type="reset" value="重置">          <input style="height:30px" type="submit" value="发布" onClick="return check(form4)" >
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