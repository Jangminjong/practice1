package com.idwith.mpweb.admin;

import java.sql.Timestamp;

public class WriterVO {
	
	private Integer sellerCode;
	private String storeName;
	private String userId;
	private String sellerName;
	private String sellerSellno;
	private Timestamp sellerIndate;
	private Integer followerCount;
	private Integer goodsCount;
	private int rownum;
	private boolean sellerGoodsYN;
	private boolean sellerClassYN;
	private String searchCondition;
	private String searchKeyword;
	
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public Integer getSellerCode() {
		return sellerCode;
	}
	public void setSellerCode(Integer sellerCode) {
		this.sellerCode = sellerCode;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public String getSellerSellno() {
		return sellerSellno;
	}
	public void setSellerSellno(String sellerSellno) {
		this.sellerSellno = sellerSellno;
	}
	public Timestamp getSellerIndate() {
		return sellerIndate;
	}
	public void setSellerIndate(Timestamp sellerIndate) {
		this.sellerIndate = sellerIndate;
	}
	public Integer getFollowerCount() {
		return followerCount;
	}
	public void setFollowerCount(Integer followerCount) {
		this.followerCount = followerCount;
	}
	public Integer getGoodsCount() {
		return goodsCount;
	}
	public void setGoodsCount(Integer goodsCount) {
		this.goodsCount = goodsCount;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public boolean isSellerGoodsYN() {
		return sellerGoodsYN;
	}
	public void setSellerGoodsYN(boolean sellerGoodsYN) {
		this.sellerGoodsYN = sellerGoodsYN;
	}
	public boolean isSellerClassYN() {
		return sellerClassYN;
	}
	public void setSellerClassYN(boolean sellerClassYN) {
		this.sellerClassYN = sellerClassYN;
	}
	
	@Override
	public String toString() {
		return "WriterVO [sellerCode=" + sellerCode + ", storeName=" + storeName + ", userId=" + userId
				+ ", sellerName=" + sellerName + ", sellerSellno=" + sellerSellno + ", sellerIndate=" + sellerIndate
				+ ", followerCount=" + followerCount + ", goodsCount=" + goodsCount + ", rownum=" + rownum
				+ ", sellerGoodsYN=" + sellerGoodsYN + ", sellerClassYN=" + sellerClassYN + ", searchCondition="
				+ searchCondition + ", searchKeyword=" + searchKeyword + "]";
	}
	
}
