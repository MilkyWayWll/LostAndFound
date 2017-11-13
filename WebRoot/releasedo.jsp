<%@page import="cn.jju.dao.PickDao"%>
<%@page import="cn.jju.actionForm.PickForm"%>
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
<title>releasedo.jsp</title>
</head>
<body>
<%
int User_id=(Integer)session.getAttribute("User_id");
UserDao userDao=new UserDao();
UserForm user=new UserForm();
user=userDao.findName(User_id);
String pick_Name=user.getName();

request.setCharacterEncoding("UTF-8");
String pname=request.getParameter("pname");
String pick_trait= request.getParameter("pick_trait");
String pick_time= request.getParameter("pick_time");
String pick_place= request.getParameter("pick_place");
String pcontact_way=request.getParameter("pcontact_way");

PickForm pick=new PickForm();

pick.setPick_Name(pick_Name);
pick.setPname(pname);
pick.setPick_trait(pick_trait);
pick.setPick_time(pick_time);
pick.setPick_place(pick_place);
pick.setPcontact_way(pcontact_way);

PickDao pickDao=new PickDao();
boolean result=pickDao.insertPick(pick);
if(result){
	System.out.println("拾取发布成功！");
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