<%@page import="cn.jju.dao.UserDao"%>
<%@page import="cn.jju.actionForm.UserForm"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
String uname=null;
if(session.getAttribute("name")==null||session.getAttribute("User_id")==null){
	response.sendRedirect("nologin.jsp");
}else{
	 uname=session.getAttribute("name").toString();
}
%>
<table   width="100%" height="960" border="0" cellspacing="0" cellpadding="0">
 <tr id="leftname" height="1%">
    <td width="19%"><img src="image/user.png" width="20" height="20" /></td>
 	<td width="70%"><%=uname%></td>
    <td width="11%"></td>
  </tr>
 <tr id="leftname" height="1%">
    <td> <img src="image/cloud.png" width="20" height="15" /></td>
 <td><a href=lostlist.jsp><font color=#FFFFFF >
 丢失浏览</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/cloud2.png" width="20" height="15" /></td>
<td>
<a href=picklist.jsp><font color=#FFFFFF >
拾取浏览</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/view.png" width="20" height="20" /></td>
<td>
<a href=lostsearch.jsp><font color=#FFFFFF >
丢失检索</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/search.png" width="20" height="20" /></td>
<td>
<a href=picksearch.jsp><font color=#FFFFFF >
拾取检索</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/write.png" width="20" height="20" /></td>
<td>
<a href=issue.jsp><font color=#FFFFFF >
发布丢失</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/love.png" width="20" height="20" /></td>
<td>
<a href=release.jsp><font color=#FFFFFF >
发布拾取</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/eye.png" width="20" height="15" /></td>
<td>
<a href=userinformation.jsp><font color=#FFFFFF >
个人信息</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td><img src="image/settings.png" width="20" height="20" /></td>
<td>
<a href=passwordchange.jsp><font color=#FFFFFF >
修改密码</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
     <td><img src="image/power.png" width="20" height="20" /></td>
<td>
<a href=login.jsp><font color=#FFFFFF >
退出</font></a></td>
    <td><img src="image/leftimage01.png" width="5" height="8" /></td>
  </tr>
 <tr id="leftname" height="1%">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 <tr id="leftname" height="1%">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 <tr id="leftname" height="1%">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 <tr id="leftname" height="1%">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 <tr id="leftname" height="1%">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>