<%@ page contentType="text/html;charset=GBK" language="java" %>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragrma", "no-cache");
    response.setDateHeader("Expires", 0);
    String context = request.getContextPath();
    
%>

<html>
<head>
    <title>管理系统</title>
</head>
<frameset rows="70,*,20" cols="*" frameborder="no" >
    <frame src="<%=context%>/common/top.jsp" name="topFrame" scrolling="NO" noresize>
    <frameset cols="135,*" frameborder="no" id="fstMain">
    	<frame src="<%=context%>/common/menu.jsp" name="leftFrame" scrolling="NO" noresize>
        <frame src="<%=context%>/common/welcome.jsp" name="mainFrame" scrolling="NO" noresize>
    </frameset>
    <frame src="<%=context%>/common/bottom.jsp" name="footFrame" scrolling="NO" noresize>
</frameset>

</html>