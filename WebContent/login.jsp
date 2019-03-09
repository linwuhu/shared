<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  href="css/basic-sign.css">
<title>登录</title>
</head>
<body style="overflow-y: hidden">
    <div id="panel">
        <div class="content">
            <div class="login user">
                <h3>用户登录</h3>
                <div class="form-body">
                    <form action="loginAct.jsp" method="post">
                        <input type="text" class="user" name="login_username" placeholder="账号" required />
                        <input type="password" class="lock" name="login_password" placeholder="密码" required/>
                       	<input type ="hidden"  name="Url" id="url"/>
                        <input type="submit" value="登录" name="login"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.min.js"></script>
<script>
	$(function(){
		var current = location.href.split('test=')[1];
		//console.log(current)
		if(current!=''){      
			$('#url').val(current);     //将参数传递到隐藏域
			//console.log($('#url').val())
		}
	})
</script>
</body>

</html>