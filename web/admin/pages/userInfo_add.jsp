<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: ΢���ź�;font-size:16px";
%>
<html>
	<head>
		<title>�û����</title>
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/pageNavi.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/common.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/jquery-ui.css">
    	<link rel="stylesheet" type="text/css" href="<%=context %>/css/jquery-ui-custom.css">
		<script type="text/javascript" src="<%=context %>/css/js/list.js"></script>
		<script type="text/javascript" src="<%=context %>/js/common.js"></script>
		<script src="<%=context %>/js/jquery-1.8.2.min.js"></script>
		<script src="<%=context %>/js/datePicker/jquery-ui.js" type="text/javascript"></script>
		<script src="<%=context %>/js/jquery.ui.datepicker-zh-CN.js"></script>
		<script type="text/javascript">
	        function doAdd(object,actionUrl) {
		        var result = true;
				
		        var formObj = document.getElementById("addForm");

				//���ύ֮ǰ�Ա����������������Ƿ�Ϊ�յļ��
				checkParamsNullBeforeSubmit(formObj);
				//���ύ֮ǰ�Ա��������������������Ƿ�Խ��ļ��
				checkParamsLengthBeforeSubmit(formObj);
		        
		        $(formObj).attr("action",actionUrl);
		      	//�����֤����Ľ��Ϊtrue,���ʾ�����Խ����ύ
	            if(result){
	            	submitForm(object,formObj);
	            }
	        }

    	</script>
	</head>
	<body>
		<span id="errorSpan" class="errorInfo"></span>
		<form action="" id="addForm" name="addForm">
			<table width="1200" border="0" height="140" cellpadding="0" cellspacing="0">
				<tr height="40">
	            	<td colspan="6" class="editTitleHead">
	            		<s:text name="userInfo.add"></s:text>
	            	</td>
	        	</tr>
				<tr height="30">
				    <td class="editColumnTitle">
				       <img src="<%=context %>/images/markMustInput.jpg"><s:text name="userInfo.useraccount"/>    <!-- �û��˺� -->
				    </td>
				    <td class="editColumnText">
				        <s:textfield name="userInfo.useraccount" cssClass="editColumnTextFieldMust" id="useraccount"/>
				    </td>
				    <td class="editColumnTitle">
				       	<s:text name="userInfo.username"/>    <!-- ��ʵ���� -->
				    </td>
				    <td class="editColumnText">
				        <s:textfield cssClass="editColumnTextField" />
				    </td>
				    <td class="editColumnTitle">
				       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="userInfo.frozenflag"/>    <!-- �Ƿ񶳽� -->
				    </td>
				    <td class="editColumnSelect">
				        <s:select list="#{'0':'��','1':'��'}" cssClass="editColumnSelectItemMust" cssStyle="width: 90%;"/>
				    </td>
				</tr>
				
				<tr height="30">
				    <td class="editColumnTitle">
				       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="userInfo.password"/>    <!-- �û����� -->
				    </td>
				    <td class="editColumnText">
				        <s:password cssClass="editColumnTextFieldMust" />
				    </td>
				    <td class="editColumnTitle">
				       	<img src="<%=context %>/images/markMustInput.jpg"><s:text name="userInfo.comcode"/>    <!-- �������� -->
				    </td>
				    <td class="editColumnText">
				        <s:textfield name="userInfo.comcode" cssClass="editColumnTextFieldMust" id="comName"
				        	onclick="getFkValue('roleInfoAction!fkSelect.action',addForm.comId,addForm.comName,'')"/>
				        <s:hidden name="userInfo.comInfo.comId" id="comId"/>
				    </td>
				    <td class="editColumnTitle">
				       	<s:text name="userInfo.phone"/>    <!-- �̻� -->
				    </td>
				    <td class="rightMostEditColumnText">
				        <s:textfield cssClass="editColumnTextField" />
				    </td>
				</tr>
				<tr height="30">
				    <td class="editColumnTitle">
				       	 <s:text name="userInfo.mobile"/>    <!-- �ƶ��绰-->
				    </td>
				    <td class="editColumnText">
				        <s:textfield cssClass="editColumnTextField" onblur="isMobilePhone(this)"/>
				    </td>
				    <td class="editColumnTitle">
				       	 <s:text name="userInfo.email"/>    <!-- �����ַ -->
				    </td>
				    <td class="editColumnText">
				        <s:textfield cssClass="editColumnTextField" onblur="isEmail(this)"/>
				    </td>
				    <td class="editColumnTitle">
				       	<s:text name="userInfo.address"/>    <!-- ��ͥסַ -->
				    </td>
				    <td class="rightMostEditColumnText">
				        <s:textfield cssClass="editColumnTextField" />
				    </td>
				</tr>
				<tr height="30">
				    <td class="editColumnTitle">
				       	 ����ʱ��
				    </td>
				    <td class="editColumnText">
				        <s:textfield cssClass="editColumnTextField" onfocus="WdatePicker(this);" id="datePicker"/>
				    </td>
				    <td class="editColumnTitle">
				       	 &nbsp;
				    </td>
				    <td class="editColumnText">
				        &nbsp;
				    </td>
				    <td class="editColumnTitle">
				       	&nbsp;
				    </td>
				    <td class="rightMostEditColumnText">
				        &nbsp;
				    </td>
				</tr>
				
				
				<tr height="40" valign="bottom" >
	         		<td colspan="6" align="center"  class="searchColumnText">
		           		<table >
	    					<tr>
	        					<td align="center" >
	        						<button class="simpleButton" onclick="doAdd(this,'<%=context %>/userInfoAction_add.do')"><s:text name="system.add"/></button>
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
	</body>
</html>
