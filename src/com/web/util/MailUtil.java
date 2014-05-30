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

		// �趨mail server
		senderImpl.setHost("smtp.qq.com");

		// �����ʼ���Ϣ,���ͼ��ʼ���html�ʼ�������
		MimeMessage mailMessage = senderImpl.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage);
		
		// �����ռ��ˣ��ļ���
		messageHelper.setTo("1280172972@qq.com");
		messageHelper.setFrom("1061521752@qq.com");
		messageHelper.setSubject("����HTML�ʼ���");
		// true ��ʾ����HTML��ʽ���ʼ�
		// װ��ģ��   
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
		senderImpl.setUsername("1061521752@qq.com"); // �����Լ������,����username
		senderImpl.setPassword("YuRuJun0911"); // �����Լ������, ����password
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", "true"); // �����������Ϊtrue���÷�����������֤,��֤�û����������Ƿ���ȷ
		prop.put("mail.smtp.timeout", "25000");
		senderImpl.setJavaMailProperties(prop);
		// �����ʼ�
		//senderImpl.send(mailMessage);

		System.out.println("�ʼ����ͳɹ�..");
		return "";
	}
}
