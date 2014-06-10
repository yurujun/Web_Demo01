package com.web.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.struts2.custom.dao.GenericDaoHibernate;
import org.hibernate.Query;

import com.web.pojo.MenuInfo;
import com.web.pojo.MenuRoleRelation;
import com.web.pojo.RoleInfo;
import com.web.service.RoleInfoService;

public class RoleInfoServiceImpl extends GenericDaoHibernate<RoleInfo, String> implements RoleInfoService{
	
	/**
	 * 根据角色id查找出该角色的可见菜单
	 * @param id 角色id
	 * @return
	 */
	public List<MenuInfo> findMenuInfosByPrimarykey(String id) {
		List<MenuInfo> menuInfoList = new ArrayList<MenuInfo>();
		
		return menuInfoList;
	}
	
	/**
	 * 保存角色信息
	 * @param roleInfo
	 */
	@SuppressWarnings("unchecked")
	public void save(RoleInfo roleInfo,String menuIdList) {
		
		String[] ids = menuIdList.split(",");
		List<String> idList = Arrays.asList(ids);		
		
		StringBuffer sql = new StringBuffer();
		sql.append("from  MenuInfo t where  t.menuId in (");
		for (String string : idList) {
			sql.append(" '" + string + "',");
		}
		sql.delete(sql.length() - 1, sql.length());
		sql.append(")");
		System.out.println("sql:"+sql);
		Query queryMenuInfo = getSession().createQuery(sql.toString());
		List<MenuInfo> menuInfoList = queryMenuInfo.list();
		
		Set<MenuRoleRelation> menuRoleRelationSet = new HashSet<MenuRoleRelation>();
		
		for(MenuInfo menuInfo : menuInfoList){
			MenuRoleRelation menuRoleRelation = new MenuRoleRelation();
			menuRoleRelation.setMenuInfo(menuInfo);
			menuRoleRelation.setRoleInfo(roleInfo);
			menuRoleRelationSet.add(menuRoleRelation);
		}
		roleInfo.setMenuRoleRelations(menuRoleRelationSet);
		System.out.println(roleInfo.getMenuRoleRelations().size());
		super.save(roleInfo);
	}
	
}
