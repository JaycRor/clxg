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
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 订单列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<form action="/wirelessplatform/board.html" method="get">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入订单名称">
		<input type="submit" value="搜索">
	</form>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>id</td>
				<td>订单编号</td>
				<td>商家名称</td>
				<td>订单时间</td>
				<td>消费金额</td>
				<td>支付方式</td>
				<td>当前状态</td>
			
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
		
			<tr class="TableDetail1">
				<td align="center">1&nbsp;</td>
				<td align="center"> 纽约&nbsp;</td>
				<td align="center"> 纽约&nbsp;</td>
				<td align="center">预定</td>
				<td align="center">2014-12-08 23:31:12</td>
				<td>
					<a href="/wirelessplatform/board.html?method=update&id=1&isBook=0" class="FunctionButton">退桌</a>				
					<a href="/wirelessplatform/board.html?method=delete&id=1" onClick="delConfirm();"class="FunctionButton">删除</a>				
				</td>
				<td align="center">0</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">2&nbsp;</td>
				<td align="center"> 巴黎&nbsp;</td>
				<td align="center"> 纽约&nbsp;</td>
				<td align="center">空闲</td>
				<td align="center"></td>
				<td>
					<a href="/wirelessplatform/board.html?method=update&id=2&isBook=1" class="FunctionButton">预定</a>				
					<a href="/wirelessplatform/board.html?method=delete&id=2" onClick="delConfirm();"class="FunctionButton">删除</a>				
				</td>
				<td align="center">0</td>
			</tr>

        
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
</div>
</body>
</html>
