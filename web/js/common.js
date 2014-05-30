var errorInfo; //������ҳ������ʾ������Ϣ

/**
 * ����ַ�Ϊ��ʱҳ����ʾ null
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
 * ���ύ֮ǰ�Ա����������������Ƿ�Ϊ�յļ��
 * @param formObj  ��Ҫ���ı�
 * @return
 */
function checkParamsNullBeforeSubmit(formObj){
	var _element,result = true;
	for(var i=0;i<formObj.elements.length;i++){
		_element = formObj.elements[i]; 
		if(_element.className.indexOf("Must") > -1){
			result = isNull(_element.value);
			if(result){
				//��������������������ύʱΪ��ֵ,�����Ⱦ۽����������,Ȼ��������ʾ
				formObj.elements[i].focus();
				formObj.elements[i].className = "editColumnTextFieldError";
				$("#errorSpan").text("��ʾ��Ϣ:����������,����Ϊ��!");
				window.setTimeout("clearErrMsg()",3000);
				return result;
			}
		}
	}
	return result;
}

/**
 * ���ҳ��Ĵ�����ʾ��Ϣ
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
        var spValue =  retValue.split("��");
        valueItem.value = spValue[0];
        displayItem.value = spValue[01];
    }
}

/**
 * ���dtree���β˵��ĵ�ѡ��ťʱ��ѡ�еĲ˵�������ʾ���ϼ��˵��������
 * @param nodeId
 * @return
 */
function showParentMenuNameByClickRadio(nodeId){
	var nname = menuTree.aNodes[nodeId].name;   //�˴��õ�������ѡ��ڵ��nameֵ��������Ҫ��ͬ���ɵõ�������ֵ
	var nid = menuTree.aNodes[nodeId].id;
	$("#parentId").val(nid);
	$("#parentName").val(nname);
}

/**
 * ��֤�����ʽ�Ƿ���ȷ
 * @param email   ��Ҫ��֤��ֵ 
 * @return true   ��ʾ�����ʽ��ȷ
 * @return false  ��ʾ�����ʽ����
 */
function isEmail(emailObj){
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	//���Ϊ��ֵ,������֤
	if(isNull(emailObj.value)){
		$(emailObj).attr("class","editColumnTextField");
		return ;
	}
	
	if (!reg.test(emailObj.value)) {
		$(emailObj).attr("class","editColumnTextFieldError");
		$(emailObj).focus();
		errorInfo = "��ʾ��Ϣ:�����ʽ����!";
		$("#errorSpan").text(errorInfo);
		window.setTimeout("clearErrMsg()",3000);
		return false;
	 } 
	$(emailObj).attr("class","editColumnTextField");
	return true;
}

/**
 * ��֤�Ƿ�Ϊ��
 * @param str
 * @return true   �ǿ�ֵ
 * @return false  ���ǿ�ֵ
 */
function isNull(str){
	if (str == null || typeof(str)== 'undefined' || str == "")
	{
		return true;
	}
	return false;
}

/**
 * ��֤�绰�����Ƿ���ȷ
 * @param phoneNumber
 * @return true  ��ȷ
 * @return false ����
 */
function isMobilePhone(phoneNumber){
	var reg = /^1[3|4|5|8][0-9]\d{4,8}$/;
	//���Ϊ��ֵ,������֤
	if(isNull(phoneNumber.value)){
		$(phoneNumber).attr("class","editColumnTextField");
		return ;
	}
	if (!reg.test(phoneNumber.value)) {
		$(phoneNumber).attr("class","editColumnTextFieldError");
		$(phoneNumber).focus();
		errorInfo = "��ʾ��Ϣ:�ƶ��绰��ʽ����!";
		$("#errorSpan").text(errorInfo);
		window.setTimeout("clearErrMsg()",3000);
		return false;
	 } 
	$(phoneNumber).attr("class","editColumnTextField");
	return true;
}

/**
 * ��������
 * @param formId ��Ҫ���õı�id
 * @return
 */
function resetForm(formId){
	document.getElementById(formId).reset();
}

/**
 * ���ύ,ͬʱ��������ť�û�
 * @param formObj   
 * @param actionUrl
 * @return
 */
function submitForm(buttonObj,formObj){
	$(buttonObj).attr("disabled","disabled");       //����ť�û�,���ɲ���,��ֹ�û�Ƶ������
	$(formObj).submit();
}


/**
 * ��ʾ����
 * @param obj ��Ҫ��ʾ��������������
 * @return
 */
function WdatePicker(obj){
	//datetimepicker()��ʾ���ں�ʱ��,datepicker()ֻ��ʾ����,timepicker()ֻ��ʾʱ��
	$(obj).datepicker({
		changeYear : true,
		changeMonth : true,
		numberOfMonths : 1,
		showButtonPanel: true
	});
}

