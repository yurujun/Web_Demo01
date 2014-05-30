package com.web.pojo;

public class RoleUserRelation implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private RoleInfo roleInfo;
	private UserInfo userInfo;

	public RoleUserRelation() {

	}

	public RoleUserRelation(RoleInfo roleInfo, UserInfo userInfo) {
		this.roleInfo = roleInfo;
		this.userInfo = userInfo;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public RoleInfo getRoleInfo() {
		return this.roleInfo;
	}

	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

}