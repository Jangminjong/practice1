package com.idwith.mpweb.writer.order;

import java.util.Date;

public class GoodsOrderVO {
	
	private Integer rownum;					
	private String order_detail_code;		 //주문 코드
	private Integer order_detail_seller;	 //작가 코드
	private String order_detail_goods;		 //작품 코드
	private String order_detail_category;	 //작품 카테고리
	private Integer order_detail_quantity;	 //주문 수량
	private String order_detail_option1;
	private String order_detail_option2;
	private String order_detail_option3;
	private Integer order_detail_donation;   // 후원금
	private String order_detail_demand;		 // 요구사항
	private Integer order_detail_price;		 // 작품 금액
	private boolean coupon_use;				 //쿠폰사용여부
	private String coupon_code;				 //쿠폰 코드
	private Integer order_detail_cost;		 //최종금액
	private boolean order_review;			 // 후기 작성여부
	private String order_id;         		 // 구매자 아이디
	private String order_detail_payment;
	private String order_goods_name;
	private String order_delivery_state;     // 배송상태
	private String review_goods_code;        // 작품코드
	private Date order_date;
	private String order_detail_name;
	private String order_detail_phone;
	private String order_detail_zip;
	private String order_detail_address;
	private String order_detail_address2;
	private String order_detail_status;
	
	public Integer getRownum() {
		return rownum;
	}
	public void setRownum(Integer rownum) {
		this.rownum = rownum;
	}
	public String getOrder_detail_code() {
		return order_detail_code;
	}
	public void setOrder_detail_code(String order_detail_code) {
		this.order_detail_code = order_detail_code;
	}
	public Integer getOrder_detail_seller() {
		return order_detail_seller;
	}
	public void setOrder_detail_seller(Integer order_detail_seller) {
		this.order_detail_seller = order_detail_seller;
	}
	public String getOrder_detail_goods() {
		return order_detail_goods;
	}
	public void setOrder_detail_goods(String order_detail_goods) {
		this.order_detail_goods = order_detail_goods;
	}
	public String getOrder_detail_category() {
		return order_detail_category;
	}
	public void setOrder_detail_category(String order_detail_category) {
		this.order_detail_category = order_detail_category;
	}
	public Integer getOrder_detail_quantity() {
		return order_detail_quantity;
	}
	public void setOrder_detail_quantity(Integer order_detail_quantity) {
		this.order_detail_quantity = order_detail_quantity;
	}
	public String getOrder_detail_option1() {
		return order_detail_option1;
	}
	public void setOrder_detail_option1(String order_detail_option1) {
		this.order_detail_option1 = order_detail_option1;
	}
	public String getOrder_detail_option2() {
		return order_detail_option2;
	}
	public void setOrder_detail_option2(String order_detail_option2) {
		this.order_detail_option2 = order_detail_option2;
	}
	public String getOrder_detail_option3() {
		return order_detail_option3;
	}
	public void setOrder_detail_option3(String order_detail_option3) {
		this.order_detail_option3 = order_detail_option3;
	}
	public Integer getOrder_detail_donation() {
		return order_detail_donation;
	}
	public void setOrder_detail_donation(Integer order_detail_donation) {
		this.order_detail_donation = order_detail_donation;
	}
	public String getOrder_detail_demand() {
		return order_detail_demand;
	}
	public void setOrder_detail_demand(String order_detail_demand) {
		this.order_detail_demand = order_detail_demand;
	}
	public Integer getOrder_detail_price() {
		return order_detail_price;
	}
	public void setOrder_detail_price(Integer order_detail_price) {
		this.order_detail_price = order_detail_price;
	}
	public boolean isCoupon_use() {
		return coupon_use;
	}
	public void setCoupon_use(boolean coupon_use) {
		this.coupon_use = coupon_use;
	}
	public String getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(String coupon_code) {
		this.coupon_code = coupon_code;
	}
	public Integer getOrder_detail_cost() {
		return order_detail_cost;
	}
	public void setOrder_detail_cost(Integer order_detail_cost) {
		this.order_detail_cost = order_detail_cost;
	}
	public boolean isOrder_review() {
		return order_review;
	}
	public void setOrder_review(boolean order_review) {
		this.order_review = order_review;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getOrder_detail_payment() {
		return order_detail_payment;
	}
	public void setOrder_detail_payment(String order_detail_payment) {
		this.order_detail_payment = order_detail_payment;
	}
	
	public String getOrder_goods_name() {
		return order_goods_name;
	}
	public void setOrder_goods_name(String order_goods_name) {
		this.order_goods_name = order_goods_name;
	}
	
	public String getOrder_delivery_state() {
		return order_delivery_state;
	}
	public void setOrder_delivery_state(String order_delivery_state) {
		this.order_delivery_state = order_delivery_state;
	}
	
	public String getReview_goods_code() {
		return review_goods_code;
	}
	public void setReview_goods_code(String review_goods_code) {
		this.review_goods_code = review_goods_code;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getOrder_detail_name() {
		return order_detail_name;
	}
	public void setOrder_detail_name(String order_detail_name) {
		this.order_detail_name = order_detail_name;
	}
	public String getOrder_detail_phone() {
		return order_detail_phone;
	}
	public void setOrder_detail_phone(String order_detail_phone) {
		this.order_detail_phone = order_detail_phone;
	}
	public String getOrder_detail_zip() {
		return order_detail_zip;
	}
	public void setOrder_detail_zip(String order_detail_zip) {
		this.order_detail_zip = order_detail_zip;
	}
	public String getOrder_detail_address() {
		return order_detail_address;
	}
	public void setOrder_detail_address(String order_detail_address) {
		this.order_detail_address = order_detail_address;
	}
	public String getOrder_detail_address2() {
		return order_detail_address2;
	}
	public void setOrder_detail_address2(String order_detail_address2) {
		this.order_detail_address2 = order_detail_address2;
	}
	public String getOrder_detail_status() {
		return order_detail_status;
	}
	public void setOrder_detail_status(String order_detail_status) {
		this.order_detail_status = order_detail_status;
	}
	
	
	

}
