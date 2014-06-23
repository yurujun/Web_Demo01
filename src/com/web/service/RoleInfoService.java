package com.web.service;

import java.util.List;

import org.apache.struts2.custom.common.Page;

import com.web.pojo.MenuInfo;
import com.web.pojo.RoleInfo;

public interface RoleInfoService {
	/**
	 * ���ݽ�ɫid���ҳ��ý�ɫ�Ŀɼ��˵�
	 * @param id ��ɫid
	 * @return
	 */
	public List<MenuInfo> findMenuInfosByPrimarykey(String id);
	
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
	 * �����ɫ��Ϣ
	 * @param roleInfo
	 */
	public void save(RoleInfo roleInfo,String menuIds);
	
	/**
	 * ��ȡ���н�ɫ��Ϣ��List����
	 * @return
	 */
	public List<RoleInfo> getListByList();
}
