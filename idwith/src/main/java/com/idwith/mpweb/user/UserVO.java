package com.idwith.mpweb.user;

import java.util.Date;

public class UserVO {
	private String email;
	private String password;
	private String username;
	private String cell_phone;
	private String user_zipcode;
	private String user_address1;
	private String user_address2;
	private String user_recommender;
	private String user_grade;
	private long user_allmcount;
	private Date user_joinDate;
	private boolean user_class_sellyn;
	private int user_option_zipcode;
	private String user_option_addr1;
	private String user_option_addr2;

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
	public String getUser_zipcode() {
		return user_zipcode;
	}
	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}
	@Override
	public String toString() {
		return "UserVO [email=" + email + ", password=" + password + ", username=" + username + ", cell_phone="
				+ cell_phone + ", user_zipcode=" + user_zipcode + ", user_address1=" + user_address1
				+ ", user_address2=" + user_address2 + ", user_recommender=" + user_recommender + ", user_grade="
				+ user_grade + ", user_allmcount=" + user_allmcount + ", user_joinDate=" + user_joinDate
				+ ", user_class_sellyn=" + user_class_sellyn + ", user_option_zipcode=" + user_option_zipcode
				+ ", user_option_addr1=" + user_option_addr1 + ", user_option_addr2=" + user_option_addr2 + "]";
	}
	public String getUser_address1() {
		return user_address1;
	}
	public void setUser_address1(String user_address1) {
		this.user_address1 = user_address1;
	}
	public String getUser_address2() {
		return user_address2;
	}
	public void setUser_address2(String user_address2) {
		this.user_address2 = user_address2;
	}
	public String getUser_recommender() {
		return user_recommender;
	}
	public void setUser_recommender(String user_recommender) {
		this.user_recommender = user_recommender;
	}
	public String getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}
	public long getUser_allmcount() {
		return user_allmcount;
	}
	public void setUser_allmcount(long user_allmcount) {
		this.user_allmcount = user_allmcount;
	}
	public Date getUser_joinDate() {
		return user_joinDate;
	}
	public void setUser_joinDate(Date user_joinDate) {
		this.user_joinDate = user_joinDate;
	}
	public boolean isUser_class_sellyn() {
		return user_class_sellyn;
	}
	public void setUser_class_sellyn(boolean user_class_sellyn) {
		this.user_class_sellyn = user_class_sellyn;
	}
	public int getUser_option_zipcode() {
		return user_option_zipcode;
	}
	public void setUser_option_zipcode(int user_option_zipcode) {
		this.user_option_zipcode = user_option_zipcode;
	}
	public String getUser_option_addr1() {
		return user_option_addr1;
	}
	public void setUser_option_addr1(String user_option_addr1) {
		this.user_option_addr1 = user_option_addr1;
	}
	public String getUser_option_addr2() {
		return user_option_addr2;
	}
	public void setUser_option_addr2(String user_option_addr2) {
		this.user_option_addr2 = user_option_addr2;
	}
	public String getCell_phone() {
		return cell_phone;
	}
	public void setCell_phone(String cell_phone) {
		this.cell_phone = cell_phone;
	}

}
