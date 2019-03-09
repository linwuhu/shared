<%@ page import="sharedhouse.*" %>
<!DOCTYPE HTML>
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
	String userName=request.getParameter("login_username");
	String userPassword=request.getParameter("login_password");
	String url = request.getParameter("Url");
	UserManage userm=new UserManage();
	UserInfo user=new UserInfo();
	//user.setName(userName);
	//user.setPassword(userPassword);	
	user=userm.userLogin(userName, userPassword);	
	if(user!=null){
		session.setAttribute("currentUser",user);
		session.setAttribute("info","成功登录");
	    //out.println("成功登录");
	    if(url==""){
	    	response.sendRedirect("index.jsp");
	    }else{
	    	response.sendRedirect(url);
	    }
		
	}
	else{
		session.setAttribute("info","登录失败");
	    //out.println("登录失败");
		response.sendRedirect("test.jsp");
	}	
%>
</body>
</html>