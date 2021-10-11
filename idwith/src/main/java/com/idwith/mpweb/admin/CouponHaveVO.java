package com.idwith.mpweb.admin;

import java.sql.Timestamp;

public class CouponHaveVO {
	
	private Integer couponHaveSeq;
	private String couponHaveId;
	private String couponHaveCode;
	private Timestamp couponHaveDate;
	
	public Integer getCouponHaveSeq() {
		return couponHaveSeq;
	}
	public void setCouponHaveSeq(Integer couponHaveSeq) {
		this.couponHaveSeq = couponHaveSeq;
	}
	public String getCouponHaveId() {
		return couponHaveId;
	}
	public void setCouponHaveId(String couponHaveId) {
		this.couponHaveId = couponHaveId;
	}
	public String getCouponHaveCode() {
		return couponHaveCode;
	}
	public void setCouponHaveCode(String couponHaveCode) {
		this.couponHaveCode = couponHaveCode;
	}
	public Timestamp getCouponHaveDate() {
		return couponHaveDate;
	}
	public void setCouponHaveDate(Timestamp couponHaveDate) {
		this.couponHaveDate = couponHaveDate;
	}
	
	
	@Override
	public String toString() {
		return "CouponHaveVO [couponHaveSeq=" + couponHaveSeq + ", couponHaveId=" + couponHaveId + ", couponHaveCode="
				+ couponHaveCode + ", couponHaveDate=" + couponHaveDate + "]";
	}

}
