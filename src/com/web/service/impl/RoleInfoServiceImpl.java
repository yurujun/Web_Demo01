package com.web.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.struts2.custom.common.Page;
import org.apache.struts2.custom.dao.GenericDaoHibernate;
import org.hibernate.Query;

import com.web.pojo.MenuInfo;
import com.web.pojo.MenuRoleRelation;
import com.web.pojo.RoleInfo;
import com.web.service.RoleInfoService;

public class RoleInfoServiceImpl extends GenericDaoHibernate<RoleInfo, String> implements RoleInfoService{
	
	/**
	 * ���ݽ�ɫid���ҳ��ý�ɫ�Ŀɼ��˵�
	 * @param id ��ɫid
	 * @return
	 */
	public List<MenuInfo> findMenuInfosByPrimarykey(String id) {
		List<MenuInfo> menuInfoList = new ArrayList<MenuInfo>();
		
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
			sqlBuffer.append("select * from role_info");
			page = super.getListByPage(sqlBuffer.toString(), 100, 1);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;
	}
	
	/**
	 * �����ɫ��Ϣ
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
		super.save(roleInfo);
	}
	
	/**
	 * ��ȡ���н�ɫ��Ϣ��List����
	 */
	public List<RoleInfo> getListByList() {
		List<RoleInfo> list = new ArrayList<RoleInfo>();
		list = super.getAll(RoleInfo.class);
		return list;
	}
}
