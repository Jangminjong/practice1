package com.idwith.mpweb.user;

import java.util.Date;

public class UserVO {
	private String email;
	private String password;
	private String username;
	private String cell_phone;
	private String zipcode;
	private String address1;
	private String address2;
	private String rcmd_code;
	private String grade;
	private long allmcount;
	private Date joinDate;
	private boolean class_sellyn;
	private int option_zipcode;
	private String option_address1;
	private String option_address2;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCell_phone() {
		return cell_phone;
	}
	public void setCell_phone(String cell_phone) {
		this.cell_phone = cell_phone;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getRcmd_code() {
		return rcmd_code;
	}
	public void setRcmd_code(String rcmd_code) {
		this.rcmd_code = rcmd_code;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public long getAllmcount() {
		return allmcount;
	}
	public void setAllmcount(long allmcount) {
		this.allmcount = allmcount;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public boolean isClass_sellyn() {
		return class_sellyn;
	}
	public void setClass_sellyn(boolean class_sellyn) {
		this.class_sellyn = class_sellyn;
	}
	public int getOption_zipcode() {
		return option_zipcode;
	}
	public void setOption_zipcode(int option_zipcode) {
		this.option_zipcode = option_zipcode;
	}
	public String getOption_address1() {
		return option_address1;
	}
	public void setOption_address1(String option_address1) {
		this.option_address1 = option_address1;
	}
	public String getOption_address2() {
		return option_address2;
	}
	public void setOption_address2(String option_address2) {
		this.option_address2 = option_address2;
	}
	@Override
	public String toString() {
		return "UserVO [email=" + email + ", password=" + password + ", username=" + username + ", cell_phone="
				+ cell_phone + ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2
				+ ", rcmd_code=" + rcmd_code + ", grade=" + grade + ", allmcount=" + allmcount + ", joinDate="
				+ joinDate + ", class_sellyn=" + class_sellyn + ", option_zipcode=" + option_zipcode
				+ ", option_address1=" + option_address1 + ", option_address2=" + option_address2 + "]";
	}
	
	
}
