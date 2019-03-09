<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sharedhouse.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>蝴蝶E购网</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
</head>
<body>
<%
  UserInfo user=(UserInfo)session.getAttribute("currentUser");
  String strInfo=(String)session.getAttribute("info");
%>
<div class="header">
    <div class="xdh">
      <div class="w">
        <ul class="fl ld">
          <li class="shoucang" style="padding-right:0px"><b></b></li>
          <li class="menusp">
           <% if (user!=null){ %>
            	<span>您好!欢迎</span>
            <%=user.getName()%> 
            <span>光临蝴蝶E购网!<a href="logout.jsp?">【退出】</a></span>
            <%
              }
           else
               {
            %>           
           <span>
                              请先登录！
              <a href="login.jsp">【登录】</a> 
              <a href="register.jsp">【注册】</a>
            </span>
           <% 
               //session.removeAttribute("currentUser");
               session.removeAttribute("info");
              } 
           %>            
          </li>
        </ul>
        <ul class="fr lh">
          <li class="ld"><a href="">我的订单</a></li>
          <li class="ld"><a href="">资讯中心</a></li>
          <li class="ld"><a href="">帮助中心</a></li>
          <li class="ld"><a href="">快递查询</a></li>
        </ul>
      </div>
    </div>    
</div>
</body>
</html>