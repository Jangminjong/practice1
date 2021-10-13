package com.idwith.mpweb.user;

import java.sql.Date;

public class GoodsOrderDetailVO {
	String order_detail_code;
	int order_detail_seller;
	String order_detail_goods;
	String order_detail_category;
	int order_detail_quantity;
	String order_detail_option;
	int order_detail_donation;
	String order_detail_demand;
	int order_detail_price;
	boolean coupon_use;
	String coupon_code;
	int order_detail_cost;
	boolean order_review;
	String order_id;
	Date order_date;
	String imp_uid;
	public String getImp_uid() {
		return imp_uid;
	}

	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}

	String goods_name;
	String[] goods_photo;
	int rownum;
	String store_name;
	
	// 배송관련 필드
	String order_detail_payment;
	String order_delivery_state;
	String order_detail_name;
	String order_detail_phone;
	String order_detail_zip;
	String order_detail_address;
	String order_detail_address2;

	public String getOrder_detail_code() {
		return order_detail_code;
	}

	public void setOrder_detail_code(String order_detail_code) {
		this.order_detail_code = order_detail_code;
	}

	public int getOrder_detail_seller() {
		return order_detail_seller;
	}

	public void setOrder_detail_seller(int order_detail_seller) {
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

	public int getOrder_detail_quantity() {
		return order_detail_quantity;
	}

	public void setOrder_detail_quantity(int order_detail_quantity) {
		this.order_detail_quantity = order_detail_quantity;
	}

	

	public String getOrder_detail_option() {
		return order_detail_option;
	}

	public void setOrder_detail_option(String order_detail_option) {
		this.order_detail_option = order_detail_option;
	}

	public int getOrder_detail_donation() {
		return order_detail_donation;
	}

	public void setOrder_detail_donation(int order_detail_donation) {
		this.order_detail_donation = order_detail_donation;
	}

	public String getOrder_detail_demand() {
		return order_detail_demand;
	}

	public void setOrder_detail_demand(String order_detail_demand) {
		this.order_detail_demand = order_detail_demand;
	}

	public int getOrder_detail_price() {
		return order_detail_price;
	}

	public void setOrder_detail_price(int order_detail_price) {
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

	public int getOrder_detail_cost() {
		return order_detail_cost;
	}

	public void setOrder_detail_cost(int order_detail_cost) {
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

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
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

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public String getOrder_detail_payment() {
		return order_detail_payment;
	}

	public void setOrder_detail_payment(String order_detail_payment) {
		this.order_detail_payment = order_detail_payment;
	}

	public String getOrder_delivery_state() {
		return order_delivery_state;
	}

	public void setOrder_delivery_state(String order_delivery_state) {
		this.order_delivery_state = order_delivery_state;
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

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	
	

}
