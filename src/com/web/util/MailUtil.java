package com.web.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import freemarker.template.Template;

public class MailUtil {
	
	private FreeMarkerConfigurer freeMarkerConfigurer;
	
	public String send() throws Exception{
		JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();

		// 设定mail server
		senderImpl.setHost("smtp.qq.com");

		// 建立邮件消息,发送简单邮件和html邮件的区别
		MimeMessage mailMessage = senderImpl.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage);
		
		// 设置收件人，寄件人
		messageHelper.setTo("1280172972@qq.com");
		messageHelper.setFrom("1061521752@qq.com");
		messageHelper.setSubject("测试HTML邮件！");
		// true 表示启动HTML格式的邮件
		// 装载模板   
		//InputStream inputStream = getClass().getClassLoader().getResourceAsStream("config/mail.properties");
		//Properties properties = new Properties();
		
		Map<String, String> map  = new HashMap<String, String>();  
		map.put("businessno", "businessno");
		map.put("href1", "href1");
		map.put("voucherTypeStr", "voucherTypeStr");
		map.put("sysURL", "http://192.168.1.100:8080/costmcs");
		map.put("userCode", "Kobe");
		map.put("nowDate", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		Template tpl = freeMarkerConfigurer.getConfiguration().getTemplate("noticeMailTemp2.ftl");  
        String emailConc = FreeMarkerTemplateUtils.processTemplateIntoString(tpl, map); 
		messageHelper.setText(emailConc,true);
		System.out.println(emailConc);
		senderImpl.setUsername("1061521752@qq.com"); // 根据自己的情况,设置username
		senderImpl.setPassword("YuRuJun0911"); // 根据自己的情况, 设置password
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", "true"); // 将这个参数设为true，让服务器进行认证,认证用户名和密码是否正确
		prop.put("mail.smtp.timeout", "25000");
		senderImpl.setJavaMailProperties(prop);
		// 发送邮件
		//senderImpl.send(mailMessage);

		System.out.println("邮件发送成功..");
		return "";
	}
}
