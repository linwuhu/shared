<!DOCTYPE HTML>
<%@page import="sharedhouse.*"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body class="layui-layout-body">
<%
	AdminInfo adminer = (AdminInfo)session.getAttribute("adminLogin");
if(adminer!=null){
	//out.print("admin已上线");

%>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">共享房屋后台管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    管理员
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="adminLogoutAct.jsp">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item <!--layui-nav-itemed--> layui-this">
                    <a id="user" class="" href="javascript:;" style="font-size: 16px"><i class="layui-icon" style="font-size: 20px;color: #1E9FFF;">&#xe612;</i>用户信息</a>
                </li>
                <li class="layui-nav-item">
                    <a id="house" href="javascript:; " style="font-size: 16px"><i class="layui-icon" style="font-size: 20px;color: #1E9FFF;">&#xe715;</i>房源信息</a>
                    <!--<dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>-->
                </li>
                <li id="order" class="layui-nav-item"><a href="javascript:;" style="font-size: 16px"><i class="layui-icon" style="font-size: 20px;color: #1E9FFF;">&#xe657;</i>订单信息</a></li>

            </ul>
        </div>
    </div>

    <div class="layui-body" id="mainbody">
        <!-- 内容主体区域 -->
        
        <iframe src="userInfo.jsp" frameborder="0" style="width:100%;height:100%;"></iframe>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="../js/jquery-3.3.1.js"></script>
<script src="../layui/layui.js"></script>

<script>
	$(function(){
		/* alert(location.search);
		 if(location.search=='?state=2'){$('#house').trigger('click')} */
		
		 layui.use('element', function() {    //加载菜单hover动态效果
		        var element = layui.element;

		        //一些事件监听
		        element.on('nav(test)', function(data){
		            console.log(data);
		        });

		    });
		 if(location.search=='?state=2'){$('#house').trigger('click')}
		$("#user").click(function(){
			$('iframe').attr('src','userInfo.jsp');
		});
		$("#house").click(function(){
			$('iframe').attr('src','fyInfo.jsp');
		})
	})
   
</script>
<%
}else{
%>
	<script>
		alert("未登录");
		window.location.href = "adminLogin.jsp";
	</script>
<%	
}
%>
</body>
</html>