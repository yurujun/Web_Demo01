package com.web.service;

import com.web.pojo.UserInfo;

public interface UserInfoService {
	
	public UserInfo findUserInfoByPrimaryKey(String id);
	
	/**
	 * �����û���Ϣ
	 * @param userInfo ��Ҫ����Ķ���
	 */
	public void save(UserInfo userInfo);
}
