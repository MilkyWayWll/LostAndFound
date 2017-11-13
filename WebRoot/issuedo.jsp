<%@page import="cn.jju.dao.LostDao"%>
<%@page import="cn.jju.actionForm.LostForm"%>
<%-- <%@page import="javafx.scene.input.DataFormat"%> --%>
<%@page import="cn.jju.actionForm.UserForm"%>
<%@page import="cn.jju.dao.UserDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>issuedo</title>
</head>
<body>
<%
int User_id=(Integer)session.getAttribute("User_id");
UserDao userDao=new UserDao();
UserForm user=new UserForm();
user=userDao.findName(User_id);
String lost_name=user.getName();

request.setCharacterEncoding("UTF-8");
String lname=request.getParameter("lname");
String lost_trait=request.getParameter("lost_trait");
String lost_time=request.getParameter("lost_time");
String lost_placel=request.getParameter("lost_placel");
String lcontact_way=request.getParameter("lcontact_way");

Date date=new Date();

SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
String ldata=format.format(date);

LostForm lost=new LostForm();

lost.setLname(lname);
lost.setLost_trait(lost_trait);
lost.setLost_time(lost_time);
lost.setLost_placel(lost_placel);
lost.setLost_name(lost_name);
lost.setLcontact_way(lcontact_way);
lost.setLdata(ldata);

LostDao lostDao=new LostDao();
boolean result=lostDao.insertLost(lost);
if(result){
	System.out.println("丢失发布成功！");
	%>
	<jsp:forward page="userindex.jsp"></jsp:forward>
	<%
}else{
	System.out.println("丢失发布失败!");
	%>
	<jsp:forward page="issuefail.jsp"></jsp:forward>
	<%
}

%>



</body>
</html>