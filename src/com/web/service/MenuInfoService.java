package com.web.service;

import java.util.List;

import org.apache.struts2.custom.common.Page;

import com.web.pojo.MenuInfo;

public interface MenuInfoService {
	
	public MenuInfo findMenuInfoByPrimaryKey(String id);
	
	/**
	 * 获取所有的菜单对象
	 * @return
	 */
	public List<MenuInfo> findAllMenuInfos();
	
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
	 * 保存菜单信息
	 * @param menuInfo 需要保存的对象
	 */
	public void save(MenuInfo menuInfo);
	
	/**
	 * 获取所有菜单信息的List集合
	 * @return
	 */
	public List<MenuInfo> getListByList();
}
