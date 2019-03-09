<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sharedhouse.*" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>共享房屋</title>
    <meta name="viewport" content="width=1349,initial-scale=1,user-scalable=no" />
    <link rel="stylesheet" href="css/ft-carousel.css" />
    <link rel="stylesheet" href="index.css"/>
    <link rel="stylesheet" href="css/cityselect.css"/>
<style>
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
		
		/*   登录后的我    */
    .current{position: relative;}
    .current a.up-down{background: url("images/icon_head.png")no-repeat right -118px;margin-right: 5px;}
    .current div{padding: 10px 0;width:100px;position: absolute;left:-15px;top:40px;background-color: #000;opacity: 0.8;text-align: center}
    .current div a{font-size: 14px;line-height: 34px;}
    .current .person-center{display: none;}
    .current:hover a.up-down{background-position: right -164px;}
    .current:hover .person-center{display: block;}
    
    .table-price{
        position: absolute;
        top: 242px;
        left: 0;
        padding: 0;
        color: #fff;
        background-color: rgba(50,44,39,.9);
        font-weight: normal;
        padding: 4px 10px;
        font-size: 16px;
    }
    .table-title{
        padding: 35px 0;
        text-align: center;
    }
    .table-title h2{
        font-weight: normal;
        font-size: 32px;
        color: #333;
    }
    .table-content{
        width: 1190px;
        margin: 0 auto;
    }
    .table-content ul{
        overflow: hidden;
    }
    .table-content li{
        width: 383px;
        float: left;
        margin: 0 6px;
        position: relative;
    }
    .table-content li .table-img{
        width: 383px;
        height: 300px;
        margin-bottom: 10px;
    }
    .table-content .table-name{
        margin: 10px 0 35px;
        width: 383px;
            overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    }
    .table-content li span{
        font-size: 20px;
        color: #322c27;
        line-height: 30px;
        font-weight: normal;
    }
</style>
</head>
<body>
<%
  UserInfo user=(UserInfo)session.getAttribute("currentUser");
  String strInfo=(String)session.getAttribute("info");
%>
<!--               头部             -->
<div class="header">
    <div class="nav">
        <div class="logo">
            <a href="index.jsp"></a>
            <h1 class="logo-h">链家网</h1>
        </div>
        <div class="nav-list">
            <ul>
            <% if (user!=null){ %>
            <li><a class="not">您好!欢迎</a></li>
            	<li class="current"><a class="up-down"><%=user.getName()%></a>
                    <div class="person-center">
                        <span><a href="personal.jsp?ID=<%=user.getId()%>">个人中心</a></span>
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
                <li><a id="register" href="register.jsp">注册</a></li>
                <li><a id="login">登录</a></li>
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

<!--               轮播图             -->
<div class="example">


    <div class="search">
   <!--  <form method="post" action="fysearch.jsp"> -->
        <div class="city">
            <span class="icon-city"></span>
            <input class="sch-city" name="city" id="citySelect" type="text" placeholder="热门旅游城市"/>
        </div>
        <div class="date">
            <span class="icon-date"></span>
            <input class="sch-date" type="text" id="test1" placeholder="选择日期"/>
        </div>
        	<input type="hidden" name="sou" value="123"/> 
            <input type="button" class="sch-bt" value="搜索房源"/>
<!--         </form>   -->  
    </div>
    <div class="ft-carousel" id="carousel_2">
        <ul class="carousel-inner">
            <li class="carousel-item"><a href=""><img src="img/phpto0.jpeg" alt=""/></a></li>
            <li class="carousel-item"><a href=""><img src="img/photo1.jpg" alt=""/></a></li>
            <li class="carousel-item"><a href=""><img src="img/photo2.jpeg" alt=""/></a></li>
            <li class="carousel-item"><a href=""><img class="bt" src="img/photo3.jpeg" alt=""/></a></li>
        </ul>
    </div>
</div>

<!--               热门旅游城市列表       -->
<div class="hot-city">
    <h1><strong>热门旅游城市</strong></h1>
    <div class="hot-city-list">
        <div class="list-content">
        <!-- <div class="hot-city-listItem"><img src="  xxxxxx    " alt=""/><a href="">xxxxx</a></div>  -->
            <div class="hot-city-listItem"><img src="img/beijing.jpg" alt=""/><a href="">北京</a></div>
            <div class="hot-city-listItem"><img src="img/beijing.jpg" alt=""/><a href="">北京</a></div>
            <div class="hot-city-listItem"><img src="img/beijing.jpg" alt=""/><a href="">北京</a></div>
            <div class="hot-city-listItem"><img src="img/beijing.jpg" alt=""/><a href="">北京</a></div>
            <div class="hot-city-listItem"><img src="img/shanghai.jpg" alt=""/><a href="">上海</a></div>
            <div class="hot-city-listItem"><img src="img/shanghai.jpg" alt=""/><a href="">上海</a></div>
            <div class="hot-city-listItem"><img src="img/shanghai.jpg" alt=""/><a href="">上海</a></div>
            <div class="hot-city-listItem"><img src="img/shanghai.jpg" alt=""/><a href="">上海</a></div>
            
        </div>
    </div>
</div>

<!--               热门旅游景点轮播图      -->
<div class="wrap">
    <div class="wrap-title">
        <h2>热门景点</h2>
        <span>告别匆忙，给我们一个理由去旅行</span>
    </div>
    <div class="wrapper">
        <div class="wrap-content">
            <ul style="left: -1110px;">
                <li><a href=""></a><img src="img/beijing2.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dali2.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/kuanz2.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/beijing2.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dali2.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
                <li><a href=""></a><img src="img/dadonghai1.jpg" alt=""/><span>三亚·大东海</span><p>大东海评为国家”4A”级景区，是三亚最早被开发的热带滨海度假区，也是离市区最近的海湾。</p></li>
            </ul>
        </div>
        <a class="arrow-pre"></a>
        <a class="arrow-next"></a>
    </div>
</div>

<div class="table">
    <div class="table-title">
        <h2>房源推荐</h2>
    </div>
    <div class="table-content">
        <ul>
            <li>
                <div class="table-img"><a href=""><img src="img/table1.jpg" alt=""/></a></div>
                <div class="table-price">￥555</div>
                <div class="table-name"><a href=""><span>广州•珠江新城·猎德地铁上盖酒SDFSFDSDFSFSFSFSFSFSFSFSFSFSFSF</span></a></div>
            </li>
            <li>
                <div class="table-img"><a href=""><img src="img/table1.jpg" alt=""/></a></div>
                <div class="table-price">￥555</div>
                <div class="table-name"><a href=""><span>广州•珠江新城·猎德地铁上盖酒...</span></a></div>
            </li>
            <li>
                <div class="table-img"><a href=""><img src="img/table1.jpg" alt=""/></a></div>
                <div class="table-price">￥555</div>
                <div class="table-name"><a href=""><span>广州•珠江新城·猎德地铁上盖酒...</span></a></div>
            </li>
            <li>
                <div class="table-img"><a href=""><img src="img/table1.jpg" alt=""/></a></div>
                <div class="table-price">￥555</div>
                <div class="table-name"><a href=""><span>广州•珠江新城·猎德地铁上盖酒...</span></a></div>
            </li>
            <li>
                <div class="table-img"><a href=""><img src="img/table1.jpg" alt=""/></a></div>
                <div class="table-price">￥555</div>
                <div class="table-name"><a href=""><span>广州•珠江新城·猎德地铁上盖酒...</span></a></div>
            </li>
            <li>
                <div class="table-img"><a href=""><img src="img/table1.jpg" alt=""/></a></div>
                <div class="table-price">￥555</div>
                <div class="table-name"><a href=""><span>广州•珠江新城·猎德地铁上盖酒...</span></a></div>
            </li>
        </ul>
    </div>
</div>
<!--               尾部                   -->
<footer>
    <div class="footer">
        <ul>
            <li class="pl60 w30">
                <h3 class="f16 mb10">联系我们</h3>
                <p>客户服务</p>
                <p class="f20">18715001276</p>
                <!--    <p>Email：kefu.duanzu@mayi.com</p>-->
                <p>Email：925735487@qq.com</p>
                <p>商务合作</p>
                <p>QQ：925735487</p>
                <p>Email：yase2014@outlook.com</p>
            </li>
            <li class="pl60 w20">
                <h3 class="f16 mb10">帮助中心</h3>
                <p><a href="/roomauditrule/" target="_blank">房源审核规范</a></p>
                <!--<p><a href="/landoperaterule/" target="_blank">房东经营行为管理规范</a></p>-->
                <p><a href="/supportplan/" target="_blank">房客安心计划</a></p>
                <p><a href="/goodhouseplan/" target="_blank">优质住宿计划</a></p>
                <p><a href="/sitemap/" target="_blank">网站地图</a></p>
                <p><a href="/questions/" target="_blank">房客帮助</a></p>
            </li>
            <li class="pl40 w10">
                <h3 class="f16 mb10">公司信息</h3>
                <p><a rel="nofollow" href="/aboutcompany/" target="">关于蚂蚁</a></p>
                <p><a rel="nofollow" href="/culture/" target="">加入我们</a></p>
                <p><a rel="nofollow" href="/partner/" target="">战略合作</a></p>
                <!-- <p><a rel="nofollow" href="/cleanRecruitInfo/" target="_blank">保洁合作</a></p> -->
                <p><a rel="nofollow" href="http://iyoujia.mayi.com/mayilod/" target="_blank">业主招募</a></p>
                <p><a rel="nofollow" href="/mediareport/" target="_blank">媒体报道</a></p>
                <p><a rel="nofollow" href="/agreement/" target="_blank">服务协议</a></p>
                <p><a rel="nofollow" href="/privacypolicy/" target="_blank">隐私政策</a></p>
                <p><a rel="nofollow" href="/webdisclaimer/" target="_blank">免责声明</a></p>
            </li>
            <li class="pl80 w20">
                <!-- 四元组控制下载元素显示情况 -->
                <h3 class="f16 mb10">APP下载</h3>
                <p><img class="mt10 app_download_qr" style="width:104px;" src="http://staticnew.mayi.com/resourcesWeb/v201510/images/commom/app.jpg"></p>
                <p><a class="app mt10 t-center" rel="nofollow" href="/download/android/update" >Android下载</a></p>
                <p><a class="app mt10 t-center" rel="nofollow" href="/download/ios/update" target="_blank" >iOS下载</a></p>
            </li>
            <li class="w20">
                <h3 class="f16 mb10">关注我们</h3>
                <p class="fl mr20 cursorpt showinfo"><img src="//staticnew.mayi.com/resourcesWeb/v201510/images/commom/weixin_logo.png"></p>
                <p class="cursorpt"><img src="//staticnew.mayi.com/resourcesWeb/v201510/images/commom/xinlang_logo.png"  onclick="sinaWeibo();"></p>
            </li>
        </ul>
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


<!--       顶部轮播js       -->
<script src="js/jquery.min.js"></script>
<script src="js/ft-carousel.min.js"></script>
<script src="laydate/laydate.js"></script> <!-- 日期选择器 -->
<script src="js/cityselect.js"></script>
<script>
    //city选择器
    var test=new Vcity.CitySelector({input:'citySelect'});

    //执行一个laydate实例
    laydate.render({
        elem: '#test1' //指定元素
        ,range: true
    });
</script>
<script type="text/javascript">
    $("#carousel_1").FtCarousel();

    $("#carousel_2").FtCarousel({
        index: 1,
        auto: false

    });

    $("#carousel_3").FtCarousel({
        index: 0,
        auto: true,
        time: 3000,
        indicators: false,
        buttons: true
    });
</script>


<!--       列表展示轮播js(无限循环需要在轮播图列表的头尾加上重复的图)    -->
<script>
    var x = document.querySelector('.wrap-content ul');
    var pre = document.querySelector('.arrow-pre');
    var next = document.querySelector('.arrow-next');

    function animate(offset) {
        var listLeft = parseInt(x.style.left) + offset;
        var time = 900;
        var inteval = 1;
        var speed = offset / ( time / inteval);

        function go() {
            if ((speed < 0 && listLeft < parseInt(x.style.left) )|| (speed > 0 && listLeft > parseInt(x.style.left))) {
                x.style.left = parseInt(x.style.left) + speed + 'px';
                setTimeout(go, inteval);
            }
            else {
                x.style.left = listLeft + 'px';
                if (listLeft > -1110) {
                    x.style.left = -3330 + 'px';
                }
                if (listLeft < -3330) {
                    x.style.left = -1110 + 'px';
                }
            }
        }
        go();
    }
    pre.onclick = function(){
        animate(-1110);
    };
    next.onclick = function(){
        animate(1110);
    };
</script>
<!--         回到顶部         -->
<script>
    var backTop = document.querySelector('.suspension-fr');
    var timer = null;   //定义一个定时器

    //点击回到顶部按钮  触发事件
    backTop.onclick = function(){
        //设置定时器
        timer = setInterval(function(){
            var top = document.documentElement.scrollTop||document.body.scrollTop;
            var speed = Math.floor(top/6);
            document.documentElement.scrollTop = document.body.scrollTop = top-speed-1;
            console.log(top-speed);
            if(top == 0){
                clearInterval(timer);
            }
        },30);
    }
    //回到顶部显示和隐藏
    window.onscroll = function() {
        var top = document.documentElement.scrollTop||document.body.scrollTop;
        if( top>=300){
            backTop.style.display = 'block'
        }else{
            backTop.style.display ='none'
        }
    }
</script>
<script>
            	$('#login').click(function(){
            		var url= location.href.split('/')[4];
            		//console.log(url);
            		//获取当前url中的页面地址并且传递到登录界面
            		window.location.href='login.jsp?test='+url; 
            	});
            	$('input[value="搜索房源"]').click(function(){
            		var city = $('#citySelect').val();
            		sessionStorage.setItem('city', city);
            		var address= city.substring(0,city.length-1);   //去掉“市”
            		console.log(address);
            		var searchUrl = encodeURI("fysearch.jsp?city="+address);//encodeURIComponent&encodeURI
            		console.log(searchUrl);
            		//alert('123')
            	window.location.href=searchUrl
            	});
 </script>	
</body>
</html>