<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginfail</title>
</head>
<body>
<h3 align="center" style=color:red>登陆失败！请再次确认您的用户名和密码！</h3>
<h4 align="center">三秒后自动跳转至登陆界面，若没跳转请点击<a href="login.jsp">这里</a></h4>
<%
  response.setHeader("refresh", "3;URL=login.jsp");
%>
</body>
</html>