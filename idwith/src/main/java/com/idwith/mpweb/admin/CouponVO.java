package com.idwith.mpweb.admin;

import java.sql.Date;

public class CouponVO {
	
	private int couponCode;
	private String couponName;
	private String couponContext;
	private String couponTarget;
	private String couponCondition;
	private Integer couponDiscount;
	private Date couponStartdate;
	private Date couponEnddate;
	private Integer sellerCode;
	private int rownum;
	private int couponStatus;
	
	
	public int getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(int couponCode) {
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
	public Date getCouponStartdate() {
		return couponStartdate;
	}
	public void setCouponStartdate(Date couponStartdate) {
		this.couponStartdate = couponStartdate;
	}
	public Date getCouponEnddate() {
		return couponEnddate;
	}
	public void setCouponEnddate(Date couponEnddate) {
		this.couponEnddate = couponEnddate;
	}
	public Integer getSellerCode() {
		return sellerCode;
	}
	public void setSellerCode(Integer sellerCode) {
		this.sellerCode = sellerCode;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getCouponStatus() {
		return couponStatus;
	}
	public void setCouponStatus(int couponStatus) {
		this.couponStatus = couponStatus;
	}
	@Override
	public String toString() {
		return "CouponVO [couponCode=" + couponCode + ", couponName=" + couponName + ", couponContext=" + couponContext
				+ ", couponTarget=" + couponTarget + ", couponCondition=" + couponCondition + ", couponDiscount="
				+ couponDiscount + ", couponStartdate=" + couponStartdate + ", couponEnddate=" + couponEnddate
				+ ", sellerCode=" + sellerCode + ", rownum=" + rownum + ", couponStatus=" + couponStatus + "]";
	}
	
	

}
