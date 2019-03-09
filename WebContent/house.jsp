<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="sharedhouse.*" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="house.css">
    <link rel="stylesheet" href="css/swiper-4.1.0.min.css">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background-color: #f5f5f5;
        }
        a{
            text-decoration: none;
        }
        ul,li{
            list-style-type: none;
        }
        .clearfix:after{
            content: "";
            display: block;
            clear: both;
        }
        /*          房源介绍            */
        .house-info {
            padding: 25px 0 15px 12px;
            background-color: #fff;
            margin: 10px 0;
        }
        .house-info:after{
            content: "";
            display: block;
            clear: both;
            height: 0 ;
            visibility: hidden;
        }
        .house-info li{
            float: left;
            line-height: 26px;
            color: #959ea7;
            background: url("images/x_line.png") no-repeat left top;
            padding-left: 11px;
            width: 260px;
            box-sizing: border-box;
        }
        .house-info .li-1{
            background-image: none!important;
        }
        .h-icon1,.h-icon2,.h-icon3{
            background: url("images/sprice.png") no-repeat 0 -395px;
        }
        .house-intro h6{
            padding-left: 40px;
            height: 34px;
            line-height: 34px;
            font-size: 24px;
            font-weight: normal;
            padding-bottom: 5px;
            color: #2c3e50;
        }
        .h-icon2{
            background-position: 0 -443px;
        }
        .h-icon3{
            background-position: 0 -496px;
        }

        /*        详细信息       */
        .box-white{
            background-color: #fff;
            padding: 25px 0 25px 15px;
        }
        .box-white:after{
            content: "";
            clear: both;
            display: block;
        }
        .box-white-lt{
            float: left;
            width: 90px;
            text-align: center;
        }
        .box-white-rt{
            float: left;
            width: 650px;
            padding-left: 45px;
            font-size: 14px;
            color: #2c3e50;
        }
        .box-white span{
            display: inline-block;
            margin-top: 10px;
        }
        .box-white-lt p{
            font-size: 22px;
            color: #a5b0ba;
            padding-top: 15px;
        }
        .info-icon1,.info-icon2,.info-icon3,.info-icon4 {
            background: url("images/sprice.png") no-repeat 0 -1719px;
        }
        .info-icon1{
            width: 46px;
            height: 60px;
        }
        .info-icon2{
            background-position: 0 -1974px;
            width: 60px;
            height: 58px;
        }
        .info-icon3{
            background-position: 0 -1845px;
            width: 50px;
            height: 60px;
        }
        .info-icon4{
            background-position: 0 -1909px;
            width: 52px;
            height: 60px;
        }

        /*            box-white-rt         */
        .box-white-rt .box-mid{
            display: table-cell;
            vertical-align: middle;
            height: 114px;
        }
        .box-content li{
            float: left;
            height: 28px;
            line-height: 28px;
            width: 315px;
        }
