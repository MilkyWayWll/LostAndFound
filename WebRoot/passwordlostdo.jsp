<%@page import="cn.jju.actionForm.UserForm"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>passwordlostdo</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String Name=request.getParameter("Name");
String phone=request.getParameter("Phone");
String password=request.getParameter("Password");
UserForm user=new UserForm();
user.setName(Name);
user.setPhone(phone);
UserDao userDao=new UserDao();
user=userDao.findpassword(user);
if(user!=null||"".equals(user)){
	user.setPassword(password);
	boolean result=userDao.updatePassword(user);
	if(result){
		System.out.print("密码修改成功！");
		%>
		<h3 align="center" style=color:red>密码修改成功！！</h3>
		<%
	  response.setHeader("refresh", "3;URL=login.jsp");
	%>
	<h4 align="center">三秒后自动跳转至登陆界面，若没跳转请点击<a href="login.jsp">这里</a></h4>

		<%	
	}else{
		System.out.print("密码修改失败！！");
		%>
		<jsp:forward page="userupdatafail.jsp"></jsp:forward>
		<%
	}
	
}else{
	%>
	<h3 align="center" style=color:red>你输入的账号或手机号不正确！！</h3>
	<%
  response.setHeader("refresh", "3;URL=passwordlost.jsp");
%>
<h4 align="center">三秒后自动跳转至找回界面，若没跳转请点击<a href="passwordlost.jsp">这里</a></h4>

	<%
}



%>



</body>
</html>