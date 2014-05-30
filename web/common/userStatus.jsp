<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%
    String defStyle = "color:#ffffff;font-size:16px;padding-right:15px;font-family:微软雅黑;font-weight:bold";
	//OnlineUser onlineUser = (OnlineUser) session.getAttribute(SysParameter.ONLINEUSER);
	GregorianCalendar ca = new GregorianCalendar(); 
	String period = "上午好";
	if(ca.get(GregorianCalendar.AM_PM) == 1){
		period = "下午好";
	}
%>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function timeInfo(){
            var myDate = new Date();
            myDate.getFullYear();    //获取完整的年份(4位,1970-????)
            myDate.getMonth();       //获取当前月份(0-11,0代表1月)
            myDate.getDate();        //获取当前日(1-31)

            myDate.getDay();         //获取当前星期X(0-6,0代表星期天)

            myDate.toLocaleDateString();     //获取当前日期
            var mytime=myDate.toLocaleTimeString();     //获取当前时间
            var hour = myDate.getHours(); //获取当前小时数  
            document.getElementById("spanTime").innerText = myDate.toLocaleString( );        //获取日期与时间
            window.setTimeout("timeInfo()",1000);
        }
    </script>
</head>
<body bgcolor="#3693d0" style="margin:0px" onload="timeInfo()">
	<table width="100%" cellpadding="0" cellspacing="0">
	    <tr height="30px">
	        <td align="right" style="<%=defStyle%>">
	        	<span id="spanTime"></span> 
	        	<span id="spanWeek"></span>
	        </td>
	    </tr>
	    <tr height="20px">
	        <td align="right" style="<%=defStyle%>" id="period"><%=period %>,Admin </td>
	    </tr>
	</table>
</body>
</html>