/*                 房东介绍         */
        .talk{  background-color:#fff;border-top: 2px solid #f5f5f5;  padding-top: 20px;margin-left: 5px; position: relative }
        .fdhead{float: left;width: 70px;  height: 70px;  margin-left: 15px;}
        .fdhead img{border-radius: 35px;width: 100%;height: 100%;}
        .great-fd{position: absolute;top: 22px;left: 72px;z-index: 0;}
        .great-fd img{width: 84px;}
        .rt-w142{float: right;width: 142px;text-align: left;  margin-left: 10px;}
        .rt-w142 a{    display: inline-block;
            width: 80%;
            height: 24px;
            line-height: 24px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;    color: #2c3e50;}
        .rt-w142 h6{font-weight: normal;padding-bottom: 7px;  height: 34px;  line-height: 34px;  font-size: 18px;  color: #2c3e50;}
        .rt-w142 .pl10{    color: #4eb892;font: normal 14px/24px "Microsoft YaHei";}
        .rt-w142 .credit{    display: inline-block;
            background: url("images/sprice.png") no-repeat 0 -546px;
            padding-left: 17px;
            color: #fff;    margin: 0 10px 0 10px;height: 20px;
            line-height: 20px;
            width: 27px;
            font-size: 10px;
            cursor: pointer;}
        .sex{background: url("images/sprice_png24.png")no-repeat 0 -1733px;height: 16px;display: inline-block;width: 16px}
        .talk-pink{    float: left;  width: 100%;  margin: 20px auto 0 15px;  color: #f05b72;  text-align: center;    border-top: 1px solid #f5f5f5;  line-height: 44px;}
        .talk-pink span{ background: url("images/sprice.png") no-repeat 0 -585px;width: 18px;height: 18px;padding-left: 28px;}
        .talk-pink a{    color: #f05b72; }
/*                配套设施         */
        .pt_list li {
            float: left;
            height: 21px;
            line-height: 21px;
            padding-left: 30px;
            width: 185px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            margin-bottom: 12px;
        }
        .s_ico_no, .s_ico_brush, .s_ico_soap, .s_ico_towel, .s_ico_toiletries, .s_ico_toiletpaper, .s_ico_shower, .s_ico_hotbathtub, .s_ico_slippers, .s_ico_tv, .s_ico_aircondition, .s_ico_washer, .s_ico_icebox, .s_ico_drinking, .s_ico_wirelessnetwork, .s_ico_wirednetwork, .s_ico_heater, .s_ico_elevator, .s_ico_accesssys, .s_ico_parkingspace, .s_ico_smoke, .s_ico_iscook, .s_ico_pet, .s_ico_meet {
            background: url("images/sprice.png") no-repeat 0 -682px;
        }
        .s_ico_no {
            background-position: 0 -2264px;
            color: #c2cacd;
        }
        .s_ico_shower {
            background-position: 0 -850px;
        }
        .s_ico_wirelessnetwork {
            background-position: 0 -1056px;
        }
        .s_ico_soap{ background-position:0 -710px;}
        .s_ico_towel{ background-position:0 -734px;}
        .s_ico_toiletries{ background-position:0 -763px;}
        .s_ico_toiletpaper{ background-position:0 -793px;}
        .s_ico_shower{ background-position:0 -850px;}
        .s_ico_hotbathtub{ background-position:0 -879px;}
        .s_ico_slippers{ background-position:0 -822px;}
        .s_ico_tv{ background-position:0 -908px;}
        .s_ico_aircondition{ background-position:0 -934px;}
        .s_ico_washer{ background-position:0 -964px;}
        .s_ico_icebox{ background-position:0 -994px;}
        .s_ico_drinking{ background-position:0 -1025px;}
        .s_ico_wirednetwork{ background-position:0 -1080px;}
        .s_ico_heater{ background-position:0 -1105px;}
        .s_ico_elevator{ background-position:0 -1132px;}
        .s_ico_accesssys{ background-position:0 -1164px;}
        .s_ico_parkingspace{ background-position:0 -1195px;}
        .s_ico_smoke{ background-position:0 -1229px;}
        .s_ico_iscook{ background-position:0 -1260px;}
        .s_ico_pet{ background-position:0 -1289px;}
        .s_ico_meet{ background-position:0 -1319px;}

        .open, .stop {
            color: #f05b72;
            cursor: pointer;
            margin-top: 8px;
        }
        .open span, .stop span {
            display: inline-block;
            background: url("images/sprice.png") no-repeat 0 -640px;
            width: 8px;
            height: 8px;
            margin-left: 4px;
        }
        .stop span{
            background-position: 0 -670px;
        }

        /*        收藏+分享          */
        .share-collection{
            padding-top: 48px;
        }
        .share-collection li{
            float: left;
            border-right: 1px solid #dadedf;
            height: 24px;
            line-height: 24px;
            text-align: center;
            width: 100px;
            font-size: 14px;
        }

        .pinfen{
            border: none!important;
        }
        .share-collection li a{
            height: 24px;
            color: #2c3e50;
        }
        .collection-pink{
            color: #f05b72!important;
        }
        .share,.collection,.collection-pink{
            background: url("images/sprice.png") no-repeat 0 -152px;
            padding-left: 30px;
            margin-left: 15px;
        }
        .share{
            background-position: 0 -234px;
        }
        .collection-pink{
            background-position: 0 -192px;
        }


        /*                要求和退订       */
        .bg_box{
            background: #fff;
            margin-top: 30px;
        }
        .clause_box{
            border-bottom: 1px solid #eee;
            padding-bottom: 20px;
            margin: 0 70px 0 70px;
            font: normal 14px/24px "Microsoft YaHei";
            color: #2c3e50;
        }
        .clause_box h5{
            font-size: 22px;
            color: #a5b0ba;
            padding: 25px 0 15px;
            font-weight: normal;
        }
        .zhima_deposit_noico {
            display: inline-block;
            height: 14px;
            line-height: 14px;
            color: #30c3a6;
            margin-left: 8px;
            cursor: pointer;
        }
        .border_none1 {
            border-bottom: none!important;

        }
        .order_h{ height:48px; margin-top:88px;margin-left: -40px;/*临时加的*/}
        .order_bar{ position:relative; height:2px; background:#f05b72;}
        .order_bar ul{ height:2px;}
        .order_bar ul li{ width:235px; float:left; height:2px; background:#30c3a6;}
        .order_tip1,.order_tip2{ position:absolute; top:-66px; background:url("images/sprice.png") no-repeat 0 -2110px; width:140px; height:53px; padding:5px 10px 0; color:#fff; line-height:20px;}
        .order_tip2{ background-position:0 -2170px;}
        .pos_1,.pos_2,.pos_3,.pos_4,.pos_5,.pos_6{ position:absolute; }
        .pos_1{left:40px;}
        .pos_2{ left:275px;}
        .pos_3{ left:508px;}
        .pos_4{ left:177px;}
        .pos_5{ left:410px;}
        .pos_6{ left:640px;}
        .day_tip{ position:absolute; width:130px; text-align:center; top:-8px; height:45px;}
        .day_tip span{ display:inline-block;}
        .point1,.point2,.point3{ background:url("images/sprice.png") no-repeat 0 -1518px; width:17px; height:17px;}
        .point2{ background-position:-27px -1518px;}
        .point3{ background-position:-58px -1518px;}

        /*                   猜你喜欢               */
        footer{
            font: normal 14px/24px "Microsoft YaHei";
        }
        footer .maybeUlove{
            width: 1250px;
            margin: 0 auto;
        }
        .maybeUlove h4{
            padding: 20px 10px;
            font-size: 18px;
            height: 32px;
            line-height: 32px;
            font-weight: normal;
        }
        footer .maybeUlove li{
            float: left;
            width: 300px;
            height: 274px;
            margin-left: 10px;
            line-height: 26px;
        }
        .like-img{
            position: relative;
            height: 200px;
        }

        .like-img span{
            position: absolute;
            bottom: 0;
            left: 0;
            color: #fff;
            background-color: #000;
            filter: alpha(opacity=80);
            line-height: 48px;
            opacity: 0.8;
            font-size: 18px;
            padding: 0 10px;
        }
        footer li img{
            width: 300px;
            height: 200px;
        }
        .house-add{
            color: #2c3e50;
            padding: 10px 0;

        }
        .km{
            color: #959ea7;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        /*                 底部         */
        .footer{
            width: 100%;
            font: 12px/1.5 Verdana , Arial, Helvetica, sans-serif;
            padding-top: 35px;
        }
        .footer-nav{
            width: 955px;
            margin: 20px auto;
            text-align: center;
            overflow: hidden;
        }
        .footer-nav ul{
            overflow: hidden;
            text-align: left;
            margin-bottom: 20px;
        }
        .footer-nav li{
            float: left;
            width: 57px;
            margin: 0 32px 0 0;
            color: #959ea7;
            line-height: 24px;
        }
        .footer-nav .width-280{
            width: 282px!important;
        }
        .footer-nav .guide{
            background: url("images/icon_head.png") no-repeat;
            background-position: 8px -258px;
            padding-top: 50px;
            display: inline-block;
            color: #959ea7;
            font-size: 14px;
        }
        .footer-nav .fd{
            background-position: -44px -258px;
        }
        .footer-nav a{
            color: #959ea7;
        }
        .width-280 a{
            margin-right: 14px ;
        }
        .kefu{
            width: 173px !important;
            white-space: nowrap;
            font-size: 12px;
        }
        .tel{
            display: inline-block;
            color: #fff !important;
            height: 22px;
            line-height: 22px;
            padding: 0 6px;
            background: #f05b72;
            margin-bottom: 5px;
            border-radius: 2px;
            cursor: pointer;
        }
        .tel i{
            display: inline-block;
            width: 14px;
            height: 14px;
            background-image: url(images/xz_online_kf.png);
            background-repeat: no-repeat;
            background-position: 0 0;
            vertical-align: middle;
            margin-right: 4px;
        }
        /*             回到顶部              */
        .suspension{width: 277px;height: 46px;position: fixed;bottom: 12px;right: 30px;z-index: 7000;}
        .suspension-fl{background: url("images/gj_icons.png") no-repeat 0 -380px;float: left;width: 230px;height: 45px;overflow: hidden;}
        .suspension-fl li{width: 46px;height:44px;line-height: 44px;float:left;text-align: center}
        .suspension-fl span{width: 20px;height: 20px;margin-top: 14px;display: inline-block;}
        .susItem-1 span{background: url("images/gj_icons.png") no-repeat 0 0;}
        .susItem-2 span{background: url("images/gj_icons.png") no-repeat 0 -21px;}
        .susItem-3 span{background: url("images/gj_icons.png") no-repeat 0 -42px;height: 22px;}
        .susItem-4 span{background: url("images/gj_icons.png") no-repeat 0 -65px;height: 22px;}
        .susItem-5 span{background: url("images/gj_icons.png") no-repeat 0 -86px;height: 22px}
        .suspension-fr{float: right;width: 46px;height: 44px;line-height: 44px;text-align: center;background-color: #bbb;opacity: 0.9;border-radius: 6px;margin-top: 1px;}
        .suspension-fr a{background: url("images/gj_icons.png") no-repeat 0 -108px;width: 20px;height: 20px;margin-top: 12px;display:inline-block; }
    </style>

</head>
<body>
<%
  UserInfo user=(UserInfo)session.getAttribute("currentUser");
  String strInfo=(String)session.getAttribute("info");
%>
<!--                导航条              -->
<header>
    <div class="head">
        <div class="logo"><a href="index.jsp"></a></div>
        <div class="nav">
            <ul>
            <% if (user==null){ %>
                <li><a id="login" style="cursor:point;">登录</a></li>
                <li><a href="register.jsp">注册</a></li>
                
             <%
             session.removeAttribute("currentUser");
             session.removeAttribute("info");
	              }
	           else
	               {
            %> 
            	<li><a href=""><%=user.getName()%></a></li>
                <li><a href="personal.jsp">个人中心</a></li>
                <li><a href="fysearch.jsp">房源搜素</a></li>
                <li><a href="updatePass.jsp">修改密码</a></li>
                <li><a href="logout.jsp?">退出</a></li>
            <% 
              } 
           %>  
            </ul>
        </div>
    </div>
</header>

<!--                房源内容              -->
<sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;DatabaseName=share"
     user="sa"  password="123456"/>
     
 <sql:query dataSource="${snapshot}" var="result">
		SELECT * from fy where houseID ='${param.houseID}'
</sql:query>
 <%--    <c:out value="${result}"/>
     --%>
     <div class="house-rs clearfix">
<c:forEach var="row" items="${result.rows}">


    <div class="house-lt">
        <div class="house-nav">
            <h4><c:out value="${row.hName}"/></h4>
            <p><c:out value="${row.address}"/></p>
            <div></div>
        </div>
<!--                轮播图              -->
        <div class="pc-slide" >
        <div class="view">
            <div class="swiper-container">
                <a class="arrow-left" href="#"></a>
                <a class="arrow-right" href="#"></a>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="" target="_blank"><img src="images/house.jpg" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="" target="_blank"><img src="images/house.jpg" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="" target="_blank"><img src="images/house.jpg" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="" target="_blank"><img src="images/house.jpg" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="" target="_blank"><img src="images/house.jpg" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="" target="_blank"><img src="images/house.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="preview">
            <a class="arrow-left" href="#"></a>
            <a class="arrow-right" href="#"></a>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide active-nav">
                        <img src="images/s1.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/s2.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/s3.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/s4.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/s5.jpg" alt="">
                    </div>
                    <div class="swiper-slide slide6">
                        <img src="images/s6.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--               house介绍            -->
        <div class="house-intro">
            <ul class="house-info">
                <li class="li-1"><h6 class="h-icon1">整套出租</h6><p>房屋面积：<c:out value="${row.hsize}"/>平米<br>房屋户型：<c:out value="${row.harea}"/></p></li>
                <li><h6 class="h-icon2">宜住2人</h6><p>房客独享整套房屋</p></li>
                <li><h6 class="h-icon3">共一张</h6><p>双人床：1.8m宽 × 2m长 ×1张</p></li>
            </ul>
            <div class="box-white">
                <div class="box-white-lt">
                    <span class="info-icon1"></span>
                    <p>入住须知</p>
                </div>
                <div class="box-white-rt">
                    <div class="box-mid">
                        <ul class="box-content clearfix">
                            <li>卫生间：独立卫生间</li>
                            <li>最少入住天数：1天</li>
                            <li>最多入住天数：无限制</li>
                            <li>是否接待境外人士：不接待</li>
                            <li>被单更换：每客一换</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="box-white">
                <div class="box-white-lt">
                    <span class="info-icon2"></span>
                    <p>配套设施</p>
                </div>
                <div class="box-white-rt">
                    <div class="box-peitao" style="height:120px;overflow: hidden">
                        <ul class="pt_list clearfix">
                            <li class="s_ico_shower">热水淋浴</li>
                            <li class="s_ico_wirelessnetwork">无线网络                             </li>
                            <li class="s_ico_aircondition">空调</li>
                            <li class="s_ico_tv">电视 </li>
                            <li class="s_ico_elevator">电梯</li>
                            <li class="s_ico_accesssys">门禁系统  </li>
                            <li class="s_ico_washer">洗衣机</li>
                            <li class="s_ico_icebox">冰箱  </li>
                            <li class="s_ico_parkingspace">停车位  </li>
                            <li class="s_ico_drinking">饮水设备 </li>
                            <li class="s_ico_heater">暖气   </li>
                            <li class="s_ico_slippers">拖鞋    </li>
                            <li class="s_ico_toiletpaper">手纸    </li>
                            <li class="s_ico_brush">牙具      </li>
                            <li class="s_ico_towel">毛巾     </li>
                            <li class="s_ico_toiletries">浴液 洗发水  </li>
                            <li class="s_ico_soap">香皂        </li>
                            <li class="s_ico_iscook">允许做饭          </li>
                            <li class="s_ico_no">浴缸</li>
                            <li class="s_ico_no">有线网络</li>
                            <li class="s_ico_no">允许吸烟</li>
                            <li class="s_ico_no">允许聚会</li>
                            <li class="s_ico_no">允许带宠物</li>
                        </ul>
                    </div>
                    <div class="open" style="display: block">查看全部<span></span></div>
                    <div class="stop" style="display: none">收起<span></span></div>
                </div>
            </div>
            <div class="box-white" style="background-color: #f9f9f9">
                <div class="box-white-lt">
                    <span class="info-icon3"></span>
                    <p>交通情况</p>
                </div>
                <div class="box-white-rt">
                    <div class="box-mid">
                        <p>北京的地铁线路如同蜘蛛网般交叉，地铁没有堵车的烦恼，离地铁近就是王道<br>
                            地铁：7号线百子湾站，A3出口，不用过马路，向东走600米，左手边能看到建行和正大优鲜，左转即到<br>
                            taxi：直接打车到沿海赛洛城a6栋，建议用滴滴软件提前约顺风车，性价比更高<br>
                            去欢乐谷不转地铁3站地，离国贸也只有5公里哦
                        </p>
                    </div>
                </div>
            </div>
            <div class="box-white">
                <div class="box-white-lt">
                    <span class="info-icon4"></span>
                    <p>周边情况</p>
                </div>
                <div class="box-white-rt">
                    <div class="box-mid">
                        <p>作为一个成熟的社区，周边配套设施一定要便捷<br>
                            小区内有24小时便利店，银行，餐饮咖啡馆比比皆是，值得一提的是，周边好吃的品类齐全，川菜，烧烤，日料，西餐，东北菜太多了等你去发现，别放过路边摊～
                        </p>
                    </div>
                </div>
            </div>
        </div>

<!--       要求         -->
        <div class="bg_box" >
            <div class="clause_box" >
                <h5>押金及其他费用</h5>
                <p>押金：500元<a href="http://www.xiaozhu.com/yunying/cashPledgeFree"><span class="zhima_deposit_noico">凭信用免押金 &gt;</span></a>
                    <br>
                    加客：￥0/人，最多加客1人，加客费用线下收取。   房间正常入住2人，最多可加1人，无加收费用，提前告知即可<br></p>
                <div class="clearfix">
                    其他额外费用：1.请您节约水电，出门前检查灯／空调／电视／水龙头是否为关闭状态，否则扣除100元押金。
                    2.如果您做饭，我们提供免费的厨具餐具，大米调料油，请您用餐完毕后将厨房打扫干净恢复原样，为下一位房客的使用提供方便，否则加收100元清洁费。                 </div>
            </div>
            <div class="clause_box">
                <h5>房东对房客的要求</h5>
                <div>
                    以下为房屋守则,请您遵守:<br>
                    1.拒绝黄赌毒及一切违法行为,禁止吸烟。<br>
                    2.不接待外宾<br>
                    3.不要穿鞋踩地毯。<br>
                    4.2层全部长毛地毯,床上请不要吃东西。<br>
                    5.禁止聚会,不要吵闹打扰邻居。<br>
                    6.如需做饭,餐后将厨房恢复原样。<br>
                    7.厨余垃圾,外卖垃圾及时处理,不要过夜,以免产生异味。<br>
                    8.一律登记身份证
                </div>
            </div>
            <div class="clause_box">
                <h5>预订条款</h5>
                <p>
                    订单确认后，在线支付总房款的100%。<br>
                    额外的服务费用不包含在总房租内，由房东线下收取。<br>
                </p>
            </div>
            <div class="clause_box border_none1">
                <h5>退订规则</h5>
                <div class="order_h">
                    <div class="order_bar">
                        <ul class="clearfix">
                            <li></li>
                        </ul>
                        <div class="order_tip1 pos_1">如取消订单，订金全部退还</div>
                        <div class="order_tip2 pos_2">如取消订单，扣除前7天的订金</div>
                        <div class="order_tip2 pos_3">如提前退房，扣除之后7天的订金。</div>
                        <div class="day_tip">
                            <span class="point1"></span>
                            <p id="pos_n_1">预订成功</p>
                        </div>
                        <div class="day_tip pos_4">
                            <span class="point1"></span>
                            <p id="pos_n_2">入住前7天14:00前</p>
                        </div>
                        <div class="day_tip pos_5">
                            <span class="point2"></span>
                            <p id="pos_n_3">入住当天14:00前</p>
                        </div>
                        <div class="day_tip pos_6">
                            <span class="point3"></span>
                            <p id="pos_n_4">退房当天12:00前</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="house-rt" style="position: relative">
        <div style="height: 125px;line-height: 25px;vertical-align: middle">
            <div class="share-collection">
                <ul class="clearfix">
                    <li class="li-collection-pink" style="display: none"><a  class="collection-pink" >已收藏</a></li>
                    <li class="li-collection"><a  class="collection">收藏</a></li>
                    <li class="li-share"><a href="" class="share">分享</a></li>
                    <li class="pinfen">评分：5分</li>
                </ul>
            </div>
        </div>
        <div class="house-price-time" style="position: static;left: 902px;top: 0;width: 340px">
            <div class="price">
                <div class="money">
                    ￥<span><c:out value="${row.price}"/></span>
                </div>
                <div class="meiwan">每晚</div>
            </div>
            <div class="date">
                <div class="date-icon"></div>
                <input class="date-range" type="text" placeholder="入住日期 - 离开日期"/>
                <div class="bt"><a href="">立即预定</a></div>
            </div>
            <div class="white_bg">
                <ul class="cal_box clearfix">
                    <li class="end">今天<br>已租</li>
                    <li class="end">25<br>已租</li>
                    <li class="end">26<br>已租</li>
                    <li class="end">27<br>已租</li>
                    <li class="end">28<br>已租</li>
                    <li class="line_none_r"><a id="showMoreCalendar" href="#">全部<br>日历</a> </li>
                </ul>
            </div>
            <div class="talk clearfix">
                <div class="fdhead"><img src="images/touxiang.jpg" alt=""/></div>
                <div class="great-fd"><img src="images/great_fd.png" alt=""/></div>
                <div class="rt-w142">
                    <h6><a href="">kiki</a><span class="sex"></span></h6>
                    <p><span class="pl10">实名认证</span><span class="credit">792</span></p>
                </div>
                <div class="talk-pink"><span></span><a href="">在线聊天</a></div>
            </div>
        </div>

    </div>


 
</c:forEach>     
</div>
<footer>
    <div class="maybeUlove">
        <h4>猜你喜欢</h4>
        <div>
            <ul class="clearfix">
                <li><a href=""><div class="like-house"><div class="like-img"><img src="images/猜你喜欢.jpg" alt=""/><span>￥498</span></div><p class="house-add">月租天安门国贸四惠地铁口温馨两室...</p><p class="km">距2.0km - 整套出租/2张床/宜住4人 - 4.9分/8条评论</p></div></a></li>
                <li><a href=""><div class="like-house"><div class="like-img"><img src="images/猜你喜欢.jpg" alt=""/><span>￥498</span></div><p class="house-add">月租天安门国贸四惠地铁口温馨两室...</p><p class="km">距2.0km - 整套出租/2张床/宜住4人 - 4.9分/8条评论</p></div></a></li>
                <li><a href=""><div class="like-house"><div class="like-img"><img src="images/猜你喜欢.jpg" alt=""/><span>￥498</span></div><p class="house-add">月租天安门国贸四惠地铁口温馨两室...</p><p class="km">距2.0km - 整套出租/2张床/宜住4人 - 4.9分/8条评论</p></div></a></li>
                <li><a href=""><div class="like-house"><div class="like-img"><img src="images/猜你喜欢.jpg" alt=""/><span>￥498</span></div><p class="house-add">月租天安门国贸四惠地铁口温馨两室...</p><p class="km">距2.0km - 整套出租/2张床/宜住4人 - 4.9分/8条评论</p></div></a></li>
            </ul>
        </div>
    </div>
    <div class="footer">
        <div class="footer-nav">
            <ul>
                <li><a href="" class="guide">房客指南</a></li>
                <li><a href="" class="guide fd">房东指南</a></li>
                <li><span>关于我们</span><a href="">关于小猪</a><a href="">联系我们</a></li>
                <li><span>网站帮助</span><a href="">帮助中心</a><a href="">网站地图</a></li>
                <li class="width-280"><span>网站协议</span><br/><a href="">服务协议</a><a href="">房东规则</a><a href="">房客规则</a><a href="">房源上线标准</a><a href="">隐私保护</a><a
                        href="">版权声明</a><a href="">免责声明</a><a href="">知识产权声明</a><a href="">点评发布规则</a></li>
                <li class="kefu"><span class="tel"><i></i>在线客服</span>
                    <p>客服电话  400 - 010 - 7890</p>
                    <p>客服邮箱  service@xiaozhu.com</p>
                </li>
            </ul>
        </div>
    </div>
</footer>
<!--                      回到顶部                -->
<div class="suspension">
    <ul class="suspension-fl">
        <li class="susItem-1"><span></span></li>
        <li class="susItem-2"><span></span></li>
        <li class="susItem-3"><span></span></li>
        <li class="susItem-4"><span></span></li>
        <li class="susItem-5"><span></span></li>
    </ul>
    <div class="suspension-fr" style="display: none;"><a> </a></div>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/swiper-4.1.0.min.js"></script>

<script>
	//登录跳转回来
	$('#login').click(function(){
            		var url= location.href.split('/')[4];
            		//console.log(url);
            		//获取当前url中的页面地址并且传递到登录界面
            		window.location.href='login.jsp?test='+url; 
            	})
	//如果参数有误或其他原因而没有数据，则跳转搜索页面
	console.log()
	if($('.house-rs').children().length==0){
		window.location.href = 'fysearch.jsp'
	}
	
	
    var viewSwiper = new Swiper('.view .swiper-container', {
        on:{
            slideChangeTransitionStart: function() {
                updateNavPosition()
            }
        }
    })

    $('.view .arrow-left,.preview .arrow-left').on('click', function(e) {
        e.preventDefault()
        if (viewSwiper.activeIndex == 0) {
            viewSwiper.slideTo(viewSwiper.slides.length - 1, 1000);
            return
        }
        viewSwiper.slidePrev()
    })
    $('.view .arrow-right,.preview .arrow-right').on('click', function(e) {
        e.preventDefault()
        if (viewSwiper.activeIndex == viewSwiper.slides.length - 1) {
            viewSwiper.slideTo(0, 1000);
            return
        }
        viewSwiper.slideNext()
    })

    var previewSwiper = new Swiper('.preview .swiper-container', {
        //visibilityFullFit: true,
        slidesPerView: 'auto',
        allowTouchMove: false,
        on:{
            tap: function() {
                viewSwiper.slideTo(previewSwiper.clickedIndex)
            }
        }
    })

    function updateNavPosition() {
        $('.preview .active-nav').removeClass('active-nav')
        var activeNav = $('.preview .swiper-slide').eq(viewSwiper.activeIndex).addClass('active-nav')
        if (!activeNav.hasClass('swiper-slide-visible')) {
            if (activeNav.index() > previewSwiper.activeIndex) {
                var thumbsPerNav = Math.floor(previewSwiper.width / activeNav.width()) - 1
                previewSwiper.slideTo(activeNav.index() - thumbsPerNav)
            } else {
                previewSwiper.slideTo(activeNav.index())
            }
        }
    }
</script>
<!--                     轮播图初始化             -->
<!--
<script>
    var mySwiper = new Swiper ('.swiper-container', {
        direction: 'horizontal',   //水平方向，vertical（垂直方向）
        loop:false,  //循环

        // 如果需要分页器
        pagination: {
            el: '.swiper-pagination',
        },

        // 如果需要前进后退按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        // 如果需要滚动条
        scrollbar: {
            el: '.swiper-scrollbar',
        },

        //自动轮播
        speed:1000,    //速度
        autoplay : {
            delay:3000
        },

        //鼠标形状
        grabCursor:true,
    })
</script>                                 -->
<!--                    点击展开 收起            -->
<script>
    var peitao = document.querySelector(".box-peitao");
    var   open = document.querySelector(".open");
    var   stop = document.querySelector(".stop");

    open.onclick =function(){
      peitao.style.overflow = "visibility";
      peitao.style.height  = 264+'px';
        open.style.display = 'none';
        stop.style.display = 'block';
    };
    stop.onclick =function(){
        peitao.style.overflow = "hidden";
        peitao.style.height  = 120+'px';
        open.style.display = 'block';
        stop.style.display = 'none';
    }; 

/* <!--                   收藏                      --> */

    var yescol = document.querySelector('.li-collection-pink');
    var    col = document.querySelector('.li-collection');
    var  collection = document.querySelector('.collection');
    var colPink = document.querySelector('.collection-pink');

  collection.onclick = function(){
        yescol.style.display = 'block'
        col.style.display ='none'
    }
    colPink.onclick = function(){
        yescol.style.display = 'none'
        col.style.display ='block'
    } 
</script>

<!--            右侧浮动+回到顶部           -->
<script>
    var suspension = document.querySelector('.house-price-time');
    var    backTop = document.querySelector('.suspension-fr');  //取得回到顶部按钮
    var      timer = null;
    //回到顶部
    backTop.onclick = function(){
        //设置定时器
        timer = setInterval(function(){
            var   t = document.documentElement.scrollTop||document.body.scrollTop;
            var speed =Math.floor(t/6);
            document.documentElement.scrollTop = document.body.scrollTop =t-speed-1;
            console.log(t-speed);
            if(t == 0){
                clearInterval(timer);
            }
        },30)

    }

    //回到顶部显示和隐藏
    window.onscroll = function(){

        //获取右侧滚轮距离顶部的距离
        var   t = document.documentElement.scrollTop||document.body.scrollTop;
        if(t >= 200&&t<2180){
            backTop.style.display = 'block';
            suspension.style.position = 'fixed';
            suspension.style.top =0;
            suspension.style.left =903+'px';
        }else{
            backTop.style.display = 'none';
            suspension.style.position = 'static';
        }
        if(t>=2180){
            backTop.style.display = 'block';
            suspension.style.position ='absolute';
            suspension.style.top = 2144+'px';
            suspension.style.left = 0;
        }

    }

</script>
</body>
</html>