<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    String defStyle = "font-family: Œ¢»Ì—≈∫⁄;font-size:16px";
%>
<!doctype html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=context %>/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="<%=context %>/css/jquery-ui-custom.css">
	<script src="<%=context %>/js/jquery-1.8.2.min.js"></script>
	<script src="<%=context %>/js/datePicker/jquery-ui.js" type="text/javascript"></script>
	<script src="<%=context %>/js/jquery.ui.datepicker-zh-CN.js"></script>
	<script type="text/javascript">
		function isEmail(){
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
			var mail = document.getElementById("email").value;
			 if (!reg.test(mail)) {
				alert("error");
			 } else {
				alert("right");
			 }
		}
	</script>
</head>
<body>

<form>
	<input type="text" size="15" class="qq" id="email"/>
	<button onclick="isEmail();">—È÷§</button>
	<br>
 	<input type="text" size="15" class="datePicker"/>
</form>
<script type="text/javascript">
		$('.datePicker').datepicker({
			showButtonPanel: true
		});
	</script>
</body>
</html>
