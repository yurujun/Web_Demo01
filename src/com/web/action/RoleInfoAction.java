package com.web.action;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.web.pojo.RoleInfo;
import com.web.service.RoleInfoService;

public class RoleInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private RoleInfo roleInfo;
	
	private RoleInfoService roleInfoService;
	
	/**���ǰ̨ҳ���û���dtree��ѡ�е�checkbox��id*/
	private String menuIdList;
	
	/**
     * ��־��ӡ��
     */
    private static final Log logger = LogFactory.getLog(RoleInfoAction.class);
	
	/**
	 * ��ȡ�û���Ϣ�б�
	 */
	public String list(){
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() start ......");
        }
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() end ......");
        }
		return SUCCESS;
	}
	
	public String beforeAdd(){
		
		return "add";
	}
	
	/**
	 * ����û���Ϣ
	 * @return 
	 */
	public String add(){
		try{
			System.out.println(menuIdList);
			System.out.println(roleInfoService == null);
			roleInfoService.save(roleInfo,menuIdList);
		}catch(Exception e){
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public void setMenuIdList(String menuIdList) {
		this.menuIdList = menuIdList;
	}

	public String getMenuIdList() {
		return menuIdList;
	}

	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

	public RoleInfo getRoleInfo() {
		return roleInfo;
	}
	
	@Autowired
	public void setRoleInfoService(RoleInfoService roleInfoService) {
		this.roleInfoService = roleInfoService;
	}

	public RoleInfoService getRoleInfoService() {
		return roleInfoService;
	}

}
