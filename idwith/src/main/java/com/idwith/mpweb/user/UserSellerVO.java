package com.idwith.mpweb.user;

import java.util.Arrays;

public class UserSellerVO {
	private int seller_code;
	private String seller_name; 
	private String seller_sellno;
	private String[] seller_sellno_img;
	private String user_id;
	private String seller_profile;
	private String[] seller_profile_img;
	private int seller_done;
	private boolean seller_goods_yn;
	private boolean seller_class_yn;
	private int seller_status;
	
	public int getSeller_code() {
		return seller_code;
	}
	public void setSeller_code(int seller_code) {
		this.seller_code = seller_code;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_sellno() {
		return seller_sellno;
	}
	public void setSeller_sellno(String seller_sellno) {
		this.seller_sellno = seller_sellno;
	}
	public String[] getSeller_sellno_img() {
		return seller_sellno_img;
	}
	public void setSeller_sellno_img(String[] seller_sellno_img) {
		this.seller_sellno_img = seller_sellno_img;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSeller_profile() {
		return seller_profile;
	}
	public void setSeller_profile(String seller_profile) {
		this.seller_profile = seller_profile;
	}
	public String[] getSeller_profile_img() {
		return seller_profile_img;
	}
	public void setSeller_profile_img(String[] seller_profile_img) {
		this.seller_profile_img = seller_profile_img;
	}
	public int getSeller_done() {
		return seller_done;
	}
	public void setSeller_done(int seller_done) {
		this.seller_done = seller_done;
	}
	public boolean isSeller_goods_yn() {
		return seller_goods_yn;
	}
	public void setSeller_goods_yn(boolean seller_goods_yn) {
		this.seller_goods_yn = seller_goods_yn;
	}
	public boolean isSeller_class_yn() {
		return seller_class_yn;
	}
	public void setSeller_class_yn(boolean seller_class_yn) {
		this.seller_class_yn = seller_class_yn;
	}
	public int getSeller_status() {
		return seller_status;
	}
	public void setSeller_status(int seller_status) {
		this.seller_status = seller_status;
	}
	@Override
	public String toString() {
		return "UserSellerVO [seller_code=" + seller_code + ", seller_name=" + seller_name + ", seller_sellno="
				+ seller_sellno + ", seller_sellno_img=" + Arrays.toString(seller_sellno_img) + ", user_id=" + user_id
				+ ", seller_profile=" + seller_profile + ", seller_profile_img=" + Arrays.toString(seller_profile_img)
				+ ", seller_done=" + seller_done + ", seller_goods_yn=" + seller_goods_yn + ", seller_class_yn="
				+ seller_class_yn + ", seller_status=" + seller_status + "]";
	}
	
	
}
