<%@page import="cn.jju.dao.LostDao"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lostdelete</title>
</head>
<body>
<%
int lost_id=Integer.parseInt(request.getParameter("lost_id"));
LostDao lostDao=new LostDao();
boolean result=lostDao.deleteLost(lost_id);
if(result){
	System.out.println("丢失物品删除成功！");
	%>
	<jsp:forward page="userinformation.jsp"></jsp:forward>
	<%
}else{
	System.out.println("丢失物品删除失败！");
	%>
	<jsp:forward page="userupdatafail.jsp"></jsp:forward>
	<%
}
%>

</body>
</html>