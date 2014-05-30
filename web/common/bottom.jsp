<%@ page contentType="text/html;charset=GBK" language="java" %>
<%
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragrma","no-cache");
    response.setDateHeader("Expires",0);
    String context = request.getContextPath();
%>

<html>
<head>
    <title>page</title>
</head>
<body style="margin:0px;background-image:url(<%=context%>/images/frame/hr.jpg)">
</body>
</html>