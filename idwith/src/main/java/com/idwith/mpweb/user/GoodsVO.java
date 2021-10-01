package com.idwith.mpweb.user;

import java.util.Arrays;

public class GoodsVO {
	String goods_code;
	String goods_name;
	int goods_price;
	int seller_code;
	String goods_category;
	String[] goods_photo;
	int goods_stock;
	int goods_volume;
	int goods_income;
	int goods_grade;
	String goods_info;
	int goode_select;
	int goods_view;
	String goods_op1_code, goods_op2_code, goods_op3_code;
	int rownum;

	public String getGoods_code() {
		return goods_code;
	}

	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public int getSeller_code() {
		return seller_code;
	}

	public void setSeller_code(int seller_code) {
		this.seller_code = seller_code;
	}

	public String getGoods_category() {
		return goods_category;
	}

	public void setGoods_category(String goods_category) {
		this.goods_category = goods_category;
	}

	public String[] getGoods_photo() {
		return goods_photo;
	}

	public void setGoods_photo(String[] goods_photo) {
		this.goods_photo = goods_photo;
	}

	public int getGoods_stock() {
		return goods_stock;
	}

	public void setGoods_stock(int goods_stock) {
		this.goods_stock = goods_stock;
	}

	public int getGoods_volume() {
		return goods_volume;
	}

	public void setGoods_volume(int goods_volume) {
		this.goods_volume = goods_volume;
	}

	public int getGoods_income() {
		return goods_income;
	}

	public void setGoods_income(int goods_income) {
		this.goods_income = goods_income;
	}

	public int getGoods_grade() {
		return goods_grade;
	}

	public void setGoods_grade(int goods_grade) {
		this.goods_grade = goods_grade;
	}

	public String getGoods_info() {
		return goods_info;
	}

	public void setGoods_info(String goods_info) {
		this.goods_info = goods_info;
	}

	public int getGoode_select() {
		return goode_select;
	}

	public void setGoode_select(int goode_select) {
		this.goode_select = goode_select;
	}

	public int getGoods_view() {
		return goods_view;
	}

	public void setGoods_view(int goods_view) {
		this.goods_view = goods_view;
	}

	public String getGoods_op1_code() {
		return goods_op1_code;
	}

	public void setGoods_op1_code(String goods_op1_code) {
		this.goods_op1_code = goods_op1_code;
	}

	public String getGoods_op2_code() {
		return goods_op2_code;
	}

	public void setGoods_op2_code(String goods_op2_code) {
		this.goods_op2_code = goods_op2_code;
	}

	public String getGoods_op3_code() {
		return goods_op3_code;
	}

	public void setGoods_op3_code(String goods_op3_code) {
		this.goods_op3_code = goods_op3_code;
	}
	

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	@Override
	public String toString() {
		return "GoodsVO [goods_code=" + goods_code + ", goods_name=" + goods_name + ", goods_price=" + goods_price
				+ ", seller_code=" + seller_code + ", goods_category=" + goods_category + ", goods_photo="
				+ Arrays.toString(goods_photo) + ", goods_stock=" + goods_stock + ", goods_volume=" + goods_volume
				+ ", goods_income=" + goods_income + ", goods_grade=" + goods_grade + ", goods_info=" + goods_info
				+ ", goode_select=" + goode_select + ", goods_view=" + goods_view + ", goods_op1_code=" + goods_op1_code
				+ ", goods_op2_code=" + goods_op2_code + ", goods_op3_code=" + goods_op3_code + ", rownum=" + rownum
				+ "]";
	}
	
	

}
