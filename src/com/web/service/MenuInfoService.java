package com.web.service;

import java.util.List;

import com.web.pojo.MenuInfo;

public interface MenuInfoService {
	
	public MenuInfo findMenuInfoByPrimaryKey(String id);
	
	/**
	 * 获取所有的菜单对象
	 * @return
	 */
	public List<MenuInfo> findAllMenuInfos();
	
	/**
	 * 保存菜单信息
	 * @param menuInfo 需要保存的对象
	 */
	public void save(MenuInfo menuInfo);
}
