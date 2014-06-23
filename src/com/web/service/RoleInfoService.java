package com.web.service;

import java.util.List;

import org.apache.struts2.custom.common.Page;

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
	 * 获取分页记录
	 * @param curpage   当前页
	 * @param pageSize  页面容量
	 * @param filter    查询条件
	 * @param orderBy   排序条件,为null表示不需要排序
	 * @return
	 */
	public Page getListByPage(int curpage ,int pageSize ,String filter , String orderBy );
	
	/**
	 * 保存角色信息
	 * @param roleInfo
	 */
	public void save(RoleInfo roleInfo,String menuIds);
	
	/**
	 * 获取所有角色信息的List集合
	 * @return
	 */
	public List<RoleInfo> getListByList();
}
