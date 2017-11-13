
<%@page import="cn.jju.dao.LostDao"%>
<%@page import="cn.jju.actionForm.LostForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lostdetail</title>
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
    <td height="2%"> <img src="image/details.png" width="20" height="20" /><span id="detail">丢失物品详细信息</span></td>
  </tr>
  <tr>
    <td height="800" valign="top">
    <%LostForm lost=new LostForm();
   int lost_id=Integer.parseInt(request.getParameter("lost_id"));
   LostDao lostDao=new LostDao();
   lost=lostDao.findid(lost_id);
    %>
    <div id="minititle"><h4><b><%=lost.getLname()%></b></h4></div>
     <div><h5>丢失物品名称：<%=lost.getLname()%></h5></div>
      <div><h5>丢失物品特征：<%=lost.getLost_trait()%></h5></div>
    <div><h5>物品丢失时间：<%=lost.getLost_time()%></h5></div>
    <div><h5>物品丢失地点：<%=lost.getLost_placel()%></h5></div>
    <div><h5>丢失人姓名：<%=lost.getLost_name()%></h5></div>
    <div><h5>丢失人联系方式：<%=lost.getLcontact_way()%></h5></div>
    <div><h5>丢失物品上报时间：<%=lost.getLdata()%></h5></div>
    <div><h5>是否找回：<%int result=lost.getResult();
    if(result==0){
    	%>
    	<span style="color:red"><h4>物品尚未找回</h4></span>
    	<%
    }else{
    	%>
    	<span style="color:red"><h4>物品已经找回！</h4></span>
    	<%
    }
    %></h5></div>
    </td>
  </tr>
</table>
    </td>
  </tr>
</table>

</body>
</html>