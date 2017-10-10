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
			<img border="0" width="13" height="13" src="detail/style/images/title_arrow.gif"/> 僧侣列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<form action="/wirelessplatform/board.html" method="get">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入僧侣名称">
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
				<td>用户名</td>
				<td>密码</td>
				<td>寺庙</td>
				<td>操作</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
		<s:iterator value="monks" var="e" status="status">
			<tr class="TableDetail1">
				<td align="center"><s:property value="#e.id" /></td>
				<td align="center"><s:property value="#e.name" /></td>
				<td align="center"><s:property value="#e.password" /></td>
				<td align="center"><s:property value="#e.temple" /></td>
				<td>
					<a href="detail/updateSL.jsp?monkid=<s:property value="#e.id"/>" class="FunctionButton">修改</a>				 
					<a href="monk_*!deleteMonk.action?monk.id=<s:property value="#e.id"/>
					" onClick="delConfirm();"class="FunctionButton">删除</a>		
				    <!-- <s:a action="monk_*!deleteMonk.action" onClick="delConfirm();"class="FunctionButton">删除</s:a> -->
				</td>
			</tr>
        </s:iterator>
        
        </tbody>
    </table>
	
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="detail/saveSendlv.jsp">添加</a></div>
    </div> 
</div>
</body>
</html>
