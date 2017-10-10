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
			<img border="0" width="13" height="13" src="detail/style/images/title_arrow.gif"/> 丛林列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="/wirelessplatform/food.html" method="get">
			<input type="hidden" name="method" value="search">
			<input type="text" name="keyword" title="请输入丛林名称">
			<input type="submit" value="搜索">
		</form>
	</div>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
					<td>丛林编号</td>
					<td>丛林名称</td>
					<td>丛林位置</td>
					<td>丛林价格</td>
					<td>丛林封面</td>
					<td>丛林介绍</td>

		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
		<s:iterator value="hotels" var="e" status="status">
				<tr>
						<td><s:property value="#e.HId" /></td>
						<td><s:property value="#e.HName" /></td>
						<td><s:property value="#e.HLocation" /></td>
						<td><s:property value="#e.HPrice" /></td>
						<td><s:property value="#e.HCover" /></td>
						<td><s:property value="#e.HIntroduction" /></td>
						<td>
							<a href="./detail/updateCuisine.html" class="FunctionButton">发布</a> 
							<a href="#" class="FunctionButton">删除</a>
						</td>
					</tr>
        </s:iterator>
		
        
        </tbody>
    </table>
	
   
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="saveFood.html">添加</a></div>
    </div> 
</div>
</body>
</html>
