package com.web.service;

import java.util.List;

import com.web.pojo.MenuInfo;

public interface MenuInfoService {
	
	public MenuInfo findMenuInfoByPrimaryKey(String id);
	
	/**
	 * ��ȡ���еĲ˵�����
	 * @return
	 */
	public List<MenuInfo> findAllMenuInfos();
	
	/**
	 * ����˵���Ϣ
	 * @param menuInfo ��Ҫ����Ķ���
	 */
	public void save(MenuInfo menuInfo);
}
