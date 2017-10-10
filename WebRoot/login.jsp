<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<html>
<head>
<title>登录</title>
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
<h1>丛林闲居-用户登录</h1>
<div class="log" align="center">
	<div class="content1">
		<h2>登录</h2>
		<div>
			<s:actionerror />
		</div>
		<form action="${ pageContext.request.contextPath }/user_login.action" method="post">
			<input type="text" name="user.UName" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}">
			<input type="password" name="user.UPassword" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
			<div class="button-row">
				<input type="submit" class="sign-in" value="登录">
				<a href="forget.jsp"><input type="button" class="reset" value="忘记密码"  ></a>
				<div class="clear"></div>
			</div>
		</form>
	</div>
	<div class="clear"></div>
</div>
<div class="footer">
	<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.zxyoyo.com">丛林闲居</a></p>
</div>

</body>
</html>