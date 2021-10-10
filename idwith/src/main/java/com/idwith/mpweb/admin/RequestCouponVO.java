package com.idwith.mpweb.admin;

import java.sql.Date;

public class RequestCouponVO {
	
	private Integer requestCpSeq;
	private Integer requestCpSeller;
	private Integer requestCpPrice;
	private Integer requestCpMinPrice;
	private String requestCpName;
	private String requestCpTarget;
	private Date requestCpDate;
	private String requestCpContext;
	private Date requestCpStart;
	private Date requestCpEnd;
	private Integer requestCpState;
	private Integer rownum;
	private Integer requsetCouponCode;
	
	public Integer getRequsetCouponCode() {
		return requsetCouponCode;
	}
	public void setRequsetCouponCode(Integer requsetCouponCode) {
		this.requsetCouponCode = requsetCouponCode;
	}
	public Integer getRequestCpSeq() {
		return requestCpSeq;
	}
	public void setRequestCpSeq(Integer requestCpSeq) {
		this.requestCpSeq = requestCpSeq;
	}
	public Integer getRequestCpSeller() {
		return requestCpSeller;
	}
	public void setRequestCpSeller(Integer requestCpSeller) {
		this.requestCpSeller = requestCpSeller;
	}
	public Integer getRequestCpPrice() {
		return requestCpPrice;
	}
	public void setRequestCpPrice(Integer requestCpPrice) {
		this.requestCpPrice = requestCpPrice;
	}
	public Integer getRequestCpMinPrice() {
		return requestCpMinPrice;
	}
	public void setRequestCpMinPrice(Integer requestCpMinPrice) {
		this.requestCpMinPrice = requestCpMinPrice;
	}
	public String getRequestCpName() {
		return requestCpName;
	}
	public void setRequestCpName(String requestCpName) {
		this.requestCpName = requestCpName;
	}
	public String getRequestCpTarget() {
		return requestCpTarget;
	}
	public void setRequestCpTarget(String requestCpTarget) {
		this.requestCpTarget = requestCpTarget;
	}
	public Date getRequestCpDate() {
		return requestCpDate;
	}
	public void setRequestCpDate(Date requestCpDate) {
		this.requestCpDate = requestCpDate;
	}
	public String getRequestCpContext() {
		return requestCpContext;
	}
	public void setRequestCpContext(String requestCpContext) {
		this.requestCpContext = requestCpContext;
	}
	public Date getRequestCpStart() {
		return requestCpStart;
	}
	public void setRequestCpStart(Date requestCpStart) {
		this.requestCpStart = requestCpStart;
	}
	public Date getRequestCpEnd() {
		return requestCpEnd;
	}
	public void setRequestCpEnd(Date requestCpEnd) {
		this.requestCpEnd = requestCpEnd;
	}
	public Integer getRequestCpState() {
		return requestCpState;
	}
	public void setRequestCpState(Integer requestCpState) {
		this.requestCpState = requestCpState;
	}
	public Integer getRownum() {
		return rownum;
	}
	public void setRownum(Integer rownum) {
		this.rownum = rownum;
	}
	@Override
	public String toString() {
		return "RequestCouponVO [requestCpSeq=" + requestCpSeq + ", requestCpSeller=" + requestCpSeller
				+ ", requestCpPrice=" + requestCpPrice + ", requestCpMinPrice=" + requestCpMinPrice + ", requestCpName="
				+ requestCpName + ", requestCpTarget=" + requestCpTarget + ", requestCpDate=" + requestCpDate
				+ ", requestCpContext=" + requestCpContext + ", requestCpStart=" + requestCpStart + ", requestCpEnd="
				+ requestCpEnd + ", requestCpState=" + requestCpState + ", rownum=" + rownum + "]";
	}
	
	

}
