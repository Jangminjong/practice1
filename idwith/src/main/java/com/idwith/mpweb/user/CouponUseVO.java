package com.idwith.mpweb.user;

import java.sql.Timestamp;

public class CouponUseVO {
	private int coupon_use_seq;
	private String coupon_use_id;
	private Timestamp coupon_use_date;
	private String coupon_use_goods;
	private String coupon_use_code;

	public String getCoupon_use_code() {
		return coupon_use_code;
	}

	public void setCoupon_use_code(String coupon_use_code) {
		this.coupon_use_code = coupon_use_code;
	}

	public int getCoupon_use_seq() {
		return coupon_use_seq;
	}

	public void setCoupon_use_seq(int coupon_use_seq) {
		this.coupon_use_seq = coupon_use_seq;
	}

	public String getCoupon_use_id() {
		return coupon_use_id;
	}

	public void setCoupon_use_id(String coupon_use_id) {
		this.coupon_use_id = coupon_use_id;
	}

	public Timestamp getCoupon_use_date() {
		return coupon_use_date;
	}

	public void setCoupon_use_date(Timestamp coupon_use_date) {
		this.coupon_use_date = coupon_use_date;
	}

	public String getCoupon_use_goods() {
		return coupon_use_goods;
	}

	public void setCoupon_use_goods(String coupon_use_goods) {
		this.coupon_use_goods = coupon_use_goods;
	}

}
