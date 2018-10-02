<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<style>
.header {
	text-align: center;
}

.header h1 {
	font-size: 200%;
	color: #333;
	margin-top: 30px;
}

.header p {
	font-size: 14px;
}
</style>
</head>
<body>
	<div class="header">
		<div class="am-g">
			<h1>DB design</h1>
			<p>
				数据库课程设计<br />登录页面
			</p>
		</div>
		<hr />
	</div>
	<div class="am-g">
		<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
			<h3>登录</h3>
			<hr>

			<form method="post" class="am-form" action="login.action">

				<label for="account">账号:</label> 
				<input type="account" name="username" id="account" value=""> <br> 
				
				<label for="password">密码:</label>
				<input type="password" name="password" id="password" value=""> <br>


				<label for="type">账号类型:</label>  
				<select name="kind">
					<option value="Customer">客户</option>
					<option value="Carrier">外卖小哥</option>
					<option value="Restaurant">商家</option>
				</select>
				<br />
				
				<div class="am-cf">
					<input type="submit" name="" value="登 录"
						class="am-btn am-btn-primary am-btn-sm am-fl"> 
					<a class="am-btn am-btn-primary am-fr" href="register.html" target="register.html"><font size="2">注 册</font></a>
				</div>

			</form>

			<hr>
			<p>2018 DB design</p>
		</div>
	</div>
</body>
</html>