<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userupdatafail</title>
</head>
<body>
<h3 align="center" style=color:red>出现错误！信息更新失败</h3>
<h4 align="center">三秒后自动跳转至用户信息界面，若没跳转请点击<a href="userinformation.jsp">这里</a></h4>
<%
  response.setHeader("refresh", "3;URL=userinformation.jsp");
%>
</body>
</html>