<%@page import="cn.jju.dao.PickDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pickdelete</title>
</head>
<body>
<%
int pick_id=Integer.parseInt(request.getParameter("pick_id"));
PickDao pickDao=new PickDao();
boolean result=pickDao.deletePick(pick_id);
if(result){
	System.out.println("拾取物品删除成功！");
	%>
	<jsp:forward page="userinformation.jsp"></jsp:forward>
	<%
}else{
	System.out.println("拾取物品删除失败！");
	%>
	<jsp:forward page="userupdatafail.jsp"></jsp:forward>
	<%
}

%>

</body>
</html>