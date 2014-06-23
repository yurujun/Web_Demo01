package com.web.service;

import java.util.List;

import org.apache.struts2.custom.common.Page;

import com.web.pojo.MenuInfo;

public interface MenuInfoService {
	
	public MenuInfo findMenuInfoByPrimaryKey(String id);
	
	/**
	 * ��ȡ���еĲ˵�����
	 * @return
	 */
	public List<MenuInfo> findAllMenuInfos();
	
	/**
	 * ��ȡ��ҳ��¼
	 * @param curpage   ��ǰҳ
	 * @param pageSize  ҳ������
	 * @param filter    ��ѯ����
	 * @param orderBy   ��������,Ϊnull��ʾ����Ҫ����
	 * @return
	 */
	public Page getListByPage(int curpage ,int pageSize ,String filter , String orderBy );
	
	/**
	 * ����˵���Ϣ
	 * @param menuInfo ��Ҫ����Ķ���
	 */
	public void save(MenuInfo menuInfo);
	
	/**
	 * ��ȡ���в˵���Ϣ��List����
	 * @return
	 */
	public List<MenuInfo> getListByList();
}
