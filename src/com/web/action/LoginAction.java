package com.web.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.web.pojo.MenuInfo;
import com.web.pojo.UserInfo;
import com.web.service.RoleInfoService;
import com.web.service.UserInfoService;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	/**存放登陆用户所属角色下可见的菜单*/
	private List<MenuInfo> menuInfoList;
	
	/**用户管理业务层接口*/
	private UserInfoService userInfoService;
	
	/**角色管理业务借口*/
	private RoleInfoService roleInfoService;
	
	public String login(){
		//首先根据用户输入的账号找到对应的用户记录
		UserInfo user = userInfoService.findUserInfoByPrimaryKey("");
		//然后根据该用户所属的角色,查找出该角色下的可见菜单
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
