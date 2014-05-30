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

		<title>����ϵͳ</title>
		<link href="<%=context %>/css/register.css" rel="stylesheet" type="text/css" />
		<script src="<%=context %>/js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript">
			$(function(){
			    $('.rem').click(function(){
			        $(this).toggleClass('selected');
			    })
			
			    $('#signup_select').click(function(){
			        $('.form_row ul').show();
			        event.cancelBubble = true;
			    })
			
			    $('#d').click(function(){
			        $('.form_row ul').toggle();
			        event.cancelBubble = true;
			    })
			
			    $('body').click(function(){
			        $('.form_row ul').hide();
			    })
			
			    $('.form_row li').click(function(){
			        var v  = $(this).text();
			        $('#signup_select').val(v);
			        $('.form_row ul').hide();
			    })
			})
		</script>

	</head>
	
	<body>
		<div class="signup_container">
			<h1 class="signup_title">�û���½</h1>
			<img src="<%=context %>/images/login/people.png" id="admin" />
			<div id="signup_forms" class="signup_forms clearfix" align="center">
				<form class="signup_form_form" id="signup_form" method="post" action="" >
					<div class="form_row first_row">
						<label for="signup_email">
							�������û���
						</label>
						<div class='tip ok'></div>
						<input type="text" name="user[email]" placeholder="�������û���" id="signup_name" data-required="required">
					</div>
					<div class="form_row">
						<label for="signup_password">
							����������
						</label>
						<div class="tip error"></div>
						<input type="password" name="user[password]" placeholder="����������" id="signup_password" data-required="required">
					</div>
				</form>
			</div>
	
			<div class="login-btn-set">
				<div class="rem">
					��ס��
				</div>
				<a href="javascript:void(0)" class="login-btn"></a>
			</div>
		</div>
	</body>
</html>
