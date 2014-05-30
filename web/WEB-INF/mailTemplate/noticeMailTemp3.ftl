<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title></title>  
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset="utf-8">  
<style type="text/css">  
body {  
    font-size: 14px;  
    line-height: 1.5  
}  
</style>  
</head>  
<body>  
    <table cellspacing="0" cellpadding="20">  
        <tr>  
            <td>  
                <table width="800" cellspacing="0" cellpadding="1">
                    <tr>  
                        <td bgcolor="#448CBB" align="left"  
                            style="font-family:'lucida grande',tahoma,'bitstream vera sans',helvetica,sans-serif;line-height:150%;color:#FFF;font-size:24px;font-weight:bold;padding:4px">   
                            费控管理系统  
                        <th></th>  
                    </tr>  
                    <tr>  
                        <td bgcolor="#448CBB">  
                            <table width="100%" cellspacing="0" bgcolor="#FFFFFF"  
                                cellpadding="20">  
                                <tr>  
                                    <td  
                                        style="font-family:'lucida grande',tahoma,'bitstream vera sans',helvetica,sans-serif;line-height:150%;color:#000;font-size:14px;word-break:break-all">  
                                        ${userCode}，您好：  
                                        <blockquote>  
                                            <br> <strong>${voucherTypeStr}申请单${businessno}已经审批通过。</strong><br>  
                                        </blockquote> <br> <br>费控管理系统<br> <a  
                                        href="${sysURL}" target="_blank">${sysURL}</a>  
                                        <br>发送时间：${nowDate}<br> <br>此邮件为系统自动发出，请勿回复。</td>  
                                          
                                </tr>  
                            </table></td>  
                    </tr>  
                </table></td>  
        </tr>  
    </table>  
</body>  
</html>  
