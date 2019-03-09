<!DOCTYPE HTML >
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="sharedhouse.*" %>    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
</head>
<body>
<%
 String info=(String)session.getAttribute("info");
 if(info !=null){
	out.println(info);
}
 response.setHeader("refresh","1;URL=index.jsp");
%>
</body>
</html>