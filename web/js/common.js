var errorInfo; //用来在页面中显示错误信息

/**
 * 解决字符为空时页面显示 null
 * @param str
 * @return
 */
function checkIsNull(str)
{
	if (str == null || typeof(str)== 'undefined')
	{
		return "";
	}
	return str;
		
}

/**
 * 表单提交之前对必须输入的输入框做是否为空的检查
 * @param formObj  需要检查的表单
 * @return
 */
function checkParamsNullBeforeSubmit(formObj){
	var _element,result = true;
	for(var i=0;i<formObj.elements.length;i++){
		_element = formObj.elements[i]; 
		if(_element.className.indexOf("Must") > -1){
			result = isNull(_element.value);
			if(result){
				//如果必须输入的输入框在提交时为空值,则首先聚焦到该输入框,然后增加提示
				formObj.elements[i].focus();
				formObj.elements[i].className = "editColumnTextFieldError";
				$("#errorSpan").text("提示信息:请输入内容,不能为空!");
				window.setTimeout("clearErrMsg()",3000);
				return result;
			}
		}
	}
	return result;
}

/**
 * 清除页面的错误提示信息
 * @return
 */
function clearErrMsg(){
	$("#errorSpan").text("");
}

function getFkValue(url , valueItem , displayItem ,windowArg){
    var winArgs = windowArg;
    if(winArgs && winArgs.length>0){
    }else{
        winArgs = "dialogLeft:100px;dialogTop:100px;dialogHeight:600px;dialogWidth:950px;center:yes;resizable:yes;status:no";
    }
    var retValue = window.showModalDialog(url,"",winArgs);
    if(retValue && retValue.length>0){
        var spValue =  retValue.split("∪");
        valueItem.value = spValue[0];
        displayItem.value = spValue[01];
    }
}

/**
 * 点击dtree树形菜单的单选按钮时将选中的菜单名称显示到上级菜单输入框中
 * @param nodeId
 * @return
 */
function showParentMenuNameByClickRadio(nodeId){
	var nname = menuTree.aNodes[nodeId].name;   //此处得到的是所选择节点的name值，根据需要，同样可得到其他的值
	var nid = menuTree.aNodes[nodeId].id;
	$("#parentId").val(nid);
	$("#parentName").val(nname);
}

/**
 * 验证邮箱格式是否正确
 * @param email   需要验证的值 
 * @return true   表示邮箱格式正确
 * @return false  表示邮箱格式错误
 */
function isEmail(emailObj){
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	//如果为空值,则不做验证
	if(isNull(emailObj.value)){
		$(emailObj).attr("class","editColumnTextField");
		return ;
	}
	
	if (!reg.test(emailObj.value)) {
		$(emailObj).attr("class","editColumnTextFieldError");
		$(emailObj).focus();
		errorInfo = "提示信息:邮箱格式错误!";
		$("#errorSpan").text(errorInfo);
		window.setTimeout("clearErrMsg()",3000);
		return false;
	 } 
	$(emailObj).attr("class","editColumnTextField");
	return true;
}

/**
 * 验证是否为空
 * @param str
 * @return true   是空值
 * @return false  不是空值
 */
function isNull(str){
	if (str == null || typeof(str)== 'undefined' || str == "")
	{
		return true;
	}
	return false;
}

/**
 * 验证电话号码是否正确
 * @param phoneNumber
 * @return true  正确
 * @return false 错误
 */
function isMobilePhone(phoneNumber){
	var reg = /^1[3|4|5|8][0-9]\d{4,8}$/;
	//如果为空值,则不做验证
	if(isNull(phoneNumber.value)){
		$(phoneNumber).attr("class","editColumnTextField");
		return ;
	}
	if (!reg.test(phoneNumber.value)) {
		$(phoneNumber).attr("class","editColumnTextFieldError");
		$(phoneNumber).focus();
		errorInfo = "提示信息:移动电话格式错误!";
		$("#errorSpan").text(errorInfo);
		window.setTimeout("clearErrMsg()",3000);
		return false;
	 } 
	$(phoneNumber).attr("class","editColumnTextField");
	return true;
}

/**
 * 将表单重置
 * @param formId 需要重置的表单id
 * @return
 */
function resetForm(formId){
	document.getElementById(formId).reset();
}

/**
 * 表单提交,同时将操作按钮置灰
 * @param formObj   
 * @param actionUrl
 * @return
 */
function submitForm(buttonObj,formObj){
	$(buttonObj).attr("disabled","disabled");       //将按钮置灰,不可操作,防止用户频繁操作
	$(formObj).submit();
}


/**
 * 显示日历
 * @param obj 需要显示日历的输入框对象
 * @return
 */
function WdatePicker(obj){
	//datetimepicker()显示日期和时间,datepicker()只显示日期,timepicker()只显示时间
	$(obj).datepicker({
		changeYear : true,
		changeMonth : true,
		numberOfMonths : 1,
		showButtonPanel: true
	});
}

