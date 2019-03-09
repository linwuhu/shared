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
	int strID=Integer.parseInt(request.getParameter("houseid"));
	String city=request.getParameter("city");
	String intro=request.getParameter("intro");
	String address=request.getParameter("address");
	int price= Integer.parseInt(request.getParameter("price"));
	String area=request.getParameter("area");
	int size=Integer.parseInt(request.getParameter("size"));
	String hired=request.getParameter("hired");
	
	FyManage fym = new FyManage();
	FyInfo house = new FyInfo();
	house.sethId(strID);
	house.setCity(city);
	house.sethName(intro);
	house.setAddress(address);
	house.setPrice(price);
	house.setHarea(area);
	house.setHsize(size);
	house.setHired(hired);
	
	FyInfo house2= new FyInfo();
	house2 = fym.updateAdmain(house);
	if(house2!=null){
		//session.setAttribute("currentUser",house);
		session.setAttribute("info","admin编辑房源信息成功");
	    //out.println("成功登录");
		response.sendRedirect("fyInfo.jsp");
	}else{
		session.setAttribute("info","admin修改失败");
	    //out.println("登录失败");
		response.sendRedirect("test.jsp");
	}	

%>
</body>
</html>