<%@page import="cn.jju.dao.AdminDao"%>
<%@page import="cn.jju.actionForm.AdminForm"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@page import="cn.jju.actionForm.UserForm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logindo</title>
</head>

<body>
<%
request.setCharacterEncoding("UTF-8");
int n=Integer.parseInt(request.getParameter("usertype").trim());
String Name=request.getParameter("Name");
String Password=request.getParameter("Password");

if(n==1){
	UserForm user=new UserForm();
	user.setName(Name);
	user.setPassword(Password);
	System.out.println("当前输入用户名"+user.getName());
	UserDao userDao=new UserDao();
	boolean result=userDao.login(user);
	if(result){
		System.out.println("用户登陆成功！");
		session.setAttribute("User_id", user.getUser_id());
		session.setAttribute("name", user.getName());
		System.out.println("用户ID！"+user.getUser_id());
		%>
		<jsp:forward page="userindex.jsp"></jsp:forward>
		<%
	}else{
		System.out.println("用户登陆失败!");
		%>
		<jsp:forward page="loginfail.jsp"></jsp:forward>
		<%
	}
}else if(n==2){
	AdminForm admin=new AdminForm();
	admin.setAdminName(Name);
	admin.setAdminPassword(Password);
	AdminDao adminDao=new AdminDao();
	boolean result=adminDao.Adminlogin(admin);
	if(result){
		System.out.println("管理员登陆成功！");
		%>
		<jsp:forward page="adminindex.jsp"></jsp:forward>
		<%
	}else{
		System.out.println("管理员登陆失败!");
		%>
		<jsp:forward page="loginfail.jsp"></jsp:forward>
		<%
	}
}
%>
</body>
</html>