package com.idwith.mpweb.user;

import java.sql.Timestamp;

public class GoodsReviewVO {
	int goods_review_seq;
	String goods_review_id;
	String goods_review_code;
	Timestamp goods_review_date;
	int goods_review_point;
	String[] goods_review_image;
	String goods_review_option1;
	String goods_review_option2;
	String goods_review_option3;
	String goods_review_context;

	public int getGoods_review_seq() {
		return goods_review_seq;
	}

	public void setGoods_review_seq(int goods_review_seq) {
		this.goods_review_seq = goods_review_seq;
	}

	public String getGoods_review_id() {
		return goods_review_id;
	}

	public void setGoods_review_id(String goods_review_id) {
		this.goods_review_id = goods_review_id;
	}

	public String getGoods_review_code() {
		return goods_review_code;
	}

	public void setGoods_review_code(String goods_review_code) {
		this.goods_review_code = goods_review_code;
	}

	public Timestamp getGoods_review_date() {
		return goods_review_date;
	}

	public void setGoods_review_date(Timestamp goods_review_date) {
		this.goods_review_date = goods_review_date;
	}

	public int getGoods_review_point() {
		return goods_review_point;
	}

	public void setGoods_review_point(int goods_review_point) {
		this.goods_review_point = goods_review_point;
	}

	public String[] getGoods_review_image() {
		return goods_review_image;
	}

	public void setGoods_review_image(String[] goods_review_image) {
		this.goods_review_image = goods_review_image;
	}

	public String getGoods_review_option1() {
		return goods_review_option1;
	}

	public void setGoods_review_option1(String goods_review_option1) {
		this.goods_review_option1 = goods_review_option1;
	}

	public String getGoods_review_option2() {
		return goods_review_option2;
	}

	public void setGoods_review_option2(String goods_review_option2) {
		this.goods_review_option2 = goods_review_option2;
	}

	public String getGoods_review_option3() {
		return goods_review_option3;
	}

	public void setGoods_review_option3(String goods_review_option3) {
		this.goods_review_option3 = goods_review_option3;
	}

	public String getGoods_review_context() {
		return goods_review_context;
	}

	public void setGoods_review_context(String goods_review_context) {
		this.goods_review_context = goods_review_context;
	}

}
