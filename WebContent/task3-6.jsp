<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sharedhouse.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
  String strAction=request.getParameter("para");
  if (strAction!=null && strAction.equals("deleteUser"))
  {
	  String strId=request.getParameter("id");
	  if(strId==null)strId="";
	  int id=Integer.parseInt(strId);
	  UserInfo user=new UserInfo();
	  user.setId(id);
	  UserManage userm=new UserManage();
	  boolean result=userm.deleteUserInfo(user);
	  if (result)
	  {
		response.sendRedirect("adminManage/userInfo.jsp");
	  }
	  else
	  {
		out.println("删除用户信息失败");
	  }
  }else if(strAction!=null && strAction.equals("deleteFy")){
	  int id=Integer.parseInt(request.getParameter("id"));
	  FyInfo house = new FyInfo();
	  FyManage fym = new FyManage();
	  house.sethId(id);
	  boolean result = fym.deleteFy(house);
	  if(result){
		  session.setAttribute("info", "成功");
		  response.sendRedirect("adminManage/fyInfo.jsp");
	  }
  }else if(strAction!=null && strAction.equals("deleteOrder")){
	  
  }
%>
</body>
</html>