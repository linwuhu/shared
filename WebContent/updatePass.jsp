<%@ page import="sharedhouse.*" %>
<!DOCTYPE HTML>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link rel="stylesheet"  href="css/basic-sign.css">
</head>
<body style="overflow-y: hidden">
<%
  UserInfo user=(UserInfo)session.getAttribute("currentUser");
  String strInfo=(String)session.getAttribute("info");
%>
    <div id="panel">
        <div class="content">
        <% if (user!=null){ %>
            <div class="login user">
                <h3>修改密码</h3>
                <div class="form-body">
                    <form action="updateAct.jsp" method="post">
                        <input type="text" class="user" name="login_username" placeholder="账号/邮箱" required />
<!--                         <input type="password" class="lock" name="login_password" placeholder="旧密码" required/>
 -->                        <input type="text" onfocus="this.type='password'" class="lock" name="new_password" placeholder="新密码" required/>
                        <input type="submit" value="修改密码" name="updatePassword">
                    </form>
                </div>
            </div>
         <%
              }
           else
               {
            %>  
            <h2 style="padding-top: 110px;color: #eee;">您还未登录，请
            	<a style="color: dodgerblue; " href="login.jsp">登录</a>
            </h2>	
            
              <% 
               session.removeAttribute("currentUser");
               session.removeAttribute("info");
              } 
           %> 
        </div>
    </div>
</body>
<script type="text/javascript">
	/* window.onload = function(){
		alert('123')
		document.querySelector("input[name='new_password']").value="";
	} */
</script>
</html>