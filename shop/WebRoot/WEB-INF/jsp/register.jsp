<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	<link rel="stylesheet" type="text/css" href="css/register.css"/>
	<script type="text/javascript">
		function register() {
			var passwd = document.getElementById("password").value;
			var passwdD= document.getElementById("sure").value;
			if(passwd==passwdD){
				document.getElementById("loginform").action="UserAction!register.action";
				document.getElementById("loginform").submit();
			}
		}
	</script>



  </head>
  
  <body>
    <div class="header">
			<img src="img/logo.png" id="logo"/>
			<div class="headerInfo">
				为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机。如您还未绑定，请尽快完成。感谢您的理解及支持！
			</div>
		</div>
		<div class="content">
			<div class="login_content">
				<img src="img/login_body_bg.png"/>
				<div class="login">
					<span id="loginfont">
						用户注册
					</span>
					<form action="" id="loginform">
						<div class="username_area">

							<input type="text" name="r_username" id="username" value="" placeholder="会员名/邮箱/手机号"/>
						</div>
						<div class="password_area">

							<input type="password" name="r_password" id="password" value="" placeholder="请输入密码"/>
						</div>
						<div class="sure">

							<input type="password" name="r_pass_confilm" id="sure" value=""  placeholder="再次输入密码"/>
						</div>
	
						<input type="hidden" name="r_type" id="r_type" value="1" />
						
						<input type="button" value="注 册" class="login_button" onclick="register()"/>
					</form>
				</div>
			</div>
		</div>
		<div class="footer">
			
		</div>
  </body>
</html>
