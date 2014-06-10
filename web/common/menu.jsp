<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    String context = request.getContextPath();

%>
<!DOCTYPE HTML>
<html>
  <head>
  	<base target="mainFrame">
    <title>ϵͳ�˵�</title>
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
			font-family: "Helvetica Neue",Helvetica,STheiti,΢���ź�,����,Arial,Tahoma,sans-serif,serif;
		}
		/*���˵�*/
		.sidebar-menu{
			border-right: 1px solid #c4c8cb;
		}
		/*һ���˵�*/
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
		/*һ���˵���껮��״̬*/
		.menu-first:hover{
			text-decoration: none;
			background-color: #d6d4d5;
			border-top: 1px solid #b7b7b7;
			border-bottom: 1px solid #acacac;
		}
		/*�����˵�*/
		.menu-second li a{
			background-color: #f6f6f6;
			height:31px;
			line-height:31px;
			border-top: 1px solid #efefef;
			border-bottom: 1px solid #efefef;
			font-size: 12px;
			text-align:center;
		}
		/*�����˵���껮����ʽ*/
		.menu-second li a:hover {
			text-decoration: none;
			background-color: #66c3ec;
			border-top: 1px solid #83ceed;
			border-bottom: 1px solid #83ceed;
			border-right: 3px solid #f8881c;
			border-left: 3px solid #66c3ec;
		}
		/*�����˵�ѡ��״̬*/
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
		/*����bootstrap����ʽ*/
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
			<i class="icon-user-md icon-large"></i> �û�����
		</a>
		<ul id="userMeun" class="nav nav-list collapse menu-second">
			<li><a href="<%=context %>/userInfoAction_beforeAdd.do"><i class="icon-plus"></i> �����û�</a></li>
			<li><a href="#"><i class="icon-edit"></i> �޸��û�</a></li>
			<li><a href="#"><i class="icon-trash"></i> ɾ���û�</a></li>
			<li><a href="<%=context %>/userInfoAction_list.do"><i class="icon-list"></i> �û��б�</a></li>
		</ul>
		
		<a href="#articleMenu" class="nav-header menu-first collapsed" data-toggle="collapse">
			<i class="icon-globe icon-large"></i> ��ɫ����
		</a>
		<ul id="articleMenu" class="nav nav-list collapse menu-second">
			<li><a href="<%=context %>/roleInfoAction_beforeAdd.do"><i class="icon-plus"></i> ��ӽ�ɫ</a></li>
			<li><a href="#"><i class="icon-list"></i> ��ɫ�б�</a></li>
		</ul>
		
		<a href="#fileMenu" class="nav-header menu-first collapsed" data-toggle="collapse">
			<i class="icon-list-alt icon-large"></i> �˵�����
		</a>
		<ul id="fileMenu" class="nav nav-list collapse menu-second">
			<li><a href="<%=context %>/menuInfoAction_beforeAdd.do"><i class="icon-plus"></i> ��Ӳ˵�</a></li>
			<li><a href="<%=context %>/menuInfoAction_list.do"><i class="icon-list"></i> �˵��б�</a></li>
		</ul>
		
	</div>
	
	<div class="sidebar-menu" style="height: 500px;">
		&nbsp;
	</div>
  </body>
</html>

