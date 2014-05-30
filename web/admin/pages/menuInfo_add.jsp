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
		<title><s:text name="menuInfo.add"/></title>
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
				menuTree.config.useRadio = true;  //设置有单选按钮
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

		      	//表单提交之前对必须输入的输入框做是否为空的检查
				checkParamsNullBeforeSubmit(formObj);
		        
		        //$(formObj).attr("action",actionUrl);
		      	//如果验证过后的结果为true,则表示表单可以进行提交
	            if(result){
	            	//submitForm(object,formObj);
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
            		<s:text name="menuInfo.add"></s:text>
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
							<table width="900" border="0" height="140" cellpadding="0" cellspacing="0">
								<tr height="30">
								    <td class="editColumnTitle" style="border-left: none;">
								       <img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.menuName"/>    <!-- 菜单名称 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuName" cssClass="editColumnTextFieldMust" id="menuName"/>
								    </td>
								    <td class="editColumnTitle">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.isValidate"/>    <!-- 是否有效 -->
								    </td>
								    <td class="editColumnText">
								        <s:select name="menuInfo.isValidate" list="#{'1':'有效','0':'无效'}" cssClass="editColumnSelectItemMust"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.menuUrl"/>    <!-- 菜单地址 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuUrl" cssClass="editColumnTextFieldMust" id="menuUrl"/>
								    </td>
									<td class="editColumnTitle">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.parentId"/>    <!-- 上级菜单 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield readonly="true" cssClass="editColumnTextField" id="parentName" cssStyle="background-color:#CCCCCC;" onfocus="this.blur()"/>
								        <s:hidden name="menuInfo.parentId" id="parentId"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<s:text name="menuInfo.menuSort"/>    <!-- 排序号 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuSort" cssClass="editColumnTextField" id="menuSort"/>
								    </td>
								    <td class="editColumnTitle" >
								       	<s:text name="menuInfo.ex01"/>    <!-- 菜单图标 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.ex01" cssClass="editColumnTextField" id="menuDescribe"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<s:text name="menuInfo.menuDescribe"/>    <!-- 菜单描述 -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuDescribe" cssClass="editColumnTextField" id="menuDescribe"/>
								    </td>
								    <td class="editColumnTitle" >
								       	&nbsp;
								    </td>
								    <td class="editColumnText">
								        &nbsp;
								    </td>
								</tr>
								
								<tr height="40" valign="bottom" >
					         		<td colspan="6" align="center"  class="searchColumnText" style="border-right: none;border-left: none;">
						           		<table>
					    					<tr>
					        					<td align="center" >
					        						<button  class="simpleButton" onclick="doAdd(this,'<%=context %>/menuInfoAction_add.do')"><s:text name="system.add"/></button>
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
