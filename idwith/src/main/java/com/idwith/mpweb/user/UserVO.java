package com.idwith.mpweb.user;

import java.util.Date;

public class UserVO {
	private String email;
	private String password;
	private String name;
	private String phone;
	private String zipcode;
	private String address1;
	private String address2;
	private String recommender;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getRecommender() {
		return recommender;
	}
	public void setRecommender(String recommender) {
		this.recommender = recommender;
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
		return "UserVO [email=" + email + ", password=" + password + ", name=" + name + ", phone=" + phone
				+ ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2 + ", recommender="
				+ recommender + ", grade=" + grade + ", allmcount=" + allmcount + ", joinDate=" + joinDate
				+ ", class_sellyn=" + class_sellyn + ", option_zipcode=" + option_zipcode + ", option_address1="
				+ option_address1 + ", option_address2=" + option_address2 + "]";
	}
}
