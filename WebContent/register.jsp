<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  href="css/basic-sign.css">
<title>注册</title>
</head>
<body style="overflow-y: hidden">
    <div id="register">
        <div class="content">
            <h3>用户注册</h3>
            <div class="register">
                <form action="registerAct.jsp" method="post" onsubmit="return fm_check(this)">
                    <input type="text" class="user" name="username" placeholder="用户名" required/>
                    <input type="password" class="lock" name="password" title="至少4位字符" pattern="[A-Za-z0-9\w]{4,20}" placeholder="密码" id="password1" required />
                    <input type="password" class="lock" name="userpwd" title="至少4位字符" pattern="[A-Za-z0-9\w]{4,20}" placeholder="确认密码" id="password2" required />
                    <input type="text" class="mail" id="email" name="mail" placeholder="邮箱" required/>
                    <input type="submit" value="注册" name="onOk">
                </form>
            </div>
        </div>
    </div>
<!-- js验证两次输入密码是否相同-->
    <script type="text/javascript">
        function fm_check(form){
          var password1 = form.password1.value;
          var password2 = form.password2.value;
          
          var email = form.email.value;
           var emailFormat = /^\d{5,12}@[qQ][qQ]\.(com|cn)$/;
             var strMatch = email.match(emailFormat);
            
          
          if(strMatch == null){
        	  alert("请输入QQ邮箱");
        	  return false;
          }                        
          
            if(password1!=password2)
            {
                alert("两次输入的密码不一致，请重新输入密码！");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>