package com.web.action;


import com.opensymphony.xwork2.ActionSupport;
import com.web.service.DeptInfoService;

public class TestAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	
	private DeptInfoService deptInfoService;
	
	public String execute() throws Exception {
        System.out.println("struts==========================");//����̨�ϻ��ӡ����仰
        deptInfoService.test();
        return "success";
	}

	public void setDeptInfoService(DeptInfoService deptInfoService) {
		this.deptInfoService = deptInfoService;
	}

	public DeptInfoService getDeptInfoService() {
		return deptInfoService;
	}

}
