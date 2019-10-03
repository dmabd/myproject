<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<base href="<%=basePath%>">

<title>登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
		
		function login(){
			document.getElementById("loginform").action="UserAction!login.action";
			document.getElementById("loginform").submit();
			
		}
 	</script>



</head>

<body>
	<div class="header">
		<img src="img/img2/logo.png" id="logo" /> 
		<div class="headerInfo">
			为确保您账户的安全及正常使用，依《网络完全法》相关要求，六月一日起会员账户需绑定手机。如您还未绑定，请尽快完成，感谢你的理解和支持！</div>
		<a href="#"><img src="img/login_header_advise.png" /></a>
	</div>
	<div class="content">
		<div class="login_content">
			 <img src="img/login_body_bg.png" /> 
			<div class="login">
				<span id="loginfont"> 密码登录 </span> <img
					src="img/login_body_smadv.png" id="smimg" /> <img
					src="img/login_body_sm.png" id="smadvimg" />
				<form action="" id="loginform">
					<div class="username_area">
						<img src="img/input_nameimg.png" /> <input type="text"
							name="username" id="username" value="" placeholder="会员名/邮箱/手机号" />
					</div>
					<div class="password_area">
						<img src="img/input_pwdimg.png" /> <input type="password"
							name="password" id="password" value="" />
					</div>
					<input type="hidden" name="type" id="type" value="1" /> <input
						type="button" value="登 录" class="loginbotton" onclick="login()" />
					<br> <a href="UserAction!preRegister.action">如果还未注册请点这里</a>

				</form>


			</div>
		</div>
	</div>
	<div class="footer"></div>

</body>
</html>
