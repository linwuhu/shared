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
		String name =request.getParameter("loginame");
		String pass =request.getParameter("loginpass");
		
		AdminInfo admin = new AdminInfo();
		AdminManage adm= new AdminManage();
		
		admin=adm.adminLogin(name,pass);
		if(admin!=null){
			session.setAttribute("adminLogin",admin);
			//out.print("管理员存在");
			response.sendRedirect("admin.jsp");
		}else{
			out.print(name+"密码："+pass);
			out.print("管理员不存在");
		}
 %>
</body>
</html>