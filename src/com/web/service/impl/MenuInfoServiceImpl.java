package com.web.service.impl;

import java.util.ArrayList;
import java.util.List;

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
		/*MenuInfo menuInfo = null;
		for(int i=2;i<10;i++){
			menuInfo = new MenuInfo();
			menuInfo.setMenuId(i);
			if(i == 2 || i == 4 || i == 7){
				menuInfo.setParentId("1");
			} else {
				menuInfo.setParentId(""+(i-1));
			}
			menuInfo.setMenuName("²Ëµ¥"+i);
			
			menuInfoList.add(menuInfo);
		}*/
		return menuInfoList;
	}

	public void save(MenuInfo menuInfo) {
		super.save(menuInfo);
	}
	
}
