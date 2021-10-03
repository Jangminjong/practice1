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
	private String seller_history;
	private String seller_idea;
	private String seller_identity;
	private String seller_ideal;
	private String store_name;

	private int follow_count; // 작가별 팔로워 카운트

	public String getSeller_history() {
		return seller_history;
	}

	public void setSeller_history(String seller_history) {
		this.seller_history = seller_history;
	}

	public String getSeller_idea() {
		return seller_idea;
	}

	public void setSeller_idea(String seller_idea) {
		this.seller_idea = seller_idea;
	}

	public String getSeller_identity() {
		return seller_identity;
	}

	public void setSeller_identity(String seller_identity) {
		this.seller_identity = seller_identity;
	}

	public String getSeller_ideal() {
		return seller_ideal;
	}

	public void setSeller_ideal(String seller_ideal) {
		this.seller_ideal = seller_ideal;
	}

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

	public int getFollow_count() {
		return follow_count;
	}

	public void setFollow_count(int follow_count) {
		this.follow_count = follow_count;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	@Override
	public String toString() {
		return "UserSellerVO [seller_code=" + seller_code + ", seller_name=" + seller_name + ", seller_sellno="
				+ seller_sellno + ", seller_sellno_img=" + Arrays.toString(seller_sellno_img) + ", user_id=" + user_id
				+ ", seller_profile=" + seller_profile + ", seller_profile_img=" + Arrays.toString(seller_profile_img)
				+ ", seller_done=" + seller_done + ", seller_goods_yn=" + seller_goods_yn + ", seller_class_yn="
				+ seller_class_yn + ", seller_status=" + seller_status + ", seller_history=" + seller_history
				+ ", seller_idea=" + seller_idea + ", seller_identity=" + seller_identity + ", seller_ideal="
				+ seller_ideal + ", store_name=" + store_name + ", follow_count=" + follow_count + "]";
	}
	
	
}
