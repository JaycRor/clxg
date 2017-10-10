<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>丛林闲居后台管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="detail/style/js/jquery.js"></script>
	<script type="text/javascript" src="detail/style/js/page_common.js"></script>
	<link href="detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="detail/style/css/index_1.css" />
  </head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13" src="detail/style/images/title_arrow.gif" />阅读忏悔
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>
	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="/wirelessplatform/cuisine.html" method="get">
			<input type="hidden" name="method" value="search">
			<input type="text" name="keyword" title="请输入忏悔者名字">
			<input type="submit" value="搜索">
		</form>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>忏悔者姓名</td>
					<td>忏悔者编号</td>
					<td>提交忏悔时间</td>
					<td>忏悔操作</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				
					<tr>
						<td>小米</td>
						<td>01</td>
						<td>2017-08-10</td>
						<td>
							<a href="jietuo.html" class="FunctionButton">写解脱文</a> 
							<a href="#" class="FunctionButton">删除</a>
						</td>
					</tr>
					
					
					<tr>
						<td>小明</td>
						<td>02</td>
						<td>2017-08-31</td>
						<td>
							<a href="jietuo.html" class="FunctionButton">写解脱文</a> 
							<a href="#" class="FunctionButton">删除</a>
						</td>
					</tr>
					
					<tr>
						<td>小安</td>
						<td>03</td>
						<td>2017-09-10</td>
						<td>
							<a href="jietuo.html" class="FunctionButton">写解脱文</a> 
							<a href="#" class="FunctionButton">删除</a>
						</td>
					</tr>
				
				
			</tbody>
		</table>
		<!-- 其他功能超链接 
		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="saveCuisine.html">添加</a>
			</div>
		</div>
		-->
	</div>
</body>
</html>
