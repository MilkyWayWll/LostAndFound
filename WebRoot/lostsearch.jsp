 <%@page import="cn.jju.dao.PickDao"%>
<%@page import="cn.jju.actionForm.PickForm"%>
<%@page import="cn.jju.actionForm.LostForm"%>
<%@page import="java.util.List"%>
<%@page import="cn.jju.dao.LostDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lostsearch</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
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
 <td height="4"> <img src="image/email.png" width="20" height="20" /><span id="detail">丢失物品检索</span></td>
  </tr>
  <tr>
    <td height="100">
    <form  action="lostsearchdo.jsp" method="post">
   <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td width="50%" id="detail"><div align="left">丢失物品名称： <input name="lname" type="text"/></div></td>
    <td width="50%" id="detail"><div align="left">丢失物品特征： <input name="lost_trait" type="text"/></div></td>
  </tr>
  <tr>
  <td width="50%" id="detail"><div align="left">物品丢失地点： <input name="lost_placel" type="text"/></div></td>
    <td width="50%"><div align="center">
      <input type="submit" value="搜索">
    </div></td>
  </tr>
</table>
</form>
    </td>
  </tr>
  <tr>
  <td height="4"> <img src="image/printer.png" width="20" height="20" /><span id="detail">检索结果</span></td>
  </tr>
  <tr>
    <td>
  <td valign="top">
</td>
  </tr>
</table>
    
    </td>
  </tr>
</table>

</body>
</html>