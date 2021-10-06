package com.idwith.mpweb.user;

import java.sql.Timestamp;
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
	int goods_select;
	int goods_view;
	String goods_op1_code, goods_op2_code, goods_op3_code;
	int goods_seq;
	Timestamp goods_apply_date;
	int goods_status;

	String goods_review_context; // 작품 리뷰테이블 컬럼
	String store_name; // 작가 테이블의 컬럼
	int rownum;
	int goods_delivery_fee;
	UserSellerVO userSellerVO;
	GoodsOption1VO goodsOption1VO;
	GoodsOption2VO goodsOption2VO;
	GoodsOption3VO goodsOption3VO;

	public GoodsOption1VO getGoodsOption1VO() {
		return goodsOption1VO;
	}

	public void setGoodsOption1VO(GoodsOption1VO goodsOption1VO) {
		this.goodsOption1VO = goodsOption1VO;
	}

	public GoodsOption2VO getGoodsOption2VO() {
		return goodsOption2VO;
	}

	public void setGoodsOption2VO(GoodsOption2VO goodsOption2VO) {
		this.goodsOption2VO = goodsOption2VO;
	}

	public GoodsOption3VO getGoodsOption3VO() {
		return goodsOption3VO;
	}

	public void setGoodsOption3VO(GoodsOption3VO goodsOption3VO) {
		this.goodsOption3VO = goodsOption3VO;
	}

	public int getGoods_delivery_fee() {
		return goods_delivery_fee;
	}

	public void setGoods_delivery_fee(int goods_delivery_fee) {
		this.goods_delivery_fee = goods_delivery_fee;
	}

	public UserSellerVO getUserSellerVO() {
		return userSellerVO;
	}

	public void setUserSellerVO(UserSellerVO userSellerVO) {
		this.userSellerVO = userSellerVO;
	}

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

	public int getGoods_select() {
		return goods_select;
	}

	public void setGoods_select(int goods_select) {
		this.goods_select = goods_select;
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
	

	public int getGoods_seq() {
		return goods_seq;
	}

	public void setGoods_seq(int goods_seq) {
		this.goods_seq = goods_seq;
	}

	public Timestamp getGoods_apply_date() {
		return goods_apply_date;
	}

	public void setGoods_apply_date(Timestamp goods_apply_date) {
		this.goods_apply_date = goods_apply_date;
	}

	public int getGoods_status() {
		return goods_status;
	}

	public void setGoods_status(int goods_status) {
		this.goods_status = goods_status;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getGoods_review_context() {
		return goods_review_context;
	}

	public void setGoods_review_context(String goods_review_context) {
		this.goods_review_context = goods_review_context;
	}

	@Override
	public String toString() {
		return "GoodsVO [goods_code=" + goods_code + ", goods_name=" + goods_name + ", goods_price=" + goods_price
				+ ", seller_code=" + seller_code + ", goods_category=" + goods_category + ", goods_photo="
				+ Arrays.toString(goods_photo) + ", goods_stock=" + goods_stock + ", goods_volume=" + goods_volume
				+ ", goods_income=" + goods_income + ", goods_grade=" + goods_grade + ", goods_info=" + goods_info
				+ ", goods_select=" + goods_select + ", goods_view=" + goods_view + ", goods_op1_code=" + goods_op1_code
				+ ", goods_op2_code=" + goods_op2_code + ", goods_op3_code=" + goods_op3_code + ", goods_seq="
				+ goods_seq + ", goods_apply_date=" + goods_apply_date + ", goods_status=" + goods_status + ", rownum="
				+ rownum + ", userSellerVO=" + userSellerVO + "]";
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
}
