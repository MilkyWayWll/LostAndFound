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
<title>lostlist</title>
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
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="2%"> <img src="image/details.png" width="20" height="20" /><span id="detail">丢失物品列表</span></td>
    <td> </td>
  </tr>
  <tr>
    <td height="800" valign="top">
<%
LostDao lostDao=new LostDao();
List lostlist=lostDao.searchLost();
for(int i=0;i<lostlist.size();i++){
	LostForm lostForm=new LostForm();
	lostForm=(LostForm)lostlist.get(i);
	%>
	<div style="position:relative; padding-bottom:20px;">
	<a href=lostdetail.jsp?lost_id=<%=lostForm.getLost_id()%>><span  style="width:100%; position:absolute; bottom:0; text-align:left;"><%=lostForm.getLname()%></span>	<span style="width:100%; position:absolute; bottom:0; text-align:center;">--------------------------------------------</span>	<span style="width:100%; position:absolute; bottom:0; text-align:right;"><%=lostForm.getLdata()%></span></a>
	</div>
	<% 
}
%>

</td>
    <td>
    </td>
  </tr>
</table>
    
    </td>
  </tr>
</table>

</body>
</html>