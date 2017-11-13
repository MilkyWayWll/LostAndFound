<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>passwordupdatafail</title>
</head>
<body>
<h3 align="center" style=color:red>您输入的手机号不正确！密码修改失败！</h3>
<%
 response.setHeader("refresh", "3;URL=passwordchange.jsp");
%>
<h4 align="center">三秒后自动跳转至修改密码界面，若没跳转请点击<a href="passwordchange.jsp">这里</a></h4>


</body>
</html>