<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sharedhouse.*" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理注册用户信息</title>
</head>
<link rel="stylesheet" type="text/css" href="css/mytable.css">
<body>
<%
  UserManage userDel=new UserManage();
  String strUser=userDel.getAllUser();
  out.println(strUser);
  String strUser2=userDel.getAllUse();
  out.println(strUser2);
%>
</body>
</html>