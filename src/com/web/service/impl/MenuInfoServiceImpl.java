package com.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.custom.common.Page;
import org.apache.struts2.custom.dao.GenericDaoHibernate;

import com.web.pojo.MenuInfo;
import com.web.service.MenuInfoService;

public class MenuInfoServiceImpl extends GenericDaoHibernate<MenuInfo, String> implements MenuInfoService {

	public MenuInfo findMenuInfoByPrimaryKey(String id) {
		return super.get(id);
	}

	public List<MenuInfo> findAllMenuInfos() {
		List<MenuInfo> menuInfoList = new ArrayList<MenuInfo>();
		menuInfoList = super.getAll(MenuInfo.class);
		return menuInfoList;
	}
	
	/**
	 * 获取分页记录
	 * @param curpage   当前页
	 * @param pageSize  页面容量
	 * @param filter    查询条件,为null表示无条件
	 * @param orderBy   排序条件,为null表示不需要排序
	 * @return
	 */
	public Page getListByPage(int curpage ,int pageSize ,String filter , String orderBy ){
		Page page = new Page();
		try{
			StringBuffer sqlBuffer = new StringBuffer();
			sqlBuffer.append("select * from menu_info");
			page = super.getListByPage(sqlBuffer.toString(), 100, 1);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;
	}

	public void save(MenuInfo menuInfo) {
		try{
			super.save(menuInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取所有菜单信息的List集合
	 */
	public List<MenuInfo> getListByList(){
		List<MenuInfo> list = new ArrayList<MenuInfo>();
		list = super.getAll(MenuInfo.class);
		return list;
	}
	
}
