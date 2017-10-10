<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getRequestURI();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- 包含公共的JSP代码片段 -->

<title>丛林闲居后台管理平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>


	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">



				<img border="0" width="13" height="13"
					src="style/images/title_arrow.gif" />


			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>


	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<!-- 表单内容 -->
		<form
			action="${ pageContext.request.contextPath }/monk_updateMonk.action"
			method="post">

			<!-- 本段标题（分段标题） -->
			<div class="ItemBlock_Title">
				<img width="4" height="7" border="0"
					src="style/images/item_point.gif"> 僧侣信息&nbsp;
			</div>
			<!-- 本段表单字段 -->
			
			<div class="ItemBlockBorder">
				<div class="ItemBlock">
					<div class="ItemBlock2">
						<table cellpadding="0" cellspacing="0" class="mainForm">
							<tr>
								<td width="80px">id</td>
								<td><input type="text" name="monk.id" class="InputStyle"
									value="" /> *</td>
								<td>
									<s:actionerror />
								</td>
							</tr>
							<tr>
								<td width="80px">新用户名</td>
								<td><input type="text" name="monk.name" class="InputStyle"
									value="" /> *</td>
							</tr>
							<tr>
								<td width="80px">新密码</td>
								<td><input type="text" name="monk.password"
									class="InputStyle" value="" /> *</td>
							</tr>
							<tr>
								<td width="80px">新寺庙</td>
								<td><input type="text" name="monk.temple"
									class="InputStyle" value="" /> *</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<!-- 表单操作 -->
			<div id="InputDetailBar">



				<input type="submit" value="确定" class="FunctionButtonInput">


				<a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
			</div>
		</form>

	</div>




</body>
</html>
