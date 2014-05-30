package com.web.pojo;

import java.util.HashSet;
import java.util.Set;

public class RoleInfo implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer roleId;
	private String roleName;
	private String roleDescribe;
	private String isValidate;
	private String ex01;
	private String ex02;
	private String ex03;
	private String ex04;
	private String ex05;
	private String ex06;
	private String ex07;
	private String ex08;
	private String ex09;
	private String ex10;
	private Set<MenuRoleRelation> menuRoleRelations = new HashSet<MenuRoleRelation>(0);
	private Set<RoleUserRelation> roleUserRelations = new HashSet<RoleUserRelation>(0);

	public RoleInfo() {
		
	}

	public RoleInfo(String roleName, String roleDescribe, String isValidate,
			String ex01, String ex02, String ex03, String ex04, String ex05,
			String ex06, String ex07, String ex08, String ex09, String ex10,
			Set<MenuRoleRelation> menuRoleRelations, Set<RoleUserRelation> roleUserRelations) {
		this.roleName = roleName;
		this.roleDescribe = roleDescribe;
		this.isValidate = isValidate;
		this.ex01 = ex01;
		this.ex02 = ex02;
		this.ex03 = ex03;
		this.ex04 = ex04;
		this.ex05 = ex05;
		this.ex06 = ex06;
		this.ex07 = ex07;
		this.ex08 = ex08;
		this.ex09 = ex09;
		this.ex10 = ex10;
		this.menuRoleRelations = menuRoleRelations;
		this.roleUserRelations = roleUserRelations;
	}

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDescribe() {
		return this.roleDescribe;
	}

	public void setRoleDescribe(String roleDescribe) {
		this.roleDescribe = roleDescribe;
	}

	public String getIsValidate() {
		return this.isValidate;
	}

	public void setIsValidate(String isValidate) {
		this.isValidate = isValidate;
	}

	public String getEx01() {
		return this.ex01;
	}

	public void setEx01(String ex01) {
		this.ex01 = ex01;
	}

	public String getEx02() {
		return this.ex02;
	}

	public void setEx02(String ex02) {
		this.ex02 = ex02;
	}

	public String getEx03() {
		return this.ex03;
	}

	public void setEx03(String ex03) {
		this.ex03 = ex03;
	}

	public String getEx04() {
		return this.ex04;
	}

	public void setEx04(String ex04) {
		this.ex04 = ex04;
	}

	public String getEx05() {
		return this.ex05;
	}

	public void setEx05(String ex05) {
		this.ex05 = ex05;
	}

	public String getEx06() {
		return this.ex06;
	}

	public void setEx06(String ex06) {
		this.ex06 = ex06;
	}

	public String getEx07() {
		return this.ex07;
	}

	public void setEx07(String ex07) {
		this.ex07 = ex07;
	}

	public String getEx08() {
		return this.ex08;
	}

	public void setEx08(String ex08) {
		this.ex08 = ex08;
	}

	public String getEx09() {
		return this.ex09;
	}

	public void setEx09(String ex09) {
		this.ex09 = ex09;
	}

	public String getEx10() {
		return this.ex10;
	}

	public void setEx10(String ex10) {
		this.ex10 = ex10;
	}

	public Set<MenuRoleRelation> getMenuRoleRelations() {
		return this.menuRoleRelations;
	}

	public void setMenuRoleRelations(Set<MenuRoleRelation> menuRoleRelations) {
		this.menuRoleRelations = menuRoleRelations;
	}

	public Set<RoleUserRelation> getRoleUserRelations() {
		return this.roleUserRelations;
	}

	public void setRoleUserRelations(Set<RoleUserRelation> roleUserRelations) {
		this.roleUserRelations = roleUserRelations;
	}

}