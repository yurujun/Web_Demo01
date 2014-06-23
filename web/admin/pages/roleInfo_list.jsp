<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="j" uri="/custom-struts2-tags" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
%>
<html>
	<head>
		<title>��ɫ�б�</title>
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/pageNavi.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/common.css">
		<script type="text/javascript" src="<%=context %>/js/list.js"></script>
		<script type="text/javascript" src="<%=context %>/js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript">
			var contextRootPath = "${ctx}";

			$().ready(function(){
				query();
			});
				
			
			function query(){
				var url = contextRootPath + "/roleInfoAction_fkSelect.do";
				$.ajax({
			        type: "post",
			        dataType: "json",//���巵�ص�����ʱJSON��ʽ 
			        url : url,  
			        success: function(obj) { 
			        	var length = obj.data.length; 
			        	var content = "";
						for(var i=0;i<length;i++){
							content += "<tr height=\"30\">";
							content += "	<td class=\"leftMostListTableText\"><input type=\"checkbox\" name=\"deleteList\" value=\"1\" /></td>";
							content += "	<td class=\"listTableText\">"+obj.data[i]["roleName"]+"</td>";
							content += "	<td class=\"listTableText\">"+obj.data[i]["isValidate"]+"</td>";
							content += "</tr>";
						}
						$("#tableContent").append(content);
			        }
			    });  
			}

    	</script>
	</head>
	<body>
		<!-- ��ѯ����Start -->
		<table width="1200" border="0" height="90" cellpadding="0" cellspacing="0">
			<tr height="30">
			    <td class="editColumnTitle">
			       	<s:text name="roleInfo.roleName"/>    <!-- ��ɫ���� -->
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 <s:text name="roleInfo.isValidate"/>    <!-- �Ƿ���Ч -->
			    </td>
			    <td class="editColumnText">
					<s:select name="roleInfo.isValidate" list="#{'1':'��Ч','0':'��Ч'}" cssClass="editColumnSelectItemMust"/>
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
        					<td align="center" width="70" class="simpleButton" onclick="doSearch()">��ѯ</td>
        					<td>&nbsp;</td>
        					<td align="center" width="70" class="simpleButton" onclick="doSearch()">����</td>
    					</tr>
					</table>
         		</td>
     		</tr>
			<tr>
                <td class="menuTableRowBlank" > </td>
            </tr>
		</table>
		<!-- ��ѯ����End -->

		<!-- �б���ʾStart -->		
		<table width="1200px" border="0" height="450" cellpadding="0" cellspacing="0">
			<tr height="480">
				<td valign="top" align="left" width="1200px" style="border: 1px solid #cccccc;" id="tdContent">
					<table width="1180px" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
						<col width="40" />
						<col width="100" />
						<col width="80" />

						<tr height="30px">
							<th class="leftMostListTableHead">
								<input type="checkbox" name="deleteListAll"
									onclick="checkSelectedAll(this)" />
							</th>
							<th class="listTableHead"
								onclick="setOrderBy('instancess.userName')">
								<s:text name="roleInfo.roleName"/>    <!-- ��ɫ���� -->
							</th>
							<!-- <th class="listTableHead"
								onclick="setOrderBy('instancess.userExtInfo.realName')">
								<s:text name="roleInfo.menuRoleRelations"/>    <!-- �˵�Ȩ�� -->
							<!-- </th> -->
							<th class="listTableHead" onclick="setOrderBy('instancess.open')">
								<s:text name="roleInfo.isValidate"/>    <!-- �Ƿ���Ч -->
							</th>
						</tr>
					</table>
					<div style="overflow: scroll; height: 400px; width: 1200px">
						<table border="0" cellpadding="0" cellspacing="0" width="1180px;" id="tableContent" style="border-collapse: collapse">
							<col width="40" />
							<col width="100" />
							<col width="80" />
						</table>
					</div>
					<table width="100%">
            			<j:pageControl param_theme="1"/>
        			</table> 
				</td>
			</tr>
		</table>
		<!-- �б���ʾEnd -->		
	</body>
</html>
