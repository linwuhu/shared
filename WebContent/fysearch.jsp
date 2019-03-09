<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="sharedhouse.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>房源搜索</title>
	<link rel='stylesheet' href='css/animations.css'>
	<style>
		* { margin: 0; padding: 0;}
		body{background-color: #23262E;}
	a{text-decoration: none}

	ul { list-style-type: none;}


	.jq22 { width: 1050px; margin: 0 auto; font-size: 0;}
	.filtr-item { display: inline-block; width: 330px; padding: 10px;}
	.filtr-item a { color: #444; text-decoration: none;}
	.filtr-item img { width: 100%; height: 250px;}
	.filtr-item span {     color: rgba(255,255,255,.7);  transition: all .3s;  -webkit-transition: all .3s;display: block; margin-top: 5px; font-size: 14px; text-align: center;}
	.filtr-item span:hover{color: #fff;}
		.clearfix:after{
			content: "";
			clear: both;
			display: table;
		}
		.header{
			width: 100%;
		}
		.nav{

			margin: 0 auto;
		}

		.logo-h{
			display: none;
		}
		.logo a{
			width: 137px;
			height: 66px;
			display: inline-block;
			float: left;
			background-image: url("img/logo.png") ;
			background-position: 10px -365px;
		}
		.nav .logo{
			float: left;
		}

		.nav .nav-list{
			float: right;
			font-family: "microsoft yahei";
			font-size: 14px;
			margin-right: 20px;
			margin-top: 10px;
		}
		.nav-list li{
			display: inline-block;
			height: 44px;
			line-height: 44px;
			margin: 0 5px;
			font-size: 0;
		}
		.nav-list a{
			color:#fff;
			display: block;
			font-size: 16px;
			padding: 0 10px;

		}
		.nav-list a:hover,.nav-list a:active{
			color: #1abc9c!important;
		}
		.nav-list a.fyfb{
			width: 128px;
			height: 44px;
			line-height: 44px;
			text-align: center;
			font-size: 18px;
			background-color: #1abc9c;
			filter: alpha(opacity=90);
			-moz-opacity: 0.9;
			opacity: 0.9;
		}
		.nav-list a.fyfb:hover,.nav-list a.fyfb:active{
			opacity: 0.6;
			color: #040404;
		}
		.current{position: relative;}
		.current a.up-down{background: url("img/icon_head.png")no-repeat right -118px;margin-right: 5px;}
		.current div{z-index: 99;padding: 10px 0;width:100px;position: absolute;left:-15px;top:40px;background-color: #000;opacity: 0.8;text-align: center}
		.current div a{font-size: 14px;line-height: 34px;}
		.current .person-center{display: none;}
		.current .person-center a{    color: #fff;  display: block;  font-size: 14px;  padding: 0 10px;}
		.current:hover a.up-down{background-position: right -164px;}
		.current:hover .person-center{display: block;}

		/*     搜索框      */
		form {
			position: relative;
			width: 300px;
			margin: 0 auto;
		}
		/*.d1 {background: #A3D0C3;}*/
		.d1 input {
			width: 100%;
			height: 42px;
			padding-left: 10px;
			border: 0 solid #3f51b5;
			background:rgba(255,255,255,0.8);
			outline: none;
			color: #3f51b5;
			box-sizing: border-box;
		}
		.d1 button {
			position: absolute;
			top: 0;
			right: 0px;
			width: 42px;
			height: 42px;
			border: none;
			background: #3f51b5;
			border-radius: 0 5px 5px 0;
			cursor: pointer;
		}
		.d1 button:before {
			content: "\f002";
			font-family: FontAwesome;
			font-size: 16px;
			color: #F9F0DA;
		}
	h1{
		color: white;
		text-align: center;
		letter-spacing: 38px;

	}
	body{
		background: url("img/dark-bg.jpeg") no-repeat;
		background-size: cover;
	}
	/*       文字动画     */
		.is-animate{text-align: center}
		.is-animate.style1 > div { animation-name: style1; }

		.is-animate > div {
			animation-duration: 1s;
			animation-fill-mode: both;
			animation-iteration-count: infinite;
			background-color: #3f51b5;
			margin: 1px 10px;
			color: #fff;
			font-size: 20px;
			padding: 12px;
			border-radius: 4px;
			box-shadow: 1px 1px 9px -3px #000;
			display: inline-block;
		}

		.is-animate > div:nth-child(1) { animation-delay: 0.0s }
		.is-animate > div:nth-child(2) { animation-delay: 0.1s }
		.is-animate > div:nth-child(3) { animation-delay: 0.2s }
		.is-animate > div:nth-child(4) { animation-delay: 0.3s }
</style>
</head>

<body>
<sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;DatabaseName=share"
     user="sa"  password="123456"/>

<%
  UserInfo user=(UserInfo)session.getAttribute("currentUser");
  String strInfo=(String)session.getAttribute("info");
%>
<!--          头部        -->

<div class="header">
	<div class="nav clearfix">
		<div class="logo">
			<a href="test.html"></a>
			<h1 class="logo-h">链家网</h1>
		</div>
		<div class="nav-list">
			<ul>
			   <% if (user!=null){ %>
				<li class="current"><a class="up-down"><%=user.getName()%></a>
					<div class="person-center">
						<span><a href="personal.jsp">个人中心</a></span>
						<span><a href="">我的订单</a></span>
						<span><a href="updatePass.jsp">修改密码</a></span>
						<span><a href="logout.jsp?">退出</a></span>
					</div>
				</li>
				<%
              }
           else
               {
            %> 
				<li><a href="register.jsp">注册</a></li>
				<li><a id="login" style="cursor:pointer;">登录</a></li>
				<% 
               session.removeAttribute("currentUser");
               session.removeAttribute("info");
              	} 
           		%>
				<li><a href="" class="fyfb">免费发布房源</a></li>
			</ul>
		</div>
	</div>
</div>


<!--    搜索框    -->
<div class='is-animate style1'>
	<div>房</div>
	<div>源</div>
	<div>搜</div>
	<div>索</div>
</div>
<div class="search d1">
	<form>
		<input value='<c:out value="${param.city}"/>' id="adress" type="text" placeholder="请输入地点、小区名查询" data-search >
		<!--<button type="submit"></button>-->
	</form>
</div >

 <!-- 查询fy表 -->
 <sql:query dataSource="${snapshot}" var="result">
		SELECT * from fy 
</sql:query>


<div class="jq22" style="margin-top: 20px">
<!--  房源展示  -->
<c:forEach var="row" items="${result.rows}">
<div class="filtr-item abc" data-category="2">
		<a href="house.jsp?houseID=<c:out value="${row.houseID}"/>">
			<img src="fyimg/<c:out value="${row.hName}"/>.jpg" alt="">
			<span><c:out value="${row.hName}"/></span>
		</a>
	</div>
</c:forEach>
	<!-- <div class="filtr-item" data-category="2">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span class="ss">仿QQ绿钻抽奖转盘</span>
		</a>
	</div>
	<div class="filtr-item" data-category="1">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>jQuery筛选过滤插件Filterizr</span>
		</a>
	</div>
	<div class="filtr-item" data-category="1">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>jQuery全屏滚动插件DD Full Screen Slider</span>
		</a>
	</div>

	<div class="filtr-item" data-category="3">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>让IE7 IE8支持CSS3 background-size属性</span>
		</a>
	</div>
	<div class="filtr-item" data-category="1">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>轻巧的jQuery提示框插件Tipso</span>
		</a>
	</div>
	<div class="filtr-item" data-category="2">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>简单的jQuery幻灯片插件ck_slide</span>
		</a>
	</div>
	<div class="filtr-item" data-category="1">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>WOW.js – 让页面滚动更有趣</span>
		</a>
	</div>
	<div class="filtr-item" data-category="2">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>fullPage.js制作网易邮箱大师页面</span>
		</a>
	</div>
	<div class="filtr-item" data-category="2">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>onepage-scroll制作iPhone 5s页面</span>
		</a>
	</div>
	<div class="filtr-item" data-category="2">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>jqueryrotate制作机锋网积分抽奖效果</span>
		</a>
	</div>
	<div class="filtr-item abc" data-category="2">
		<a href="#">
			<img src="img/table1.jpg" alt="">
			<span>jQuery左右垂直反向滚动插件multiscroll.js</span>
		</a>
	</div> -->
</div>
<c:out value="${param.city}"/>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.filterizr.js"></script>
<script>
	$(function() {
		$('.jq22').filterizr();

		$('.nav li').on('click', function() {
			$(this).toggleClass('active').siblings().removeClass('active');
		});
		
			/* if(location.href.indexOf('city')!==-1){
				var city = decodeURI(location.href.split('=')[1]);
				console.log(city);
				$('#adress').val(city);
				
			} */
		
		/* if(typeof(location.href.split('=')[1])!=='undefined'){
			var city = decodeURI(location.href.split('=')[1]);
			$('.yc_city').val(city);	
		} */
		
	});
</script>

<script>//登录跳转
            	$('#login').click(function(){
            		var url= location.href.split('/')[4];
            		//console.log(url);
            		//获取当前url中的页面地址并且传递到登录界面
            		window.location.href='login.jsp?test='+url; 
            	})
 </script>	
</body>
</html>