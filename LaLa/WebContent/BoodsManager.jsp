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
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>

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
A:active{   COLOR: #333;   TEXT-DECORATION:   none;  }   
</style>
<script>
$(function () {
    $(document).on("click",".nav-tabs td", function () {
        $tabs.removeClass("active");
        $(this).addClass("active");
    })
})
</script>

<body>
    <div id="header">
        <h1>杰拉网咖进销存管理系统</h1>
    </div>

    <div id="nav">
        <%@ include file="Left.jsp"%>
    </div>

    <div id="section">
        <table height="20" width = 100% background="Images/mainMenuBg.jpg">
        <tr class="nav nav-tabs"> 
            <td  align="center" style="padding-left: 30px;">
                <a href="GoodsManager.action" ><font id = "ch1" color = "#6699FF">商品管理</font></a>
            </td>
            <td  align="center" style="padding-left: 30px;">
                <a href="BoodsManager.action" ><font id = "ch2" color = "#000099">物料管理</font></a>
            </td>
        </tr>
        </table>
        <table width = 100% >
        <tr>
            <td>
                <form name="form1" method="post" action="BoodsManager.action">
                            <table  width = 100% border="0" cellspacing="0" cellpadding="0" background="Images/bootBg.jpg">
                                <tr>
                                    <td  align="center"><select name="SearchRow"
                                        id="SearchRow">
                                            <option value="Boods_Name">名称</option>
                                            <option value="Boods_Type">种类</option>
                                    </select> <input name="SearchKey" type="text" class="text1"
                                        id="SearchKey"> <input type="submit" name="button"
                                        id="button" value="点击查询"></td>
                                </tr>
                            </table>
                        </form> 
            </td>
        </tr>
        </table>
            <table width = 100% border="0" cellspacing="0" cellpadding="0" id = "bood1" >
                <tr>
                    <td align="center" valign="top" >
                    
                        <table align="center" width="90%" border="0" cellspacing="0" cellpadding="0">
                            <tr align="center" class="t1">
                                <td height="25" bgcolor="#D5E4F4"><strong>编号</strong></td>
                                <td bgcolor="#D5E4F4"><strong>名称</strong></td>
                                <td bgcolor="#D5E4F4"><strong>种类</strong></td>
                                <td bgcolor="#D5E4F4"><strong>单位</strong></td>
                                <td bgcolor="#D5E4F4"><strong>回收价</strong></td>
                                <td bgcolor="#D5E4F4"><strong>仓库数量</strong></td>
                                <td bgcolor="#D5E4F4"><strong>吧台数量</strong></td>
                            </tr>
                            
                            <s:iterator  value="list">
                                <tr align="center">                     
                                    <td height="25" align="center" bgcolor="#ADD8E6">
                                    ${Boods_Id}</td>
                                    <td bgcolor="#ADD8E6">${Boods_Name}</td>
                                    <td bgcolor="#ADD8E6">${Boods_Type}</td>
                                    <td bgcolor="#ADD8E6">${Boods_Unit}</td>
                                    <td bgcolor="#ADD8E6">${Boods_Price}</td>
                                    <td bgcolor="#ADD8E6">${Boods_Warehouse}</td>
                                    <td bgcolor="#ADD8E6">${Boods_Bar}</td>
                                    <td width = 10px></td>
                                    <td align="center"  bgcolor="#0000FF"><a
                                        href="BoodsUpdate.action?Boods_Id=${Boods_Id}" 
                                        ><font color="white">修改</font></a> <a
                                        href="BoodsDel.action?Boods_Id=${Boods_Id}"
                                        onClick="return confirm('确定要删除该物料吗？')"><font color="white">删除</font></a></td>
                                </tr>
                            </s:iterator>
                        </table></td>
                </tr>
                
            </table >
            <table align = center id = "bood2" >
                <tr>
                    <td  height="30" style="padding-left:20px;" background="Images/mainMenuBg.jpg"><a href="BoodsAdd.jsp"><strong>添加物料类型</strong></a></td>
                </tr>
            </table>
    </div>

    <div id="footer">Copyright @basasuya</div>
</body>
</html>