package com.idwith.mpweb.admin;

import java.sql.Timestamp;

public class FollowVO {
	
	private int followSeq;
	private String followId;
	private Integer followedId;
	private Timestamp followDate;
	private int couponCode;
	
	public int getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(int couponCode) {
		this.couponCode = couponCode;
	}
	public int getFollowSeq() {
		return followSeq;
	}
	public void setFollowSeq(int followSeq) {
		this.followSeq = followSeq;
	}
	public String getFollowId() {
		return followId;
	}
	public void setFollowId(String followId) {
		this.followId = followId;
	}
	public Integer getFollowedId() {
		return followedId;
	}
	public void setFollowedId(Integer followedId) {
		this.followedId = followedId;
	}
	public Timestamp getFollowDate() {
		return followDate;
	}
	public void setFollowDate(Timestamp followDate) {
		this.followDate = followDate;
	}
	
	@Override
	public String toString() {
		return "FollowVO [followSeq=" + followSeq + ", followId=" + followId + ", followedId=" + followedId
				+ ", followDate=" + followDate + "]";
	}
	
	
	

}
