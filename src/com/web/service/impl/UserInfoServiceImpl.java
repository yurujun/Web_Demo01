package com.web.service.impl;

import org.apache.struts2.custom.dao.GenericDaoHibernate;

import com.web.pojo.UserInfo;
import com.web.service.UserInfoService;

public class UserInfoServiceImpl extends GenericDaoHibernate<UserInfo, String> implements UserInfoService {

	public void save(UserInfo obj) {
		super.save(obj);
	}

	public UserInfo findUserInfoByPrimaryKey(String id) {
		return super.get(id);
	}
	
}
