<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%
    String defStyle = "color:#ffffff;font-size:16px;padding-right:15px;font-family:΢���ź�;font-weight:bold";
	//OnlineUser onlineUser = (OnlineUser) session.getAttribute(SysParameter.ONLINEUSER);
	GregorianCalendar ca = new GregorianCalendar(); 
	String period = "�����";
	if(ca.get(GregorianCalendar.AM_PM) == 1){
		period = "�����";
	}
%>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function timeInfo(){
            var myDate = new Date();
            myDate.getFullYear();    //��ȡ���������(4λ,1970-????)
            myDate.getMonth();       //��ȡ��ǰ�·�(0-11,0����1��)
            myDate.getDate();        //��ȡ��ǰ��(1-31)

            myDate.getDay();         //��ȡ��ǰ����X(0-6,0����������)

            myDate.toLocaleDateString();     //��ȡ��ǰ����
            var mytime=myDate.toLocaleTimeString();     //��ȡ��ǰʱ��
            var hour = myDate.getHours(); //��ȡ��ǰСʱ��  
            document.getElementById("spanTime").innerText = myDate.toLocaleString( );        //��ȡ������ʱ��
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