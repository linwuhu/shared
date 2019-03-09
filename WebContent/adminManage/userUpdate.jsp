<%@ page import="sharedhouse.*" %>
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
   //获取表单数据
    request.setCharacterEncoding("UTF-8");
	int strID=Integer.parseInt(request.getParameter("id"));
	String userName=request.getParameter("userName");
	String userPassword=request.getParameter("password");
	String userEmail=request.getParameter("Email");
	
	UserManage userm=new UserManage();
	UserInfo user=new UserInfo();
	UserInfo user2=new UserInfo();
	user.setId(strID);
	user.setName(userName);
	user.setPassword(userPassword);	
	user.setEmail(userEmail);
	user2=userm.updateAdmain(user);	
	if(user2!=null){
		session.setAttribute("currentUser",user);
		session.setAttribute("info","admin编辑用户信息成功");
	    //out.println("成功登录");
		response.sendRedirect("userInfo.jsp");
		
	}
	else{
		session.setAttribute("info","admin修改失败");
	    //out.println("登录失败");
		response.sendRedirect("test.jsp");
	}	
%>
</body>
</html>