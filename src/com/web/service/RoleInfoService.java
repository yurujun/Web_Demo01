package com.web.service;

import java.util.List;

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
	 * �����ɫ��Ϣ
	 * @param roleInfo
	 */
	public void save(RoleInfo roleInfo,String menuIds);
}
