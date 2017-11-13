<%@page import="cn.jju.dao.PickDao"%>
<%@page import="cn.jju.actionForm.PickForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changepickdo</title>
</head>
<body>
<%
int pick_id=Integer.parseInt(request.getParameter("pick_id"));
PickForm pick=new PickForm();
PickDao pickDao=new PickDao();
pick=pickDao.findpick(pick_id);
int result=pick.getHandway();
switch(result){
case 0:
	pick.setHandway(1);break;
case 1:
	pick.setHandway(0);break;
}
boolean n=pickDao.updateHanway(pick);
if(n){
	System.out.println("拾取物品状态更新成功！");
	%>
	<jsp:forward page="userinformation.jsp"></jsp:forward>
	<%
}else{
	System.out.println("拾取物品信息更新失败！");
	%>
	<jsp:forward page="userupdatafail.jsp"></jsp:forward>
	<%
}

%>
</body>
</html>