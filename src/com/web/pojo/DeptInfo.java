package com.web.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dept_info", catalog = "demo")
public class DeptInfo implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String deptName;

	/** default constructor */
	public DeptInfo() {
	}

	/** full constructor */
	public DeptInfo(String deptName) {
		this.deptName = deptName;
	}

	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "dept_name", length = 100)
	public String getDeptName() {
		return this.deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

}