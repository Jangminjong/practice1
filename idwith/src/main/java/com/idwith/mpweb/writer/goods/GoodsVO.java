package com.idwith.mpweb.writer.goods;

import java.sql.Timestamp;

public class GoodsVO {
	
	private Integer rownum;	
	private String goods_code; // 작품코드
	private String goods_name; // 작품 명
	private Integer goods_price;   // 가격	
	private long seller_code;  // 작가 코드
	private String goods_category;  // 카테고리 코드
	private String goods_photo;  // 작품 사진
	private Integer goods_stock;     // 재고 수량
	private Integer goods_volume;    // 판매량
	private Integer goods_income;    // 수익
	private Integer goods_grade;     // 평점
	private String goods_info;   // 작품 정보
	private Integer goods_select;    // 찜(횟수)
	private Integer goods_view;      // 조회수
	private Integer goods_op1_code;  // 옵션1(대분류)
	private Integer goods_seq;     			
	private Timestamp goods_apply_date; // 작품 신청일자
	private Integer goods_status;    // 작품 등록 상태
	private Integer goods_delivery_fee; // 배송비
	private String goods_delivery_date; // 배송소요일
	
	
	public Integer getRownum() {
		return rownum;
	}
	public void setRownum(Integer rownum) {
		this.rownum = rownum;
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
	public Integer getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(Integer goods_price) {
		this.goods_price = goods_price;
	}
	public long getSeller_code() {
		return seller_code;
	}
	public void setSeller_code(long seller_code) {
		this.seller_code = seller_code;
	}
	public String getGoods_category() {
		return goods_category;
	}
	public void setGoods_category(String goods_category) {
		this.goods_category = goods_category;
	}
	public String getGoods_photo() {
		return goods_photo;
	}
	public void setGoods_photo(String goods_photo) {
		this.goods_photo = goods_photo;
	}
	public Integer getGoods_stock() {
		return goods_stock;
	}
	public void setGoods_stock(Integer goods_stock) {
		this.goods_stock = goods_stock;
	}
	public Integer getGoods_volume() {
		return goods_volume;
	}
	public void setGoods_volume(Integer goods_volume) {
		this.goods_volume = goods_volume;
	}
	public Integer getGoods_income() {
		return goods_income;
	}
	public void setGoods_income(Integer goods_income) {
		this.goods_income = goods_income;
	}
	public Integer getGoods_grade() {
		return goods_grade;
	}
	public void setGoods_grade(Integer goods_grade) {
		this.goods_grade = goods_grade;
	}
	public String getGoods_info() {
		return goods_info;
	}
	public void setGoods_info(String goods_info) {
		this.goods_info = goods_info;
	}
	public Integer getGoods_select() {
		return goods_select;
	}
	public void setGoods_select(Integer goods_select) {
		this.goods_select = goods_select;
	}
	public Integer getGoods_view() {
		return goods_view;
	}
	public void setGoods_view(Integer goods_view) {
		this.goods_view = goods_view;
	}
	public Integer getGoods_op1_code() {
		return goods_op1_code;
	}
	public void setGoods_op1_code(Integer goods_op1_code) {
		this.goods_op1_code = goods_op1_code;
	}
	public Integer getGoods_seq() {
		return goods_seq;
	}
	public void setGoods_seq(Integer goods_seq) {
		this.goods_seq = goods_seq;
	}
	public Timestamp getGoods_apply_date() {
		return goods_apply_date;
	}
	public void setGoods_apply_date(Timestamp goods_apply_date) {
		this.goods_apply_date = goods_apply_date;
	}
	public Integer getGoods_status() {
		return goods_status;
	}
	public void setGoods_status(Integer goods_status) {
		this.goods_status = goods_status;
	}
	public Integer getGoods_delivery_fee() {
		return goods_delivery_fee;
	}
	public void setGoods_delivery_fee(Integer goods_delivery_fee) {
		this.goods_delivery_fee = goods_delivery_fee;
	}
	public String getGoods_delivery_date() {
		return goods_delivery_date;
	}
	public void setGoods_delivery_date(String goods_delivery_date) {
		this.goods_delivery_date = goods_delivery_date;
	}
	
	
	@Override
	public String toString() {
		return "GoodsVO [rownum=" + rownum + ", goods_code=" + goods_code + ", goods_name=" + goods_name
				+ ", goods_price=" + goods_price + ", seller_code=" + seller_code + ", goods_category=" + goods_category
				+ ", goods_photo=" + goods_photo + ", goods_stock=" + goods_stock + ", goods_volume=" + goods_volume
				+ ", goods_income=" + goods_income + ", goods_grade=" + goods_grade + ", goods_info=" + goods_info
				+ ", goods_select=" + goods_select + ", goods_view=" + goods_view + ", goods_op1_code=" + goods_op1_code
				+ ", goods_seq=" + goods_seq + ", goods_apply_date=" + goods_apply_date + ", goods_status="
				+ goods_status + ", goods_delivery_fee=" + goods_delivery_fee + ", goods_delivery_date="
				+ goods_delivery_date + "]";
	}
	
	
	
	
	
}
