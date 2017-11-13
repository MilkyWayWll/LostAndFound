<%@page import="cn.jju.dao.UserDao"%>
<%@page import="cn.jju.actionForm.UserForm"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>registerdo</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
UserDao userDao=new UserDao();
boolean res=userDao.findUser(request.getParameter("Name"));
if(res){
	System.out.println("注册失败!");
	%>
	<jsp:forward page="registerfail.jsp"></jsp:forward>
	<%
}else{
String Name=request.getParameter("Name");
String Password=request.getParameter("Password");
String QQ=request.getParameter("QQ");
String E_mail=request.getParameter("E_mail");
String Phone=request.getParameter("Phone");
UserForm user=new UserForm();
user.setName(Name);
user.setPassword(Password);
user.setQQ(QQ);
user.setE_mail(E_mail);
user.setPhone(Phone);
boolean result=userDao.addUser(user);
if(result){
	System.out.println("用户注册成功！");
	%>
	<h3 align="center" style=color:red>恭喜您，注册成功！</h3>
	<%
  response.setHeader("refresh", "3;URL=login.jsp");
%>
<h4 align="center">三秒后自动跳转至登陆界面，若没跳转请点击<a href="login.jsp">这里</a></h4>

	<% 
}else{
	System.out.println("用户注册失败!");
	%>
	<jsp:forward page="registerfail.jsp"></jsp:forward>
	<%
}

}
%>
</body>
</html>