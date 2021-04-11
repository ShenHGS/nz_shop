package com.abkj.core.po;

import java.util.Date;

public class t_member {
	private int mid;
	private String name;
	private String gender;
	private String phone;
	private String email;
	private String loginname;
	private String loginpwd;
	private String salt;
	private Date reg_time;
	private String consignee;
	private String address;
	private int vipl;
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	
	
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginpwd() {
		return loginpwd;
	}
	public void setLoginpwd(String loginpwd) {
		this.loginpwd = loginpwd;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public Date getReg_time() {
		return reg_time;
	}
	public void setReg_time(Date reg_time) {
		this.reg_time = reg_time;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getVipl() {
		return vipl;
	}
	public void setVipl(int vipl) {
		this.vipl = vipl;
	}
	@Override
	public String toString() {
		return "t_member [mid=" + mid + ", name=" + name + ", gender=" + gender + ", phone=" + phone + ", email="
				+ email + ", loginname=" + loginname + ", loginpwd=" + loginpwd + ", salt=" + salt + ", reg_time="
				+ reg_time + ", consignee=" + consignee + ", address=" + address + ", vipl=" + vipl + "]";
	}
	
	
	
}
