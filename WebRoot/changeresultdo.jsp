<%@page import="cn.jju.actionForm.LostForm"%>
<%@page import="cn.jju.dao.LostDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changeresultdo</title>
</head>
<body>
<%
int lost_id=Integer.parseInt(request.getParameter("lost_id"));
LostForm lost=new LostForm();
LostDao lostDao=new LostDao();
lost=lostDao.findid(lost_id);
int result=lost.getResult();
switch(result){
case 0:
	lost.setResult(1);break;
case 1:
	lost.setResult(0);break;
}
boolean n=lostDao.updateResult(lost);
if(n){
	System.out.println("丢失物品状态更新成功！");
	%>
	<jsp:forward page="userinformation.jsp"></jsp:forward>
	<%
}else{
	System.out.println("丢失物品信息更新失败！");
	%>
	<jsp:forward page="userupdatafail.jsp"></jsp:forward>
	<%
}
%>

</body>
</html>