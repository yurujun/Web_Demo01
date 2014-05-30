<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: ΢���ź�;font-size:16px";
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
		  	 * ����jqueryȥ��ǰ��ո� $.trim(str) 
		  	 * ������
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
				//alert("�ص�����");
				menuTree = new dTree('menuTree','.','menuTreeForm');
				menuTree.config.useRadio = true;  //�����е�ѡ��ť
				menuTree.add('0','-1','');
				//menuTree.add('1','0','�˵����ڵ�');
				$.each(dataObjects,function(i){ 
					//alert(dataObjects[i].node.name);
					menuTree.add(dataObjects[i].node.id, dataObjects[i].node.parentId, dataObjects[i].node.name);
				})
				$("#menuTreeDiv").html(menuTree.toString());
			}
			
			function doAdd(object,actionUrl) {
		        var result = true;
				
		        var formObj = document.getElementById("addForm");

		      	//���ύ֮ǰ�Ա����������������Ƿ�Ϊ�յļ��
				checkParamsNullBeforeSubmit(formObj);
		        
		        //$(formObj).attr("action",actionUrl);
		      	//�����֤����Ľ��Ϊtrue,���ʾ�����Խ����ύ
	            if(result){
	            	//submitForm(object,formObj);
	            }
	        }
    	</script>
    	<style type="text/css">
    		/*���˵�*/
			.left-sidebar-menu{
				border-left : 1px solid #c4c8cb;
			}
			
			/*���˵�*/
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
						<p style="font-family: ΢���ź�;font-size:16px;padding-top: 10px;padding-left: 5px">
							<a href="javascript: menuTree.openAll();">ȫ��չ��</a> |
							<a href="javascript: menuTree.closeAll();">ȫ���ر�</a>
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
								       <img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.menuName"/>    <!-- �˵����� -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuName" cssClass="editColumnTextFieldMust" id="menuName"/>
								    </td>
								    <td class="editColumnTitle">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.isValidate"/>    <!-- �Ƿ���Ч -->
								    </td>
								    <td class="editColumnText">
								        <s:select name="menuInfo.isValidate" list="#{'1':'��Ч','0':'��Ч'}" cssClass="editColumnSelectItemMust"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.menuUrl"/>    <!-- �˵���ַ -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuUrl" cssClass="editColumnTextFieldMust" id="menuUrl"/>
								    </td>
									<td class="editColumnTitle">
								       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="menuInfo.parentId"/>    <!-- �ϼ��˵� -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield readonly="true" cssClass="editColumnTextField" id="parentName" cssStyle="background-color:#CCCCCC;" onfocus="this.blur()"/>
								        <s:hidden name="menuInfo.parentId" id="parentId"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<s:text name="menuInfo.menuSort"/>    <!-- ����� -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.menuSort" cssClass="editColumnTextField" id="menuSort"/>
								    </td>
								    <td class="editColumnTitle" >
								       	<s:text name="menuInfo.ex01"/>    <!-- �˵�ͼ�� -->
								    </td>
								    <td class="editColumnText">
								        <s:textfield name="menuInfo.ex01" cssClass="editColumnTextField" id="menuDescribe"/>
								    </td>
								</tr>
								
								<tr height="30">
									<td class="editColumnTitle" style="border-left: none;">
								       	<s:text name="menuInfo.menuDescribe"/>    <!-- �˵����� -->
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
