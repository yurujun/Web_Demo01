package com.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.web.pojo.MenuInfo;
import com.web.service.MenuInfoService;

public class MenuInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private MenuInfo menuInfo;

	private MenuInfoService menuInfoService;

	/**
	 * 日志打印类
	 */
	private static final Log logger = LogFactory.getLog(MenuInfoAction.class);

	/**
	 * 获取菜单信息列表
	 */
	public String list() {
		if (logger.isDebugEnabled()) {
			logger.debug("MenuInfoAction.list() start ......");
		}
		
		try{
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		if (logger.isDebugEnabled()) {
			logger.debug("MenuInfoAction.list() end ......");
		}
		return SUCCESS;
	}

	public String beforeAdd() {

		return "add";
	}

	/**
	 * 添加用户信息
	 * 
	 * @return
	 */
	public String add() {
		System.out.println(menuInfo.getMenuName());
		System.out.println(menuInfo.getIsValidate());
		System.out.println(menuInfo.getMenuUrl());
		menuInfoService.save(menuInfo);
		return SUCCESS;
	}

	/**
	 * 获取菜单的数据,使用json进行数据传递
	 * 
	 * @return
	 */
	public String getMenuTree() {
		System.out.println("getMenuTree()");
		System.out.println(menuInfoService == null);
		try {
			List<MenuInfo> menuInfoList = menuInfoService.findAllMenuInfos();
			String node = null;
			StringBuffer nodes = new StringBuffer();
			MenuInfo menuInfo = null;
			nodes.append("[");
			// 用来存储所有菜单的json数据
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
