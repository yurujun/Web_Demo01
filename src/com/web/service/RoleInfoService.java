package com.web.service;

import java.util.List;

import com.web.pojo.MenuInfo;
import com.web.pojo.RoleInfo;

public interface RoleInfoService {
	/**
	 * 根据角色id查找出该角色的可见菜单
	 * @param id 角色id
	 * @return
	 */
	public List<MenuInfo> findMenuInfosByPrimarykey(String id);
	
	/**
	 * 保存角色信息
	 * @param roleInfo
	 */
	public void save(RoleInfo roleInfo,String menuIds);
}
