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
		<title>角色列表</title>
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/pageNavi.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/common.css">
		<script type="text/javascript" src="<%=context %>/js/list.js"></script>
		<script type="text/javascript" src="<%=context %>/js/common.js"></script>
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
			        dataType: "json",//定义返回的数据时JSON格式 
			        url : url,  
			        success: function(obj) { 
			        	var length = obj.data.length; 
			        	var content = "";
						for(var i=0;i<length;i++){
							content += "<tr height=\"30\" onclick=\"sendFkValue(this,0,2)\">";
							content += "	<td style=\"display: none\"><input type=\"hidden\" value=\""+obj.data[i]["roleId"]+"\"/></td>";
							content += "	<td class=\"leftMostListTableText\"><input type=\"checkbox\" name=\"deleteList\" value=\"1\" /></td>";
							content += "	<td class=\"listTableText\">"+obj.data[i]["roleName"]+"</td>";
							content += "</tr>";
						}
						$("#tableContent").append(content);
			        }
			    });  
			}

    	</script>
	</head>
	<base target="_self" />
	<body>
		<!-- 查询条件Start -->
		<table width="950" border="0" height="90" cellpadding="0" cellspacing="0">
			<thead style="height: 30px;">
				<tr>
					<td class="listPageContentNaviActive" colspan="6" align="left">请选择用户所属角色</td>
				</tr>
			</thead>
			<tr height="30">
			    <td class="editColumnTitle">
			       	<s:text name="roleInfo.roleName"/>    <!-- 角色名称 -->
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 <s:text name="roleInfo.isValidate"/>    <!-- 是否有效 -->
			    </td>
			    <td class="editColumnText">
					<s:select name="roleInfo.isValidate" list="#{'1':'有效','0':'无效'}" cssClass="editColumnSelectItemMust"/>
				</td>
			</tr>
			
			<tr height="40" valign="bottom" >
         		<td colspan="6" align="center"  class="searchColumnText">
	           		<table >
    					<tr>
        					<td align="center" width="70" class="simpleButton" onclick="doSearch()">查询</td>
        					<td>&nbsp;</td>
        					<td align="center" width="70" class="simpleButton" onclick="doSearch()">重置</td>
    					</tr>
					</table>
         		</td>
     		</tr>
			<tr>
                <td class="menuTableRowBlank" > </td>
            </tr>
		</table>
		<!-- 查询条件End -->

		<!-- 列表显示Start -->		
		<table width="950" border="0" height="350" cellpadding="0" cellspacing="0">
			<tr height="400">
				<td valign="top" align="left" width="950" style="border: 1px solid #cccccc;" id="tdContent">
					<table width="930" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
						<col width="40" />
						<col width="100" />

						<tr height="30px">
							<th class="leftMostListTableHead" >
								<input type="checkbox" name="deleteListAll"
									onclick="checkSelectedAll(this)" />
							</th>
							<th class="listTableHead" 
								onclick="setOrderBy('instancess.userName')">
								<s:text name="roleInfo.roleName"/>    <!-- 角色名称 -->
							</th>
						</tr>
					</table>
					<div style="overflow: scroll; height: 310px; width: 950px;">
						<table border="0" cellpadding="0" cellspacing="0" width="930px" id="tableContent" style="border-collapse: collapse">
							<col width="40" />
							<col width="100" />
						</table>
					</div>
					<table width="100%">
            			<j:pageControl param_theme="1"/>
        			</table> 
				</td>
			</tr>
		</table>
		<!-- 列表显示End -->		
	</body>
</html>
