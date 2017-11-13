<%@page import="cn.jju.actionForm.PickForm"%>
<%@page import="cn.jju.dao.PickDao"%>
<%@page import="cn.jju.actionForm.LostForm"%>
<%@page import="java.util.List"%>
<%@page import="cn.jju.dao.LostDao"%>
<%@page import="cn.jju.actionForm.UserForm"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userinformation</title>
<link href="CSS/css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check(form){
	if (form.QQ.value==""){
		alert("为了方便联系！QQ不能为空！");form.QQ.focus();return false;
	}
	if (form.E_mail.value==""){
		alert("为了方便联系！电子邮箱不能为空！");form.E_mail.focus();return false;
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
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
     <td height="2%"> <img src="image/updata.png" width="20" height="20" /><span id="detail">个人信息</span></td>
  </tr>
  <tr>
    <td height="100" >
       <form name="form5"  action="userupdatado.jsp" method="post">
   <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="5">
   <%
   int User_id2=(Integer)session.getAttribute("User_id");
   UserDao userDao2=new UserDao();
   UserForm user=new UserForm();
   user=userDao2.findName(User_id2);
   %>
  <tr>
    <td width="50%" id="detail"><div align="left">QQ:<input name="QQ" type="text" value="<%=user.getQQ()%>"/></div></td>
    <td width="50%" id="detail"><div align="left">E_mail:<input name="E_mail" type="text" value="<%=user.getE_mail()%>"/></div></td>
  </tr>
  <tr>
  <td width="50%" id="detail"><div align="left">Phone:<%=user.getPhone().substring(0,user.getPhone().length()-(user.getPhone().substring(3)).length())+"****"+user.getPhone().substring(7)%></div></td>
    <td width="50%"><div align="center">
      <input type="submit" value="更新" onClick="return check(form5)">
    </div></td>
  </tr>
</table>
</form>
     </td>
  </tr>
  <tr>
    <td height="2%"> <img src="image/list.png" width="20" height="20" /><span id="detail">发布的丢失物品</span></td>
  </tr>
  <tr>
    <td valign="top">
    <%
    String lost_name=user.getName();
	LostDao lostDao=new LostDao();
	List lostlist=lostDao.searchLost(lost_name);
	for(int i=0;i<lostlist.size();i++){
	LostForm lostForm=new LostForm();
	lostForm=(LostForm)lostlist.get(i);
	int lostresult=lostForm.getResult();
	String  lastlost=null;
	switch(lostresult){
	case 0:
		lastlost="暂未找回";break;
	case 1:
		lastlost="已找回";break;
	}
	%>
	<div style="position:relative; padding-bottom:20px;">
	<a href=lostdetail.jsp?lost_id=<%=lostForm.getLost_id()%>><span  style="width:100%; position:relative; bottom:0; text-align:left;"><%=lostForm.getLname()%></span>	<span style="width:100%; position:relative; bottom:0; text-align:center;">--------------------------------------------</span>	
	<span style="width:100%; position:relative; bottom:0; text-align:right;"><%=lostForm.getLdata()%>|</span></a>
	<a href=changeresultdo.jsp?lost_id=<%=lostForm.getLost_id()%>><span style="width:100%; position:relative; bottom:0; text-align:right;"><%=lastlost%>|</span></a>
	<a href=lostdelete.jsp?lost_id=<%=lostForm.getLost_id()%>><span style="width:100%; position:relative; bottom:0; text-align:right;">删除</span></a>
	</div>
	<% 
}
%>
    
    </td>
  </tr>
  <tr>
     <td height="2%" >    <img src="image/list.png" width="20" height="20" /><span id="detail">发布的拾取物品</span></td>
  </tr>
  <tr>
    <td valign="top">
    <%
	String pick_Name=user.getName();
    PickDao pickDao=new PickDao();
    List picklist=pickDao.searchPick(pick_Name);
    for(int i=0;i<picklist.size();i++){
    	PickForm pickForm =new PickForm();
    	pickForm=(PickForm)picklist.get(i);
    	int pickresult=pickForm.getHandway();
    	String lastpick=null;
    	switch(pickresult){
    	case 0:
    		lastpick="暂未领取";break;
    	case 1:
    		lastpick="已领取";break;
    	}
    	%>
    	<div style="position:relative; padding-bottom:20px;">
	<a href=pickdetail.jsp?pick_id=<%=pickForm.getPick_id()%>><span  style="width:100%; position:relative; bottom:0; text-align:left;"><%=pickForm.getPname()%></span>	<span style="width:100%; position:relative; bottom:0; text-align:center;">--------------------------------------------</span>	
	<span style="width:100%; position:relative; bottom:0; text-align:right;"><%=pickForm.getPick_time()%>|</span></a>
	<a href=changepickdo.jsp?pick_id=<%=pickForm.getPick_id()%>><span style="width:100%; position:relative; bottom:0; text-align:right;"><%=lastpick%>|</span></a>
	<a href=pickdelete.jsp?pick_id=<%=pickForm.getPick_id()%>><span style="width:100%; position:relative; bottom:0; text-align:right;">删除</span></a>
	</div>
    	<% 
    }
    %>
    </td>
  </tr>
</table>

    
   
    
    </td>
  </tr>
</table>

</body>
</html>