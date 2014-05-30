<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: 微软雅黑;font-size:16px";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>菜单列表</title>
		<link type="text/css" rel="stylesheet" href="<%=context %>/css/dtree.css">
		<script type="text/javascript" src="<%=context %>/js/dtree_radio.js"></script>
		<script type="text/javascript">
			function submitForm(){
				var ids = "";
				var form = document.getElementById("testForm");
				for (var i=0; i<form.elements.length; i++) {
					var element = form.elements[i];
					if (element.name == "id" && element.type=='radio'){
						if( element.checked == true ){
							ids = ids + element.value ;
						}
					}
				}		
				alert("ids = " + ids);
			}
		</script>
	</head>

	<body>
		<div class="dtree">
			<p>
				<a href="javascript: d.openAll();">open all</a> |
				<a href="javascript: d.closeAll();">close all</a>
			</p>
			<script language="javascript">
				d = new dTree('d','.','testForm');
				d.add('0','-1','菜单');
					d.add('0401','0','用户管理');
						d.add('040101','0401','增加用户','javascript:submitForm();');
						d.add('040102','0401','用户列表','javascript:submitForm();');
					d.add('0402','0','角色管理');
						d.add('040201','0402','增加角色','javascript:submitForm();');
						d.add('040202','0402','角色列表','javascript:submitForm();');
					d.add('0403','0','菜单管理');
						d.add('040301','0403','增加菜单','javascript:submitForm();');
						d.add('040302','0403','菜单列表','javascript:submitForm();');
				
				document.write(d);
			
			</script>
			<input type="button" value="提 交" onClick="submitForm()" />
		</div>
	</body>

</html>
