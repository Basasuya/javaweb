<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>杰拉网咖进销存管理系统</title>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-2.1.4.min.js"></script>
<script src="js/layer.js"></script>
<script>
	$('#test1').on('click', function() {
		layer.msg('Hello la');
	});
</script>

<style>
#header {
	background-color: black;
	color: white;
	height: 15%;
	text-align: center;
}

#nav {
	background-color: #eeeeee;
	height: 79%;
	width: 15%;
	float: left;
	text-align: center;
}

#section {
	width: 85%;
	float: left;
	text-align: center;
}

#footer {
	background-color: black;
	color: white;
	clear: both;
	height: 6%;
	text-align: center;
}
</style>


<body>
	<div id="header">
		<h1>杰拉网咖进销存管理系统</h1>
	</div>

	<div id="nav">
		<%@ include file="Left.jsp"%>
	</div>

	<div id="section">
		<table height="20" width=100% background="Images/mainMenuBg.jpg">
			<tr>
				<td align="center" style="padding-left: 25px;">售卖信息修改</td>
			</tr>
		</table>
		<table width=100% border="0" cellspacing="0" cellpadding="0"
			>
			<tr ><td height = 30px></td></tr>	
			<tr align="center" valign="center" >
				<td >
					<form name="form1" method="post" action="BBuyUpdateSave.action">
						<table height = "70%" width="70%" border="0" cellspacing="0" cellpadding="0" >
							<tr align="center">
								<td><font color="blue">编号：</font><input name="BBuy_Id" type="text" class="text2"
									id="BBuy_Id" value="<s:property value='cnbean.BBuy_Id'/>"></td>
							</tr>
							
							<tr align="center">
								<td><font color="blue">名称：</font><input name="BBuy_Name" type="text" class="text2"
									id="BBuy_Name" value="<s:property value='cnbean.BBuy_Name'/>"></td>
							</tr>
							<tr align="center">
								<td><font color="blue">种类：</font><input name="BBuy_Type" type="text" class="text2"
									id="BBuy_Type" value="<s:property value='cnbean.BBuy_Type'/>"></td>
							</tr>
							<tr align="center">
								<td><font color="blue">单位：</font><input name="BBuy_Unit" type="text" class="text2"
									id="BBuy_Unit" value="<s:property value='cnbean.BBuy_Unit'/>"></td>
							</tr>
							<tr align="center">
								<td><font color="blue">数量：</font><input name="BBuy_Num" type="text" class="text2"
									id="BBuy_Num" value="<s:property value='cnbean.BBuy_Num'/>"></td>
							</tr>
							<tr align="center">
							<td><font color="blue">小计：</font><input name="BBuy_Pro" type="text" class="text2"
									id="BBuy_Pro" value="<s:property value='cnbean.BBuy_Pro'/>"></td>
							</tr>
							<tr align="center">
								<td><font color="blue">回收时间：</font><input name="BBuy_Time" type="text" class="text2"
									id="BBuy_Time" value="<s:property value='cnbean.BBuy_Time'/>"></td>
							</tr>
							<tr align="center">
								<td><input type="submit" name="button" id="button"
									value="修改"> &nbsp;&nbsp; <input type="button"
									name="button2" id="button2" value="返回上页"
									onClick="javascript:history.back(-1);"></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>

		</table>
	</div>

	<div id="footer">Copyright @basasuya</div>
</body>
</html>