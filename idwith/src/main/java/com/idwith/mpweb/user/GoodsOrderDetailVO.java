package com.idwith.mpweb.user;

public class GoodsOrderDetailVO {
	String order_detail_code;
	int order_detail_seller;
	String order_detail_goods;
	String order_detail_category;
	int order_detail_quantity;
	String order_detail_option1, order_detail_option2, order_detail_option3;
	int order_detail_donation;
	String order_detail_demand;
	int order_detail_price;
	boolean coupon_use;
	char coupon_code;
	int order_detail_cost;
	boolean order_review;
	String order_id;
	String goods_name;
	String[] goods_photo;
	int rownum;

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

	public char getCoupon_code() {
		return coupon_code;
	}

	public void setCoupon_code(char coupon_code) {
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

}
