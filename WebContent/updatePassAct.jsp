<%@ page import="sharedhouse.*" %>
<!DOCTYPE HTML >
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String strName=request.getParameter("login_username");
String strPassword=request.getParameter("new_password");
UserInfo user=new UserInfo();
user.setName(strName);
user.setPassword(strPassword);
UserManage userm=new UserManage();
boolean result=userm.updatePassword(user);
if (result)
{
	out.println("成功修改密码！");
	 response.setHeader("refresh","1;URL=login.jsp");
}
else
{
   out.println("修改密码失败！");
   response.setHeader("refresh","1;URL=login.jsp");
}
%>
</body>
</html>