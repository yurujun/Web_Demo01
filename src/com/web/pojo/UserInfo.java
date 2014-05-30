package com.web.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_info", catalog = "demo")
public class UserInfo implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer userid;
	private String useraccount;
	private String username;
	private String frozenflag;
	private String password;
	private String comcode;
	private String phone;
	private String mobile;
	private String email;
	private String address;
	private String createdate;
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
	private Integer ix01;
	private Integer ix02;
	private Integer ix03;
	private Integer ix04;
	private Integer ix05;
	private Integer ix06;
	private Integer ix07;
	private Integer ix08;
	private Integer ix09;
	private Integer ix10;

	// Constructors

	/** default constructor */
	public UserInfo() {
	}

	/** minimal constructor */
	public UserInfo(String comcode) {
		this.comcode = comcode;
	}

	/** full constructor */
	public UserInfo(String useraccount, String username, String frozenflag,
			String password, String comcode, String phone, String mobile,
			String email, String address, String createdate, String ex01,
			String ex02, String ex03, String ex04, String ex05, String ex06,
			String ex07, String ex08, String ex09, String ex10, Integer ix01,
			Integer ix02, Integer ix03, Integer ix04, Integer ix05,
			Integer ix06, Integer ix07, Integer ix08, Integer ix09, Integer ix10) {
		this.useraccount = useraccount;
		this.username = username;
		this.frozenflag = frozenflag;
		this.password = password;
		this.comcode = comcode;
		this.phone = phone;
		this.mobile = mobile;
		this.email = email;
		this.address = address;
		this.createdate = createdate;
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
		this.ix01 = ix01;
		this.ix02 = ix02;
		this.ix03 = ix03;
		this.ix04 = ix04;
		this.ix05 = ix05;
		this.ix06 = ix06;
		this.ix07 = ix07;
		this.ix08 = ix08;
		this.ix09 = ix09;
		this.ix10 = ix10;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "userid", unique = true, nullable = false)
	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Column(name = "useraccount", length = 100)
	public String getUseraccount() {
		return this.useraccount;
	}

	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}

	@Column(name = "username", length = 100)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "frozenflag", length = 50)
	public String getFrozenflag() {
		return this.frozenflag;
	}

	public void setFrozenflag(String frozenflag) {
		this.frozenflag = frozenflag;
	}

	@Column(name = "password", length = 100)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "comcode", nullable = false, length = 100)
	public String getComcode() {
		return this.comcode;
	}

	public void setComcode(String comcode) {
		this.comcode = comcode;
	}

	@Column(name = "phone", length = 100)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "mobile", length = 100)
	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Column(name = "email", length = 100)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "address", length = 100)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "createdate", length = 100)
	public String getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	@Column(name = "ex01", length = 100)
	public String getEx01() {
		return this.ex01;
	}

	public void setEx01(String ex01) {
		this.ex01 = ex01;
	}

	@Column(name = "ex02", length = 100)
	public String getEx02() {
		return this.ex02;
	}

	public void setEx02(String ex02) {
		this.ex02 = ex02;
	}

	@Column(name = "ex03", length = 100)
	public String getEx03() {
		return this.ex03;
	}

	public void setEx03(String ex03) {
		this.ex03 = ex03;
	}

	@Column(name = "ex04", length = 100)
	public String getEx04() {
		return this.ex04;
	}

	public void setEx04(String ex04) {
		this.ex04 = ex04;
	}

	@Column(name = "ex05", length = 100)
	public String getEx05() {
		return this.ex05;
	}

	public void setEx05(String ex05) {
		this.ex05 = ex05;
	}

	@Column(name = "ex06", length = 100)
	public String getEx06() {
		return this.ex06;
	}

	public void setEx06(String ex06) {
		this.ex06 = ex06;
	}

	@Column(name = "ex07", length = 100)
	public String getEx07() {
		return this.ex07;
	}

	public void setEx07(String ex07) {
		this.ex07 = ex07;
	}

	@Column(name = "ex08", length = 100)
	public String getEx08() {
		return this.ex08;
	}

	public void setEx08(String ex08) {
		this.ex08 = ex08;
	}

	@Column(name = "ex09", length = 100)
	public String getEx09() {
		return this.ex09;
	}

	public void setEx09(String ex09) {
		this.ex09 = ex09;
	}

	@Column(name = "ex10", length = 100)
	public String getEx10() {
		return this.ex10;
	}

	public void setEx10(String ex10) {
		this.ex10 = ex10;
	}

	@Column(name = "ix01")
	public Integer getIx01() {
		return this.ix01;
	}

	public void setIx01(Integer ix01) {
		this.ix01 = ix01;
	}

	@Column(name = "ix02")
	public Integer getIx02() {
		return this.ix02;
	}

	public void setIx02(Integer ix02) {
		this.ix02 = ix02;
	}

	@Column(name = "ix03")
	public Integer getIx03() {
		return this.ix03;
	}

	public void setIx03(Integer ix03) {
		this.ix03 = ix03;
	}

	@Column(name = "ix04")
	public Integer getIx04() {
		return this.ix04;
	}

	public void setIx04(Integer ix04) {
		this.ix04 = ix04;
	}

	@Column(name = "ix05")
	public Integer getIx05() {
		return this.ix05;
	}

	public void setIx05(Integer ix05) {
		this.ix05 = ix05;
	}

	@Column(name = "ix06")
	public Integer getIx06() {
		return this.ix06;
	}

	public void setIx06(Integer ix06) {
		this.ix06 = ix06;
	}

	@Column(name = "ix07")
	public Integer getIx07() {
		return this.ix07;
	}

	public void setIx07(Integer ix07) {
		this.ix07 = ix07;
	}

	@Column(name = "ix08")
	public Integer getIx08() {
		return this.ix08;
	}

	public void setIx08(Integer ix08) {
		this.ix08 = ix08;
	}

	@Column(name = "ix09")
	public Integer getIx09() {
		return this.ix09;
	}

	public void setIx09(Integer ix09) {
		this.ix09 = ix09;
	}

	@Column(name = "ix10")
	public Integer getIx10() {
		return this.ix10;
	}

	public void setIx10(Integer ix10) {
		this.ix10 = ix10;
	}

}