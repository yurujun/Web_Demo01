<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: 微软雅黑;font-size:16px";
%>
<html>
	<head>
		<title><s:text name="rolefo.add"/></title>
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/pageNavi.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/common.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/jquery-ui.css">
    	<link type="text/css" rel="stylesheet" href="<%=context %>/css/dtree.css">
		<script type="text/javascript" src="<%=context %>/css/js/list.js"></script>
		<script type="text/javascript" src="<%=context %>/js/common.js"></script>
		<script type="text/javascript" src="<%=context %>/js/dtree.js"></script>
		<script src="<%=context %>/js/jquery-1.8.2.min.js"></script>
		<script src="<%=context %>/js/datePicker/jquery-ui.js" type="text/javascript"></script>
		<script src="<%=context %>/js/jquery.ui.datepicker-zh-CN.js"></script>
		<script type="text/javascript">
		  	var contextRootPath = "${ctx}";
		  	var params;

		  	/**
		  	 * 利用jquery去掉前后空格 $.trim(str) 
		  	 * 报销人
		  	 * */  
		  	function pageLoadIni(){
		  		params = {
				  		
		  	    };
		  	}
		  	
			$(document).ready(function(){
				pageLoadIni();
				var url = contextRootPath+"/menuInfoAction_getMenuTree.do";
				jQuery.post(url,params,callback,'json');
			})
			
			function callback(dataObjects){
				//alert("回调函数");
				menuTree = new dTree('menuTree','.','menuTreeForm');
				menuTree.config.useCheckbox = true;  //设置有复选框
				menuTree.add('0','-1','');
				//menuTree.add('1','0','菜单根节点');
				$.each(dataObjects,function(i){ 
					//alert(dataObjects[i].node.name);
					menuTree.add(dataObjects[i].node.id, dataObjects[i].node.parentId, dataObjects[i].node.name);
				})
				$("#menuTreeDiv").html(menuTree.toString());
			}
			
			function doAdd(object,actionUrl) {
		        var result = true;
				
		        var formObj = document.getElementById("addForm");
		        $(formObj).attr("action",actionUrl);
		      	//如果验证过后的结果为true,则表示表单可以进行提交
	            if(result){
	            	submitForm(object,formObj);
	            }
	        }
    	</script>
    	<style type="text/css">
    		/*左侧菜单*/
			.left-sidebar-menu{
				border-left : 1px solid #c4c8cb;
			}
			
			/*左侧菜单*/
			.right-sidebar-menu{
				border-left : 1px solid #c4c8cb;
				border-right : 1px solid #c4c8cb;
			}
    	</style>
	</head>
	<body>
		<span id="errorSpan" class="errorInfo"></span>
		<table width="1200" border="0" height="140" cellpadding="0" cellspacing="0">
			<tr height="40">
            	<td colspan="6" class="editTitleHead">
            		<s:text name="roleInfo.add"></s:text>
            	</td>
        	</tr>
        	
        	<tr height="100">
        		<td width="300">
        			<div class="left-sidebar-menu" style="height: 1000px;">
						<p style="font-family: 微软雅黑;font-size:16px;padding-top: 10px;padding-left: 5px">
							<a href="javascript: menuTree.openAll();">全部展开</a> |
							<a href="javascript: menuTree.closeAll();">全部关闭</a>
						</p>
						<div id="menuTreeDiv"></div>
					</div>
        		</td>
        		<td width="900">
        			<div class="right-sidebar-menu" style="height: 1000px;">
        				<form action="" id="addForm" name="addForm">
							<table width="900" border="0" height="100" cellpadding="0" cellspacing="0">
								<tr height="30">
								    <td class="editColumnTitle" style="border-left: none;">
								       <img src="<%=context %>/images/markMustInput.jpg"><s:text name="roleInfo.roleName"/>    <!-- 角色名称 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="roleInfo.menuName" cssClass="editColumnTextFieldMust" id="menuName"/>
								    </td>
								    <td class="editColumnTitle">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="roleInfo.isValidate"/>    <!-- 是否有效 -->
								    </td>
								    <td class="editColumnText">
								        <s:select name="roleInfo.isValidate" list="#{'1':'有效','0':'无效'}" cssClass="editColumnSelectItemMust"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<s:text name="roleInfo.roleDescribe"/>    <!-- 角色描述 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="roleInfo.roleDescribe" cssClass="editColumnTextField" id="roleDescribe"/>
								    </td>
								    <td class="editColumnTitle" >
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="roleInfo.menuRoleRelations"/>    <!-- 菜单权限 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield readonly="true" cssClass="editColumnTextField" onfocus="this.blur()" 
								        	id="roleDescribe" cssStyle="color: #969696;" value="请从左边菜单选择该角色的可见菜单"/>
								        <s:hidden />
								    </td>
								</tr>
								
								<tr height="40" valign="bottom" >
					         		<td colspan="6" align="center"  class="searchColumnText" style="border-right: none;border-left: none;">
						           		<table>
					    					<tr>
					        					<td align="center" >
					        						<button  class="simpleButton" onclick="doAdd(this,'<%=context %>/roleInfoAction_add.do')"><s:text name="system.add"/></button>
					        					</td>
					        					<td>&nbsp;</td>
					    						<td align="center" >
					        						<button class="simpleButton" onclick="resetForm('addForm');"><s:text name="system.reset"/></button>
					        					</td>
					    					</tr>
										</table>
					         		</td>
					     		</tr>
							</table>
						</form>
					</div>
        		</td>
        	</tr>
		</table>
	</body>
</html>
