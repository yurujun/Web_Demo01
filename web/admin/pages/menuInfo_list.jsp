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
		<title>用户列表</title>
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
				var url = contextRootPath + "/menuInfoAction_list.do";
				$.ajax({
			        type: "post",
			        dataType: "json",//定义返回的数据时JSON格式 
			        url : url,  
			        success: function(obj) { 
			        	var length = obj.data.length; 
			        	var content = "";
						for(var i=0;i<length;i++){
							content += "<tr height=\"30\">";
							content += "	<td class=\"leftMostListTableText\"><input type=\"checkbox\" name=\"deleteList\" value=\"1\" /></td>";
							content += "	<td class=\"listTableText\">"+obj.data[i]["menuName"]+"</td>";
							content += "	<td class=\"listTableText\">"+obj.data[i]["menuUrl"]+"</td>";
							content += "	<td class=\"listTableText\">"+obj.data[i]["parentId"]+"</td>";
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
		
		<!-- 查询条件Start -->
		<table width="1200" border="0" height="90" cellpadding="0" cellspacing="0">
			<tr height="30">
			    <td class="editColumnTitle">
			       	<s:text name="menuInfo.menuName"/>    <!-- 菜单名称 -->
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 <s:text name="menuInfo.isValidate"/>    <!-- 是否有效 -->
			    </td>
			    <td class="editColumnText">
					<s:select name="menuInfo.isValidate" list="#{'1':'有效','0':'无效'}" cssClass="editColumnSelectItemMust"/>
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
		<table width="1200px" border="0" height="450" cellpadding="0" cellspacing="0">
			<tr height="480">
				<td valign="top" align="left" width="1200px" style="border: 1px solid #cccccc;" id="tdContent">
					<table width="1180px" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
						<col width="40" />
						<col width="150" />
						<col width="200" />
						<col width="200" />
						<col width="200" />
						<col width="200" />
						<col width="80" />

						<tr height="30px">
							<th class="leftMostListTableHead">
								<input type="checkbox" name="deleteListAll"
									onclick="checkSelectedAll(this)" />
							</th>
							<th class="listTableHead"
								onclick="setOrderBy('instancess.userName')">
								<nobr>菜单名称</nobr>
							</th>
							<th class="listTableHead"
								onclick="setOrderBy('instancess.userExtInfo.realName')">
								<nobr>链接地址</nobr>
							</th>

							<th class="listTableHead"
								onclick="setOrderBy('instancess.deptInfo.deptName')">
								<nobr>父菜单</nobr>
							</th>

							<th class="listTableHead"
								onclick="setOrderBy('instancess.roleName.roleId')">
								<nobr>是否有效</nobr>
							</th>

						</tr>
					</table>
					<div style="overflow: scroll; height: 400px; width: 1200px">
						<table border="0" cellpadding="0" cellspacing="0" width="1180px" id="tableContent" style="border-collapse: collapse">
							<col width="40" />
							<col width="150" />
							<col width="200" />
							<col width="200" />
							<col width="200" />
							<col width="80" />
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
