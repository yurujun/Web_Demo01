package com.web.pojo;
import java.util.HashSet;
import java.util.Set;

import com.web.pojo.MenuRoleRelation;

public class MenuInfo implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer menuId;
	private String menuName;
	private String menuUrl;
	private String menuDescribe;
	private String parentId;
	private String isValidate;
	private String menuSort;
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

	public MenuInfo() {
		
	}

	public MenuInfo(String parentId) {
		this.parentId = parentId;
	}

	public MenuInfo(String menuName, String menuUrl, String menuDescribe,
			String parentId, String isValidate, String menuSort, String ex01,
			String ex02, String ex03, String ex04, String ex05, String ex06,
			String ex07, String ex08, String ex09, String ex10,
			Set<MenuRoleRelation> menuRoleRelations) {
		this.menuName = menuName;
		this.menuUrl = menuUrl;
		this.menuDescribe = menuDescribe;
		this.parentId = parentId;
		this.isValidate = isValidate;
		this.menuSort = menuSort;
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
	}

	// Property accessors

	public Integer getMenuId() {
		return this.menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return this.menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuUrl() {
		return this.menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getMenuDescribe() {
		return this.menuDescribe;
	}

	public void setMenuDescribe(String menuDescribe) {
		this.menuDescribe = menuDescribe;
	}

	public String getParentId() {
		return this.parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getIsValidate() {
		return this.isValidate;
	}

	public void setIsValidate(String isValidate) {
		this.isValidate = isValidate;
	}

	public String getMenuSort() {
		return this.menuSort;
	}

	public void setMenuSort(String menuSort) {
		this.menuSort = menuSort;
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

}