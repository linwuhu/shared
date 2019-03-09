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
request.setCharacterEncoding("UTF-8");
String strName=request.getParameter("new_name");
String strEmail=request.getParameter("new_email");
int strID=Integer.parseInt(request.getParameter("user_id"));


if(strName!=null){
	out.print("新的用户名:"+strName+"用户id："+request.getParameter("user_id"));
	UserInfo user=new UserInfo();
	/* user.setName(strName);
	user.setId(strID); */
	UserManage userm=new UserManage();
	user=userm.updateName(strName,strID);
	if (user!=null)
	{
		session.setAttribute("currentUser",user);
		out.println("成功修改用户名！");
		response.sendRedirect("personal.jsp");
		// response.setHeader("refresh","1;URL=personal.jsp");
	}
	else
	{
	   out.println("修改用户名失败！");
	   //response.setHeader("refresh","1;URL=personal.jsp");
	} 
}else if(strEmail!=null){
	UserInfo user=new UserInfo();
	UserManage userm=new UserManage();
	user=userm.updateEmail(strEmail,strID);
	if (user!=null)
	{
		session.setAttribute("currentUser",user);
		out.println("成功修改用户邮箱！");
		response.sendRedirect("personal.jsp");
		// response.setHeader("refresh","1;URL=personal.jsp");
	}
	else
	{
	   out.println("修改用户邮箱失败！");
	   //response.setHeader("refresh","1;URL=personal.jsp");
	} 
}
%>
</body>
</html>