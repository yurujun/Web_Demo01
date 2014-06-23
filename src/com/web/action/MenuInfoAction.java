package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.custom.action.CustomAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.pojo.MenuInfo;
import com.web.service.MenuInfoService;

public class MenuInfoAction extends CustomAction {

	private static final long serialVersionUID = 1L;

	private MenuInfo menuInfo;

	private MenuInfoService menuInfoService;

	/**
	 * ��־��ӡ��
	 */
	private static final Log logger = LogFactory.getLog(MenuInfoAction.class);
	
	public String beforeList(){
		return "list";
	}
	
	/**
	 * ��ȡ�˵���Ϣ�б�
	 */
	public String list() {
		if (logger.isDebugEnabled()) {
			logger.debug("MenuInfoAction.list() start ......");
		}
		
		try{
			List<MenuInfo> list = new ArrayList<MenuInfo>();
			list = menuInfoService.getListByList();
			
			// ����ѯ����������json����ʽд��ҳ����
            this.writeJSONData(list, new String[] {"menuName","menuUrl", "parentId","isValidate"});
		} catch(Exception e){
			e.printStackTrace();
		}
		
		if (logger.isDebugEnabled()) {
			logger.debug("MenuInfoAction.list() end ......");
		}
		return NONE;
	}
	
	public String beforeAdd() {

		return "add";
	}

	/**
	 * ����û���Ϣ
	 * 
	 * @return
	 */
	public String add() {
		if (logger.isDebugEnabled()) {
			logger.debug("MenuInfoAction ��Ӳ˵���̨������ʼ ......");
		}
		try{
			menuInfoService.save(menuInfo);
		}catch(Exception e){
			logger.debug("MenuInfoAction ��Ӳ˵���̨�������ִ��� ......");
			e.printStackTrace();
		}
		if (logger.isDebugEnabled()) {
			logger.debug("MenuInfoAction ��Ӳ˵���̨�������� ......");
		}
		return SUCCESS;
	}

	/**
	 * ��ȡ�˵�������,ʹ��json�������ݴ���
	 * 
	 * @return
	 */
	public String getMenuTree() {
		if (logger.isDebugEnabled()) {
			logger.debug("��ȡ�˵�����  ��ʼ......");
		}
		try {
			List<MenuInfo> menuInfoList = menuInfoService.findAllMenuInfos();
			String node = null;
			StringBuffer nodes = new StringBuffer();
			MenuInfo menuInfo = null;
			nodes.append("[");
			// �����洢���в˵���json����
			for (int i = 0; i < menuInfoList.size(); i++) {
				menuInfo = new MenuInfo();
				menuInfo = menuInfoList.get(i);
				node = new String();
				node = "{\"node\":{\"id\":\"" + menuInfo.getMenuId()
						+ "\",\"parentId\":\"" + menuInfo.getParentId()
						+ "\",\"name\":\"" + menuInfo.getMenuName() + "\"}}";

				if (i == (menuInfoList.size() - 1)) {
					nodes.append(node + "]");
				} else {
					nodes.append(node + ",");
				}
			}
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(nodes.toString());
			out.flush();
			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (logger.isDebugEnabled()) {
			logger.debug("��ȡ�˵�����  ����......");
		}
		return NONE;
	}

	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	protected void render(String text, String contentType) {
		try {
			HttpServletResponse response = getResponse();
			response.setContentType(contentType);
			response.getWriter().write(text);
			response.getWriter().flush();
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			throw new IllegalStateException(e);
		}
	}

	public void renderHtml(String text) {
		render(text, "text/html;charset=UTF-8");
	}

	public void writeJSONMsg(String msg) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("msg", msg);
		jsonObject.put("totalRecords", 0);
		jsonObject.put("data", JSONArray.fromObject(new String[0]));
		renderHtml(jsonObject.toString());
	}

	public void setMenuInfo(MenuInfo menuInfo) {
		this.menuInfo = menuInfo;
	}

	public MenuInfo getMenuInfo() {
		return menuInfo;
	}

	@Autowired
	public void setMenuInfoService(MenuInfoService menuInfoService) {
		this.menuInfoService = menuInfoService;
	}

	public MenuInfoService getMenuInfoService() {
		return menuInfoService;
	}
}
