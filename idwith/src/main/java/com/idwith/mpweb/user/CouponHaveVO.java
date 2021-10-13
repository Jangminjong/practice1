package com.idwith.mpweb.user;

import java.sql.Timestamp;

public class CouponHaveVO {
	private int coupon_have_seq;
	private String coupon_have_id;
	private String coupon_have_code;
	private Timestamp coupon_have_date;
	private String coupon_context;
	private int coupon_discount;

	public int getCoupon_have_seq() {
		return coupon_have_seq;
	}

	public void setCoupon_have_seq(int coupon_have_seq) {
		this.coupon_have_seq = coupon_have_seq;
	}

	public String getCoupon_have_id() {
		return coupon_have_id;
	}

	public void setCoupon_have_id(String coupon_have_id) {
		this.coupon_have_id = coupon_have_id;
	}

	public String getCoupon_have_code() {
		return coupon_have_code;
	}

	public void setCoupon_have_code(String coupon_have_code) {
		this.coupon_have_code = coupon_have_code;
	}

	public Timestamp getCoupon_have_date() {
		return coupon_have_date;
	}

	public void setCoupon_have_date(Timestamp coupon_have_date) {
		this.coupon_have_date = coupon_have_date;
	}

	public String getCoupon_context() {
		return coupon_context;
	}

	public void setCoupon_context(String coupon_context) {
		this.coupon_context = coupon_context;
	}

	public int getCoupon_discount() {
		return coupon_discount;
	}

	public void setCoupon_discount(int coupon_discount) {
		this.coupon_discount = coupon_discount;
	}

	
}
