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
	 * ��ȡ��ҳ��¼
	 * @param curpage   ��ǰҳ
	 * @param pageSize  ҳ������
	 * @param filter    ��ѯ����,Ϊnull��ʾ������
	 * @param orderBy   ��������,Ϊnull��ʾ����Ҫ����
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
	 * ��ȡ���в˵���Ϣ��List����
	 */
	public List<MenuInfo> getListByList(){
		List<MenuInfo> list = new ArrayList<MenuInfo>();
		list = super.getAll(MenuInfo.class);
		return list;
	}
	
}
