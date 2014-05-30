package com.web.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.web.pojo.UserInfo;
import com.web.service.UserInfoService;

public class UserInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private UserInfo userInfo;
	
	private UserInfoService userInfoService;
	
	/**
     * ��־��ӡ��
     */
    private static final Log logger = LogFactory.getLog(UserInfoAction.class);
	
	/**
	 * ��ȡ�û���Ϣ�б�
	 */
	public String list(){
		if(logger.isDebugEnabled())
        {
            logger.debug("UserInfoAction.list() start ......");
        }
		if(logger.isDebugEnabled())
        {
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
		System.out.println(userInfo.getUseraccount());
		System.out.println(userInfoService == null);
		userInfoService.save(userInfo);
		return SUCCESS;
	}
	
	@Autowired
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	
	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
}
