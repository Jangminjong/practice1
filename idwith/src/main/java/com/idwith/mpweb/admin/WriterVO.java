package com.idwith.mpweb.admin;

import java.sql.Timestamp;

public class WriterVO {
	
	private String sellerCode;
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
	private String searchWriterCondition;
	private String searchWriterKeyword;
	
	
	public String getSellerCode() {
		return sellerCode;
	}
	public void setSellerCode(String sellerCode) {
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
	public String getSearchWriterCondition() {
		return searchWriterCondition;
	}
	public void setSearchWriterCondition(String searchWriterCondition) {
		this.searchWriterCondition = searchWriterCondition;
	}
	public String getSearchWriterKeyword() {
		return searchWriterKeyword;
	}
	public void setSearchWriterKeyword(String searchWriterKeyword) {
		this.searchWriterKeyword = searchWriterKeyword;
	}
	
	@Override
	public String toString() {
		return "WriterVO [sellerCode=" + sellerCode + ", storeName=" + storeName + ", userId=" + userId
				+ ", sellerName=" + sellerName + ", sellerSellno=" + sellerSellno + ", sellerIndate=" + sellerIndate
				+ ", followerCount=" + followerCount + ", goodsCount=" + goodsCount + ", rownum=" + rownum
				+ ", sellerGoodsYN=" + sellerGoodsYN + ", sellerClassYN=" + sellerClassYN + ", searchWriterCondition="
				+ searchWriterCondition + ", searchWriterKeyword=" + searchWriterKeyword + "]";
	}
	
}
