<%@ page import="sharedhouse.*" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
   String strName=request.getParameter("username");
   String strPassword=request.getParameter("password");
   String strEmail=request.getParameter("mail");    

	UserManage userm=new UserManage();
	if(strName!=null && !strName.isEmpty()){
		if(userm.getUser(strName)){
			session.setAttribute("info","该用户名已经注册过");
			//out.println("该用户名已经注册过");
		}
		else{
		   UserInfo user=new UserInfo();
		   //对用户对象属性赋值
		   user.setName(strName);
		   user.setPassword(strPassword);
		   user.setEmail(strEmail);
		   //保存用户注册信息
		   if (userm.insertUser(user)){
			session.setAttribute("currentUser",user);
		   session.setAttribute("info","用户注册成功！");
		   //out.println("用户注册成功！");
		   }
		   else{
			   session.setAttribute("info","用户注册失败！");
		   }
		}
		response.sendRedirect("test.jsp");
	}
%>
</body>
</html>