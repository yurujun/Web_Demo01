package com.web.pojo;

public class MenuRoleRelation implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private MenuInfo menuInfo;
	private RoleInfo roleInfo;

	public MenuRoleRelation() {

	}

	public MenuRoleRelation(MenuInfo menuInfo, RoleInfo roleInfo) {
		this.menuInfo = menuInfo;
		this.roleInfo = roleInfo;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public MenuInfo getMenuInfo() {
		return this.menuInfo;
	}

	public void setMenuInfo(MenuInfo menuInfo) {
		this.menuInfo = menuInfo;
	}

	public RoleInfo getRoleInfo() {
		return this.roleInfo;
	}

	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

}