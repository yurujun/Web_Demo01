package com.web.init;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class SysParameter extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig servletConfig) throws ServletException {
		System.out.println("ϵͳ��ʼ��.......");
		System.out.println(servletConfig.getInitParameter("base"));
    }
}
