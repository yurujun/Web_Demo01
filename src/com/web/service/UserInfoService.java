package com.web.service;

import com.web.pojo.UserInfo;

public interface UserInfoService {
	
	public UserInfo findUserInfoByPrimaryKey(String id);
	
	/**
	 * 保存用户信息
	 * @param userInfo 需要保存的对象
	 */
	public void save(UserInfo userInfo);
}
