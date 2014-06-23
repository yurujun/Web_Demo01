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
	
	/**���ǰ̨ҳ���û���dtree��ѡ�е�checkbox��id*/
	private String menuIdList;
	
	/**
     * ��־��ӡ��
     */
    private static final Log logger = LogFactory.getLog(RoleInfoAction.class);
    
    /**
     * ׼����ȡ��ɫ��Ϣ�б�
     * @return
     */
    public String beforeList(){
		return "list";
	}
	
	/**
	 * ��ȡ�û���Ϣ�б�
	 */
	public String list(){
		if(logger.isDebugEnabled()){
            logger.debug("UserInfoAction.list() start ......");
        }
		
		try{
			List<RoleInfo> list = new ArrayList<RoleInfo>();
			list = roleInfoService.getListByList();
			
			// ����ѯ����������json����ʽд��ҳ����
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
	 * ����û���Ϣ
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
			
			// ����ѯ����������json����ʽд��ҳ����
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
