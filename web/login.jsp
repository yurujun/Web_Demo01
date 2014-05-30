<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: 微软雅黑;font-size:16px";
%>

<html>
	<head>

		<title>管理系统</title>
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
			<h1 class="signup_title">用户登陆</h1>
			<img src="<%=context %>/images/login/people.png" id="admin" />
			<div id="signup_forms" class="signup_forms clearfix" align="center">
				<form class="signup_form_form" id="signup_form" method="post" action="" >
					<div class="form_row first_row">
						<label for="signup_email">
							请输入用户名
						</label>
						<div class='tip ok'></div>
						<input type="text" name="user[email]" placeholder="请输入用户名" id="signup_name" data-required="required">
					</div>
					<div class="form_row">
						<label for="signup_password">
							请输入密码
						</label>
						<div class="tip error"></div>
						<input type="password" name="user[password]" placeholder="请输入密码" id="signup_password" data-required="required">
					</div>
				</form>
			</div>
	
			<div class="login-btn-set">
				<div class="rem">
					记住我
				</div>
				<a href="javascript:void(0)" class="login-btn"></a>
			</div>
		</div>
	</body>
</html>
