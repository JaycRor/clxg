<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>加盟</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <font size=16 color=red><label  style="position: absolute; top:30px; left:500px;">加盟商信息</label></font>
   <form action="" method="post" >
    <font size=4 color=black><label  style="position: absolute; top:120px; left:480px;"> 用户:<input type="text" name="b_id"></label></font><br>
    <font size=4 color=black><label  style="position: absolute; top:150px; left:480px;"> 姓名:<input type="text" name="b_name"></label></font><br>
	<font size=4 color=black><label  style="position: absolute; top:180px; left:480px;"> 密码:<input	type="text" name="b_password"><br /></label></font><br>
	<font size=4 color=black><label  style="position: absolute; top:210px; left:480px;"> 公司:<input type="text"name="b_official_name"></label></font><br> 
	<font size=4 color=black><label  style="position: absolute; top:240px; left:480px;"> 地址:<input type="text"name="b_location"></label></font><br> 
	 
	<label  style="position: absolute; top:270px; left:480px;"> <input type="submit" value="提交信息" style="background-color:#ffff" style="color:red"></label>
	</form>
  </body>
</html>
