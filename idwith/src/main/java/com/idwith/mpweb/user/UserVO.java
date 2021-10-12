package com.idwith.mpweb.user;

import java.util.Date;

public class UserVO {
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String user_phone;
	private String user_recommender;
	private String user_grade;
	private long user_allmcount;
	private Date user_joinDate;
	private boolean user_class_sellyn;
	private String user_birth;
	private String user_update_email;
	private int user_order; 
	private boolean user_black_check;
	
	private UserAddressVO userAddressVO;
	
	public UserAddressVO getUserAddressVO() {
		return userAddressVO;
	}
	public void setUserAddressVO(UserAddressVO userAddressVO) {
		this.userAddressVO = userAddressVO;
	}
	public int getUser_order() {
		return user_order;
	}
	public void setUser_order(int user_order) {
		this.user_order = user_order;
	}
	public String getUser_update_email() {
		return user_update_email;
	}
	public void setUser_update_email(String user_update_email) {
		this.user_update_email = user_update_email;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
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
	public boolean isUser_black_check() {
		return user_black_check;
	}
	public void setUser_black_check(boolean user_black_check) {
		this.user_black_check = user_black_check;
	}
	
}
