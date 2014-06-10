<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    String context = request.getContextPath();

%>
<!DOCTYPE HTML>
<html>
  <head>
  	<base target="mainFrame">
    <title>系统菜单</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
    <link href="<%=context %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=context %>/css/font-awesome.min.css">
    <script src="<%=context %>/js/jquery-1.8.2.min.js"></script>
    <script src="<%=context %>/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    	body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue",Helvetica,STheiti,微软雅黑,宋体,Arial,Tahoma,sans-serif,serif;
		}
		/*左侧菜单*/
		.sidebar-menu{
			border-right: 1px solid #c4c8cb;
		}
		/*一级菜单*/
		.menu-first{
			height:45px;
			line-height:45px;
			background-color: #e9e9e9;
			border-top: 1px solid #efefef;
			border-bottom: 1px solid #e1e1e1;
			padding: 0;
			padding-left: 0px;
			font-size: 14px;
			font-weight: normal;
			text-align: center;
		}
		/*一级菜单鼠标划过状态*/
		.menu-first:hover{
			text-decoration: none;
			background-color: #d6d4d5;
			border-top: 1px solid #b7b7b7;
			border-bottom: 1px solid #acacac;
		}
		/*二级菜单*/
		.menu-second li a{
			background-color: #f6f6f6;
			height:31px;
			line-height:31px;
			border-top: 1px solid #efefef;
			border-bottom: 1px solid #efefef;
			font-size: 12px;
			text-align:center;
		}
		/*二级菜单鼠标划过样式*/
		.menu-second li a:hover {
			text-decoration: none;
			background-color: #66c3ec;
			border-top: 1px solid #83ceed;
			border-bottom: 1px solid #83ceed;
			border-right: 3px solid #f8881c;
			border-left: 3px solid #66c3ec;
		}
		/*二级菜单选中状态*/
		.menu-second-selected {
			background-color: #66c3ec;
			height:31px;
			line-height:31px;
			border-top: 1px solid #83ceed;
			border-bottom: 1px solid #83ceed;
			border-right: 3px solid #f8881c;
			border-left: 3px solid #66c3ec;
			text-align:center;
		}
		/*覆盖bootstrap的样式*/
		.nav-list,.nav-list li a{
			padding: 0px;
			margin: 0px;
		}
		
    </style>
  </head>
  
  <body>
	<div class="sidebar-menu" style="margin-top: 0px;border-right: 1px solid #c4c8cb;" >
		<s:iterator value="">
		</s:iterator>
		<a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
			<i class="icon-user-md icon-large"></i> 用户管理
		</a>
		<ul id="userMeun" class="nav nav-list collapse menu-second">
			<li><a href="<%=context %>/userInfoAction_beforeAdd.do"><i class="icon-plus"></i> 增加用户</a></li>
			<li><a href="#"><i class="icon-edit"></i> 修改用户</a></li>
			<li><a href="#"><i class="icon-trash"></i> 删除用户</a></li>
			<li><a href="<%=context %>/userInfoAction_list.do"><i class="icon-list"></i> 用户列表</a></li>
		</ul>
		
		<a href="#articleMenu" class="nav-header menu-first collapsed" data-toggle="collapse">
			<i class="icon-globe icon-large"></i> 角色管理
		</a>
		<ul id="articleMenu" class="nav nav-list collapse menu-second">
			<li><a href="<%=context %>/roleInfoAction_beforeAdd.do"><i class="icon-plus"></i> 添加角色</a></li>
			<li><a href="#"><i class="icon-list"></i> 角色列表</a></li>
		</ul>
		
		<a href="#fileMenu" class="nav-header menu-first collapsed" data-toggle="collapse">
			<i class="icon-list-alt icon-large"></i> 菜单管理
		</a>
		<ul id="fileMenu" class="nav nav-list collapse menu-second">
			<li><a href="<%=context %>/menuInfoAction_beforeAdd.do"><i class="icon-plus"></i> 添加菜单</a></li>
			<li><a href="<%=context %>/menuInfoAction_list.do"><i class="icon-list"></i> 菜单列表</a></li>
		</ul>
		
	</div>
	
	<div class="sidebar-menu" style="height: 500px;">
		&nbsp;
	</div>
  </body>
</html>

