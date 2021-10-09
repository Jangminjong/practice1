package com.idwith.mpweb.admin;

import java.sql.Date;

public class CouponVO {
	
	private Integer couponCode;
	private String couponName;
	private String couponContext;
	private String couponTarget;
	private String couponCondition;
	private Integer couponDiscount;
	private Date couponEnddate;
	private Integer sellerCode;
	
	public Integer getSellerCode() {
		return sellerCode;
	}
	public void setSellerCode(Integer sellerCode) {
		this.sellerCode = sellerCode;
	}
	public Integer getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(Integer couponCode) {
		this.couponCode = couponCode;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getCouponContext() {
		return couponContext;
	}
	public void setCouponContext(String couponContext) {
		this.couponContext = couponContext;
	}
	public String getCouponTarget() {
		return couponTarget;
	}
	public void setCouponTarget(String couponTarget) {
		this.couponTarget = couponTarget;
	}
	public String getCouponCondition() {
		return couponCondition;
	}
	public void setCouponCondition(String couponCondition) {
		this.couponCondition = couponCondition;
	}
	public Integer getCouponDiscount() {
		return couponDiscount;
	}
	public void setCouponDiscount(Integer couponDiscount) {
		this.couponDiscount = couponDiscount;
	}
	public Date getCouponEnddate() {
		return couponEnddate;
	}
	public void setCouponEnddate(Date couponEnddate) {
		this.couponEnddate = couponEnddate;
	}
	@Override
	public String toString() {
		return "CouponVO [couponCode=" + couponCode + ", couponName=" + couponName + ", couponContext=" + couponContext
				+ ", couponTarget=" + couponTarget + ", couponCondition=" + couponCondition + ", couponDiscount="
				+ couponDiscount + ", couponEnddate=" + couponEnddate + "]";
	}
	

}
