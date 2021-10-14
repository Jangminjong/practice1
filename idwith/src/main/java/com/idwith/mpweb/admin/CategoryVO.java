package com.idwith.mpweb.admin;

/**
 * <goods_category>
 * goods_category_code
 * goods_category_name
 * 
 * <class_category>
 * class_category_code
 * class_category_name
 */

public class CategoryVO {
	
	private String goodsCategoryCode;
	private String goodsCategoryName;
	private String classCategoryCode;
	private String classCategoryName;
	private int goodsRownum;
	private int classRownum;
	
	public int getGoodsRownum() {
		return goodsRownum;
	}
	public void setGoodsRownum(int goodsRownum) {
		this.goodsRownum = goodsRownum;
	}
	public int getClassRownum() {
		return classRownum;
	}
	public void setClassRownum(int classRownum) {
		this.classRownum = classRownum;
	}
	public String getGoodsCategoryCode() {
		return goodsCategoryCode;
	}
	public void setGoodsCategoryCode(String goodsCategoryCode) {
		this.goodsCategoryCode = goodsCategoryCode;
	}
	public String getGoodsCategoryName() {
		return goodsCategoryName;
	}
	public void setGoodsCategoryName(String goodsCategoryName) {
		this.goodsCategoryName = goodsCategoryName;
	}
	public String getClassCategoryCode() {
		return classCategoryCode;
	}
	public void setClassCategoryCode(String classCategoryCode) {
		this.classCategoryCode = classCategoryCode;
	}
	public String getClassCategoryName() {
		return classCategoryName;
	}
	public void setClassCategoryName(String classCategoryName) {
		this.classCategoryName = classCategoryName;
	}
	
	@Override
	public String toString() {
		return "CategoryVO [goodsCategoryCode=" + goodsCategoryCode + ", goodsCategoryName=" + goodsCategoryName
				+ ", classCategoryCode=" + classCategoryCode + ", classCategoryName=" + classCategoryName
				+ ", goodsRownum=" + goodsRownum + ", classRownum=" + classRownum + "]";
	}
	
}
