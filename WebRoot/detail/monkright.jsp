<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <base href="<%=basePath%>">
    
    <title>丛林闲居后台管理平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="detail/style/js/jquery.js"></script>
<script type="text/javascript" src="detail/style/js/page_common.js"></script>
<link href="detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="detail/style/images/title_arrow.gif"/> 用户列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<form action="/wirelessplatform/board.html" method="get">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入用户名称">
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
				<td>内容</td>
				<td>时间</td>
				<td>密钥</td>
				<td>是否已读</td>
				
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
		
	<s:iterator value="list" var="e" status="stat">
			<tr>
				
				<td><s:property value="#e.id" /></td>
				<td><s:property value="#e.content" /></td>
				<td><s:property value="#e.ctime" /></td>
				<td><s:property value="#e.pwd" /></td>
				<td><s:property value="#e.returnflag" /></td>
			</tr>
		</s:iterator>        	
        	
 
        </tbody>
    </table>
	
</div>
</body>
</html>
