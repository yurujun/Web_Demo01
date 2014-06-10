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
	
	/**存放前台页面用户在dtree中选中的checkbox的id*/
	private String menuIdList;
	
	/**
     * 日志打印类
     */
    private static final Log logger = LogFactory.getLog(RoleInfoAction.class);
	
	/**
	 * 获取用户信息列表
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
	 * 添加用户信息
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
