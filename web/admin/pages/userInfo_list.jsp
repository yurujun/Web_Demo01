<%@ page contentType="text/html;charset=GBK" language="java"%>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: ΢���ź�;font-size:16px";
%>
<html>
	<head>
		<title>�û��б�</title>
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/pageNavi.css">
		<link rel="stylesheet" type="text/css" href="<%=context %>/css/themes/common.css">
		<script type="text/javascript" src="<%=context %>/css/js/list.js"></script>
		<script type="text/javascript" src="<%=context %>/css/js/jquery-1.10.1.min.js"></script>

		<script type="text/javascript">
	        function init() {
	        	initListTableMenu();
	           	initTableRow(document.getElementById("tableContent"));
	        }
 
	        function doSearch() {
	            document.getElementById("errorSpan").innerHTML = "";
	            document.getElementById("errorSpan").style.display = "block";
	            var errorInfo = "";
	            if (errorInfo.length == 0) {
	                frmSearch.submit();
	            } else {
	                document.getElementById("errorSpan").innerHTML = errorInfo;
	                window.setTimeout("clearErrMsg()",3000);
	            }
	        }
 
	        function doAdd() {
	            window.location = "/eval/userInfoAction!beforeAdd.action";
	        }
	 
	        function doEdit() {
	            var pk = getSingleSelectedRow();
	            if (pk) {
	                frmUpdate.userId.value = pk;
	                frmUpdate.submit();
	            } else {
	                alert("����ȷѡ����Ҫ�༭�ļ�¼")
	            }
	        }
    </script>
	</head>
	<body>
		
		<!-- ��ѯ����Start -->
		<table width="1200" border="0" height="120" cellpadding="0" cellspacing="0">
			<tr height="30">
			    <td class="editColumnTitle">
			       	 ��������
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 ��������
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 ��������
			    </td>
			    <td class="rightMostEditColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			</tr>
			
			<tr height="30">
			    <td class="editColumnTitle">
			       	 ��������
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 ��������
			    </td>
			    <td class="editColumnText">
			        <input type="text" style="width: 90%;">
			    </td>
			    <td class="editColumnTitle">
			       	 ��������
			    </td>
			    <td class="rightMostEditColumnText">
			        <input type="text" style="width: 90%;">
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
		<table width="1200px" border="0" height="280" cellpadding="0" cellspacing="0">
			<tr height="280">
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
								<nobr>��½��</nobr>
							</th>
							<th class="listTableHead"
								onclick="setOrderBy('instancess.userExtInfo.realName')">
								<nobr>����</nobr>
							</th>

							<th class="listTableHead"
								onclick="setOrderBy('instancess.deptInfo.deptName')">
								<nobr>Ժϵ����</nobr>
							</th>

							<th class="listTableHead"
								onclick="setOrderBy('instancess.roleName.roleId')">
								<nobr>��ɫ</nobr>
							</th>

							<th class="listTableHead"
								onclick="setOrderBy('instancess.roleScope')">
								<nobr>Ȩ�޷�Χ</nobr>
							</th>
							<th class="listTableHead" onclick="setOrderBy('instancess.open')">
								<nobr>����</nobr>
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
								<col width="200" />
								<col width="80" />
								<%
									for(int i=0;i<20;i++){
								%>
								<tr height="30">
									<td class="listTableText" style="display: none;">����Ա</td>
									<td class="leftMostListTableText">
										<input type="checkbox" name="deleteList" value="1" />
									</td>
									<td class="listTableText">admin</td>
									<td class="listTableText">����Ա</td>
									<td class="listTableText">����</td>
									<td class="listTableText">����Ա</td>
									<td class="listTableText">ȫУ</td>
									<td class="listTableText">����</td>
								</tr>
								<%
									}
								%>
						</table>
					</div>
					<table width="100%">
						<tr height="30px">
							<td class="tr-pageControl">
								<table width="100%" cellpadding="2" cellspacing="0" border="0">
									<tr>
										<td width="140" align="center">
											<nobr>
												<font style="font-size: 13px;">ҳ��������</font>
												<select style="width: 60" onchange="setPageSize(this)">
													<option value="10">
														10
													</option>
													<option value="20" selected>
														20
													</option>
													<option value="30">
														30
													</option>
													<option value="40">
														40
													</option>
												</select>
											</nobr>
										</td>
										<td width="80" align="center">
											<nobr>
												<div class="pagination-btn-separator"></div>
												<a href="javascript:setPage(1)"
													class="l-btn l-btn-plain l-btn-disabled" id=""><span
													class="l-btn-left"><span class="l-btn-text"><span
															class="l-btn-empty pagination-first">&nbsp;</span>
													</span>
												</span>
												</a>
												<a href="javascript:setPage(1)"
													class="l-btn l-btn-plain l-btn-disabled" id=""><span
													class="l-btn-left"><span class="l-btn-text"><span
															class="l-btn-empty pagination-prev">&nbsp;</span>
													</span>
												</span>
												</a>
											</nobr>
										</td>
										<td width="160" align="center">
											<div class="pagination-btn-separator"
												style="font-size: 13px; width: 100%">
												<nobr>
													&nbsp;&nbsp;��
													<input type="text" value="1" size="3"
														onkeypress="setCustomPage(event,this)"
														style="border: 0; border-bottom: 1 solid black; background: #ffffff; text-align: center">
													ҳ����&nbsp;1&nbsp;ҳ
												</nobr>
											</div>
										</td>
										<td width="80" align="center">
											<nobr>
												<div class="pagination-btn-separator"></div>
												<a href="javascript:setPage(1)"
													class="l-btn l-btn-plain l-btn-disabled" id=""><span
													class="l-btn-left"><span class="l-btn-text"><span
															class="l-btn-empty pagination-next">&nbsp;</span>
													</span>
												</span>
												</a>
												<a href="javascript:setPage(1)"
													class="l-btn l-btn-plain l-btn-disabled" id=""><span
													class="l-btn-left"><span class="l-btn-text"><span
															class="l-btn-empty pagination-last">&nbsp;</span>
													</span>
												</span>
												</a>
											</nobr>
										</td>
										<td width="40">
											<div class="pagination-btn-separator"></div>
											<a href="javascript:setPage(1)" class="l-btn l-btn-plain"
												id=""><span class="l-btn-left"><span
													class="l-btn-text"><span
														class="l-btn-empty pagination-load">&nbsp;</span>
												</span>
											</span>
											</a>
										</td>
										<td style="text-align: right; font-size: 13px;">
											<nobr>
												��ʾ 1 �� 4 ���� 4 ��¼&nbsp;&nbsp;&nbsp;&nbsp;
											</nobr>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<!-- �б���ʾEnd -->		
	</body>
</html>
