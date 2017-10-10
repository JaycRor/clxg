<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files  -->

<!-- /font files  -->
<!-- css files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
</head>
<body>
<h1>丛林闲居-用户注册</h1>
<div class="log" align="center">
	<div class="content2" align ="center">
		<h2>请填写注册信息</h2>
		<form action="${ pageContext.request.contextPath }/user_addUser.action" method="post">
			<input type="text" name="user.UName" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入用户名';}">
			<input type="tel" name="user.UTel" value="电话" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请填写电话号码';}">
			<input type="email" name="user.UEmail" value="邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请填写电子邮件';}">
			<input type="text" name="user.USex" value="性别" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请填写电子邮件';}">
			<input type="password" name="user.UPassword" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
			<input type="submit" class="register" value="注册">
		</form>
	</div>
	<div class="clear"></div>
</div>
<div class="footer">
	<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.zxyoyo.com">丛林闲居</a></p>
</div>

</body>
</html>