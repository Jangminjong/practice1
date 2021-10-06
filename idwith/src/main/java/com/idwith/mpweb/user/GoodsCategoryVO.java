package com.idwith.mpweb.user;

public class GoodsCategoryVO {
	String goods_category_code;
	String goods_category_name;
	
	// goods 테이블의 사진
	String[] goods_photo;
	int rownum;

	public String getGoods_category_code() {
		return goods_category_code;
	}

	public void setGoods_category_code(String goods_category_code) {
		this.goods_category_code = goods_category_code;
	}

	public String getGoods_category_name() {
		return goods_category_name;
	}

	public void setGoods_category_name(String goods_category_name) {
		this.goods_category_name = goods_category_name;
	}

	public String[] getGoods_photo() {
		return goods_photo;
	}

	public void setGoods_photo(String[] goods_photo) {
		this.goods_photo = goods_photo;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	
}
