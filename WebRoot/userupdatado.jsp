<%@page import="cn.jju.actionForm.UserForm"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userupdatado</title>
</head>
<body>
<%
int User_id=(Integer)session.getAttribute("User_id");
UserDao userDao=new UserDao();
UserForm user=new UserForm();
user=userDao.findName(User_id);

request.setCharacterEncoding("UTF-8");
user.setQQ(request.getParameter("QQ"));
user.setE_mail(request.getParameter("E_mail"));

boolean result=userDao.updateUser(user);
if(result){
	System.out.println("用户信息更新成功！");
	%>
	<jsp:forward page="userinformation.jsp"></jsp:forward>
	<%
}else{
	System.out.println("用户信息更新失败！");
	%>
	<jsp:forward page="userupdatafail.jsp"></jsp:forward>
	<%
}
%>
</body>
</html>