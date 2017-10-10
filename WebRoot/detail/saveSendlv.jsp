<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>丛林闲居后台管理平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="detail/style/js/jquery.js"></script>
<script type="text/javascript" src="detail/style/js/page_common.js"></script>
<link href="detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="detail/style/css/index_1.css" />
    <script type="text/javascript">
	function openWin(){
		window.open('common_page_list.html');
		this.close();
	}
	function add() 
    { 
    document.form1.action="${ pageContext.request.contextPath }/monk_addMonk.action"; 
    document.form1.submit(); 
    } 
	</script>
</head>
<body>


<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="detail/style/images/title_arrow.gif"/>  添加新僧侣
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form name="form1" action="">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="detail/style/images/item_point.gif"> 僧侣信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
						<tr>
							<td width="80px">僧侣名称</td>
							<td><input type="text" name="monk.name" class="InputStyle"/>*</td>
						</tr>
						<tr>
							<td width="80px">僧侣密码</td>
							<td><input type="text" name="monk.password" class="InputStyle"/>*</td>
						</tr>
						<tr>
							<td width="80px">僧侣所在寺庙</td>
							<td><input type="text" name="monk.temple" class="InputStyle"/>*</td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		<!-- 表单操作 -->
		<div id="InputDetailBar" >
            <input type="Button" Name="add" Value="添加 " class="FunctionButtonInput" onClick="form1.action='${ pageContext.request.contextPath }/monk_addMonk.action';form1.submit();">
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
        </div>
	</form>
	
</div>


</body>
</html>
