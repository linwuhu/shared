<%@page import="sharedhouse.*"%>
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
			AdminInfo adminer =(AdminInfo)session.getAttribute("adminLogin");
		
			if(adminer!=null){
				session.removeAttribute("adminLogin");
			%>
			<script type="text/javascript">
				alert(" <%= adminer.getAdName()%>"+"已成功退出！");
			</script>
			<%response.setHeader("refresh","0.5;URL=adminLogin.jsp"); %>
			<% }%>
</body>
</html>