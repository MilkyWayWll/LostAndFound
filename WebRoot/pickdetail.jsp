
<%@page import="cn.jju.dao.PickDao"%>
<%@page import="cn.jju.actionForm.PickForm"%>
<%@page import="cn.jju.dao.LostDao"%>
<%@page import="cn.jju.actionForm.LostForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pickdetail</title>
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
    <td height="2%"> <img src="image/details.png" width="20" height="20" /><span id="detail">拾取物品详细信息</span></td>
  </tr>
  <tr>
    <td height="800" valign="top">
    <%
    PickForm pick=new PickForm();
   int pick_id=Integer.parseInt(request.getParameter("pick_id"));
   PickDao pickDao=new PickDao();
    pick=pickDao.findpick(pick_id);
    %>
    <div id="minititle"><h4><b><%=pick.getPname()%></b></h4></div>
     <div><h5>拾取物品名称：<%=pick.getPname()%></h5></div>
      <div><h5>拾取物品特征：<%=pick.getPick_trait()%></h5></div>
    <div><h5>物品拾取时间：<%=pick.getPick_time()%></h5></div>
    <div><h5>物品拾取地点：<%=pick.getPick_place()%></h5></div>
    <div><h5>拾取人姓名：<%=pick.getPick_Name()%></h5></div>
    <div><h5>拾取人联系方式：<%=pick.getPcontact_way()%></h5></div>
    <div><h5>是否被领取：<%int result=pick.getHandway();
    if(result==0){
    	%>
    	<span style="color:red"><h4>物品尚未被领取</h4></span>
    	<%
    }else{
    	%>
    	<span style="color:red"><h4>物品已经被领取！</h4></span>
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