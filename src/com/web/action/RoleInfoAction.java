package com.web.action;


import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.custom.action.CustomAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.pojo.RoleInfo;
import com.web.service.RoleInfoService;

public class RoleInfoAction extends CustomAction {

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
     * 准备获取角色信息列表
     * @return
     */
    public String beforeList(){
		return "list";
	}
	
	/**
	 * 获取用户信息列表
	 */
	public String list(){
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() start ......");
        }
		
		try{
			List<RoleInfo> list = new ArrayList<RoleInfo>();
			list = roleInfoService.getListByList();
			
			// 将查询到的数据以json的形式写到页面中
            this.writeJSONData(list, new String[] {"roleName","isValidate"});
		} catch(Exception e){
			e.printStackTrace();
		}
		
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() end ......");
        }
		return NONE;
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
			roleInfoService.save(roleInfo,menuIdList);
		}catch(Exception e){
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String beforeFkSelect(){
		System.out.println("beforsFkSelect");
		return "fkSelect";
	}
	
	public String fkSelect(){
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() start ......");
        }
		
		try{
			List<RoleInfo> list = new ArrayList<RoleInfo>();
			list = roleInfoService.getListByList();
			
			// 将查询到的数据以json的形式写到页面中
            this.writeJSONData(list, new String[] {"roleId","roleName"});
		} catch(Exception e){
			e.printStackTrace();
		}
		
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() end ......");
        }
		return NONE;
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
