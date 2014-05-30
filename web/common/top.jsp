<%@ page contentType="text/html;charset=GBK" language="java" %>
<%
    String context = request.getContextPath();

%>
<html>
<head>
    <base target="_self">
    <title>Untitled Document</title>
    <script type="text/javascript">
        function logout(){
            top.location = "<%=context%>/logout.jsp";
        }
    </script>
</head>

<body style="margin:0px;padding:0px;background-image:url(<%=context%>/images/frame/t_bg.jpg)">
	<table width="100%" cellpadding="0" cellspacing="0" height="50px" border="0">
	    <tr height="">
	        <td align="right" width="300">
	        	<iframe src="<%=context%>/common/userStatus.jsp" width="100%" height="50" frameborder="0" scrolling="no"></iframe> 
	        </td>
	    </tr>
	</table>
</body>
</html>
