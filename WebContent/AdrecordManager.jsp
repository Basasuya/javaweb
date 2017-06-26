<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>杰拉网咖进销存管理系统</title>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script src = "http://ajax.aspnetcdn.com/ajax/jquery/jquery-2.1.4.min.js"></script>
<script src = "js/layer.js"></script>
<script>
$('#test1').on('click', function(){
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
		<table height="20" width = 100% background="Images/mainMenuBg.jpg">
		<tr>
			<td  align="center" 
				style="padding-left: 25px;">交班记录</td>
		</tr>
		</table>
		<table width = 100% border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td align="center" valign="top" >
					<form name="form1" method="post" action="AdrecordManager.action">
							<table  width = 100% border="0" cellspacing="0" cellpadding="0" background="Images/bootBg.jpg">
								<tr>
									<td  align="center"><select name="SearchRow"
										id="SearchRow">
											<option value="Adrecord_Username">操作人</option>
									</select> <input name="SearchKey" type="text" class="text1"
										id="SearchKey"> <input type="submit" name="button"
										id="button" value="点击查询"></td>
								</tr>
							</table>
						</form> 
						<table align="center" width="90%" border="0" cellspacing="0" cellpadding="0">
							<tr align="center" class="t1">
								<td height="25" bgcolor="#D5E4F4"><strong>编号</strong></td>
								<td bgcolor="#D5E4F4"><strong>操作人</strong></td>
								<td bgcolor="#D5E4F4"><strong>上班时间</strong></td>
							</tr>
							
							<s:iterator  value="list">
								<tr align="center">
									
									<td height="25" align="center" bgcolor="#ADD8E6">
									${Adrecord_Id}</td>
									<td bgcolor="#ADD8E6">${Adrecord_Username}</td>
									<td bgcolor="#ADD8E6">${Adrecord_Time}</td>
									<td width = 10px></td>
									<td align="center"  bgcolor="#0000FF"><a
										href="AdrecordUpdate.action?Adrecord_Id=${Adrecord_Id}" 
										><font color="white">修改</font></a> <a
										href="AdrecordDel.action?Adrecord_Id=${Adrecord_Id}"
										onClick="return confirm('确定要删除该记录吗？')"><font color="white">删除</font></a></td>
								</tr>
							</s:iterator>
						</table></td>
				</tr>

			</table>
	</div>

	<div id="footer">Copyright @basasuya</div>
</body>
</html>