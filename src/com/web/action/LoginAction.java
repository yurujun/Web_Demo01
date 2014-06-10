package com.web.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.web.pojo.MenuInfo;
import com.web.pojo.UserInfo;
import com.web.service.RoleInfoService;
import com.web.service.UserInfoService;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	/**��ŵ�½�û�������ɫ�¿ɼ��Ĳ˵�*/
	private List<MenuInfo> menuInfoList;
	
	/**�û�����ҵ���ӿ�*/
	private UserInfoService userInfoService;
	
	/**��ɫ����ҵ����*/
	private RoleInfoService roleInfoService;
	
	public String login(){
		//���ȸ����û�������˺��ҵ���Ӧ���û���¼
		UserInfo user = userInfoService.findUserInfoByPrimaryKey("");
		//Ȼ����ݸ��û������Ľ�ɫ,���ҳ��ý�ɫ�µĿɼ��˵�
		menuInfoList = roleInfoService.findMenuInfosByPrimarykey("");
		return "loginSuc";
	}

	public void setMenuInfoList(List<MenuInfo> menuInfoList) {
		this.menuInfoList = menuInfoList;
	}

	public List<MenuInfo> getMenuInfoList() {
		return menuInfoList;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	
	public RoleInfoService getRoleInfoService() {
		return roleInfoService;
	}

	public void setRoleInfoService(RoleInfoService roleInfoService) {
		this.roleInfoService = roleInfoService;
	}
}
