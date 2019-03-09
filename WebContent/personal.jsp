<%@ page import="sharedhouse.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>个人中心</title>
<style>
        *{  margin: 0;  padding: 0;  }
        a{text-decoration: none}

        ul,li { list-style-type: none;}
        .clearfix:after{
            content: "";
            clear: both;
            display: table;
        }
        .header{
            width: 100%;
            background-color: #000;
        }
        .nav{
            width: 1080px;
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

        .current{position: relative;}
        .current a.up-down{background: url("img/icon_head.png")no-repeat right -118px;margin-right: 5px;}
        .current div{z-index: 99;padding: 10px 0;width:100px;position: absolute;left:-15px;top:40px;background-color: #000;opacity: 0.8;text-align: center}
        .current div a{font-size: 14px;line-height: 34px;}
        .current .person-center{display: none;}
        .current .person-center a{    color: #fff;  display: block;  font-size: 14px;  padding: 0 10px;}
        .current:hover a.up-down{background-position: right -164px;}
        .current:hover .person-center{display: block;}

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
             color: #1abc9c;
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
            color: #fff;
        }
        .list li>span.nofill{
            color: #c2cacd;
            font-size: 14px;
        }

        .fr{float: right}
        .info{width: 1080px;margin: 0 auto;}
        .info .border{border: 1px solid #eee;}
        .info .content{padding: 0 20px}
        .info .content .title{    border-bottom: 1px solid #eee;height: 52px;line-height: 52px;color: #30c3a6;}
        .title>span{    font-size: 14px;color: #959ea7;font-weight: normal;margin-left: 20px;}
        .title>a{color: #f05b72;text-decoration: none;}
        .list ul{padding: 20px 0}
        .list ul li{font-size: 18px;height: 50px;line-height: 50px;vertical-align: middle;padding-left: 10px;}
        .list li>label{color:#959ea7;margin-right: 20px}
        .list li>span{margin-right: 20px;color: #2c3e50;}
        .list li>a{color: #f05b72;text-decoration: none;cursor: pointer}
        .id-info,.shouquan-info{margin-top: 20px}
        .box{padding: 0 0 10px 10px;line-height: 26px;}
        .bottom{border-bottom: 1px solid #eee}
        .sec-title{height: 50px;line-height: 50px;}
        .box>p{font-size: 14px;color: #959ea7;}
        .box>a{font-size: 14px;color: #f05b72;text-decoration: none;}
        .box li{float: left;  width: 183px; line-height: 22px;}
        .det{float: left;width: 110px;padding: 3px 0 0 20px;font-size: 14px;}
        .det>a{color: #f05b72;}
        .qq,.wechat,.xinlan{float: left;background: url(img/data_sprite.png) no-repeat ;width: 50px; height: 50px;}
        .qq{background-position:  0 0;}
        .xinlan{    background-position: 0 -64px;}
        .wechat{    background-position: 0 -128px;}

        .position{position: relative;}
        .head-photo{width: 150px;height: 150px;position: absolute;cursor: pointer; right: 20px;bottom: 20px;}
        img{width: 100%;height: 100%}
        .head-photo>div{position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #fff;
            font-size: 14px;
            font-weight: bold;
            background: rgba(0,0,0,0.7);}

        /*遮罩层*/
        .shade{
            width: 1366px;
            height: 1712px;
            z-index: 999;
            background: none 0px 0px repeat scroll rgb(0, 0, 0);
            opacity: 0.5;
        }
        .overlay{position: absolute;left: 0;top: 0;}

        /*用户名修改*/
        .username{width: 550px;}
        /*面包屑*/
        .nav-bar{
            font-size: 12px;
            color: #959ea7;
            line-height: 22px;
            height: 22px;
            padding-bottom: 20px;
        }
</style>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="layer/layer.js"></script>
</head>
<body>
<%-- <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;DatabaseName=share"
     user="sa"  password="123456"/>
     
     <!-- 修改用户名 -->
     <sql:update dataSource="${snapshot}" var="count">
  UPDATE 用户表 SET 用户名 = '${param.name}' WHERE 用户ID = ?
  <sql:param value="${param.ID}" />
</sql:update>
<sql:query dataSource="${snapshot}" var="result">
		SELECT * from 用户表   WHERE 用户ID = ?
		<sql:param value="${param.ID}" />
</sql:query> --%>

<%
  UserInfo user=(UserInfo)session.getAttribute("currentUser");
  String strInfo=(String)session.getAttribute("info");
%>
<!--          头部        -->

<div class="header">
    <div class="nav clearfix">
        <div class="logo">
            <a href="index.jsp"></a>
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
                <li><a href="">我的订单</a></li>
                <li><a href="personal.jsp">个人中心</a></li>
                <li><a href="" class="fyfb">免费发布房源</a></li>
                <%
              }
           else
               {
            %>  
                <li><a href="register.jsp">注册</a></li>
                <li><a href="login.jsp">登录</a></li>
                <li><a href="" class="fyfb">免费发布房源</a></li>
                <% 
               session.removeAttribute("currentUser");
               session.removeAttribute("info");
              } 
           %>  
            </ul>
        </div>
    </div>
</div>
<br/>
<br/>
<% if (user!=null){ %>
<div class="info">
    <div class="nav-bar">我是房客<span> ></span>个人中心</div>
    <div class="basic-info border">
        <div class="content">
            <h4 class="title">基本信息</h4>
            <div class="list position">
                <ul>
                <input class="user_id" type="hidden" value="<%=user.getId()%>">
<%--                 
                <c:forEach var="row" items="${result.rows}">
				<c:out value="${row}"/>
      <li><label>用户名：</label><span id="nickname"><c:out value="${row.用户名}"/></span><a id="name_edit">修改</a></li>
                    <li><label>手机号码：</label><span>18715001276</span><a id="tel_edit">修改</a></li>
                    <li><label>邮箱：</label><span><c:out value="${row.Email}"/></span><a id="email_edit">修改</a></li>
                
</c:forEach> --%>
                    <li><label>用户名：</label><span id="nickname"><%=user.getName()%></span><a id="name_edit">修改</a></li>
                    <li><label>手机号码：</label><span>18715001276</span><a id="tel_edit">修改</a></li>
                    <li><label>邮箱：</label><span><%=user.getEmail()%></span><a id="email_edit">修改</a></li>
                </ul>
                <div class="head-photo">
                    <img src="https://image.xiaozhustatic1.com/21/8,0,92,8867,260,260,a9349e76.jpg">
                    <div>
                        <a href="" style="color: #fff">编辑头像</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="id-info border">
        <div class="content">
            <h4 class="title">身份信息<span>仅用于必要的安全环节，其他情况下将为您严格保密</span><a class="fr" id="userinfo_edit">编辑</a></h4>
            <div class="list">
                <ul>
                    <li><label>真实姓名：</label><span></span></li>
                    <li><label>身份证号码：</label><span></span></li>
                    <li><label>籍贯：</label><span></span></li>
                    <li><label>出生日期：</label><span></span></li>
                    <li><label>性别：</label><span></span></li>
                    <li><label>教育：</label><span></span></li>
                    <li><label>工作：</label><span></span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="shouquan-info border">
        <div class="content">
            <h4 class="title">授权信息</h4>
            <div class="box bottom">
                <div class="sec-title">芝麻信用授权</div>
                <p>芝麻信用是依法成立的独立信用评估及管理机构。授权后得到分数越高，代表信用越好。</p>
                <a href="">立即授权></a>
            </div>
            <div class="box">
                <div class="sec-title">社交绑定信息</div>
                <p>绑定后，您可以用社交网络账号直接登录小猪了！</p>
                <ul class="clearfix" style="padding: 20px 0 0 0">
                    <li class="clearfix"><div class="qq"></div><div class="det"><p>我的QQ</p><a href="">立即绑定></a></div></li>
                    <li class="clearfix"><div class="xinlan"></div><div class="det"><p>我的新浪微博</p><a href="">立即绑定></a></div></li>
                    <li class="clearfix"><div class="wechat"></div><div class="det"><p>我的微信</p><a href="">立即绑定></a></div></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%
              }
           else
               {
            %>  
                <div style="margin-left:100px">你还未登录，请等待3秒，将跳转到登录页</div>
                <% 
                 
               session.removeAttribute("currentUser");
               session.removeAttribute("info");
               response.setHeader("refresh","3;URL=login.jsp");
              } 
           %>  

<!--  遮罩层   -->
<!--<div class="shade overlay"></div>-->

<!--   用户名修改 -->

<script>
    /*var nofill = $('.list li>span');
    console.log(nofill.html()[8])
    console.log(nofill[2].innerText) // 925735487@qq.com
    //console.log(nofill.siblings('label')[1]) // <label>手机号码：</label>
    for(var i=0;i<nofill.length;i++){
        /!*if(nofill[i].text()!==''){
            nofill[i].html("未填写")
        }*!/
        //console.log(nofill.siblings('label')[i])
        if(nofill[i].innerText == ''){
            nofill[i].innerText = "未填写"
            nofill[i].addClass("nofill")
        }
    }*/

    $('.list li>span').each(function(){
        if($(this).text() == ''){
            $(this).text("未填写")
            $(this).addClass('nofill')
        }
    })
    //获取用户ID
    
	var id= $('.user_id').val()

    /*弹窗*/
    $('#name_edit').on('click', function(){
        layer.prompt({
            title: '编辑用户名',
           
            formType: 0 ,   //value 有 1和2
            btn:['保存','取消'],  //默认为确定，取消
            /* yes: function(index, layero){
                //按钮【按钮一】的回调
				console.log(index);
                layer.close(index);
            } */
        }, function(pass, index){
           //alert(pass); //得到value
           //alert(id);
			 var name ='<form id="form1" action="updateAct.jsp" method="post">'
			+'<input type="text" name="new_name" value="'+pass+'"/>'
			+'<input type="text" name="user_id" value="'+$('input[type="hidden"]').val()+'"/>'
			+'<input type="submit" value="修改密码" name="updateName"></form>'
                $('body').after(name); 
			$("input[name='updateName']").trigger("click");
			
 			
// 	$.ajax({
// 				url : 'updateAct.jsp',
// 				method : 'post',
// 				data : {
// 					name : pass,
// 					id : $('input[type="hidden"]').val()
// 				},
// 				success : function() {
// 					console.log(pass + $('input[type="hidden"]').val())
// 					 window.location.href ='updateAct.jsp' 
// 					    layer.close(index); 
// 				}
// 			})

		});
	});
	$('#tel_edit').on('click', function() {
		layer.prompt({
			title : '编辑手机号码',
			formType : 0, //value 有 1和2
			btn : [ '保存', '取消' ], //默认为确定，取消
		/* yes: function(index, layero){
		    //按钮【按钮一】的回调
		    //alert("fuck")

			console.log(index);
		    layer.close(index); layer.msg('hello'); 
		} */
		}, function(pass, index) {
			// alert(pass); //得到value

			layer.close(index);

		});
	});
	$('#email_edit').on('click', function() {
		layer.prompt({
			title : '编辑邮箱',
			formType : 0, //0-文本框,1-密码框，2-自定义文本框

			btn : [ '保存', '取消' ]
		//默认为确定，取消

		}, function(email, index) {
			//alert(email); //得到value
			/*验证*/
			reg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
			if (!reg.test(email)) {
				layer.msg('请输入正确的邮箱格式')
			} else {
				//
				var name ='<form id="form1" action="updateAct.jsp" method="post">'
					+'<input type="text" name="new_email" value="'+email+'"/>'
					+'<input type="text" name="user_id" value="'+$('input[type="hidden"]').val()+'"/>'
					+'<input type="submit" value="修改密码" name="updateEmail"></form>'
		                $('body').after(name); 
					$("input[name='updateEmail']").trigger("click");
					console.log(name);
				layer.close(index);
			}
			
			//
			

		});
	});
	/*   身份信息  */
	/*$('#userinfo_edit').on('click', function(){
	    layer.prompt({
	        title: '编辑身份信息',
	        btn:['保存','取消'],  //默认为确定，取消
	        content:'<div id="" class="layui-layer-content"><input type="text" class="layui-layer-input realname" value=""><input type="text" class="layui-layer-input realname" value=""></div>'
	    }, function(email, index){
	        //   alert(pass); //得到value
	        /!*验证*!/
	        reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
	        if(!reg.test(email)){
	            layer.msg('请输入正确的邮箱格式')
	        }else{layer.close(index);}
	    });
	});*/
</script>
<!-- <script>
            	$('#login').click(function(){
            		var url= location.href.split('/')[4];
            		//console.log(url);
            		//获取当前url中的页面地址并且传递到登录界面
            		window.location.href='login.jsp?test='+url; 
            	})
 </script>	 -->
</body>

</html>