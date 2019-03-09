<%@ page import="sharedhouse.*"%>
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
			UserInfo user =(UserInfo)session.getAttribute("currentUser");
			if(user!=null){
				session.removeAttribute("currentUser");
			%>
			<script type="text/javascript">
				alert(" <%= user.getName()%>"+"已成功退出！");
			</script>
			<%response.setHeader("refresh","1;URL=index.jsp"); %>
			<% }%>
</body>
</html>