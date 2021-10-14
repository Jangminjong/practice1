package com.idwith.mpweb.user;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class CartVO{
	private int cart_num; //장바구니 번호
	private String goods_code; //상품 번호
	private int seller_code; //작가 코드
	private int goods_price; //상품 총 가격
	private int cart_quantity; //수량
	private String[] goods_option_value; //상품 옵션
	private String[] goods_option_price; //가격 옵션
	private int cart_delivery_fee; // 배송비
	private int cart_donation; // 후원금액
	private int cart_save; // 적립금
	private String user_id; //구매자 아이디
	private boolean cart_pay_check; //결제여부
	private String cart_order_content; //주문 요청 사항
	private String store_name; //상점 이름
	private GoodsVO goodsVO;
	
	private boolean checkAll; //*
	
	public CartVO() {}
	
	private int optionNum; //선택한 옵션의 개수
	
	public int getOptionNum() {
		return optionNum;
	}
	public void setOptionNum(int optionNum) {
		this.optionNum = optionNum;
	}
	public GoodsVO getGoodsVO() {
		return goodsVO;
	}
	public void setGoodsVO(GoodsVO goodsVO) {
		this.goodsVO = goodsVO;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	
	public String getGoods_code() {
		return goods_code;
	}
	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}
	public int getSeller_code() {
		return seller_code;
	}
	public void setSeller_code(int seller_code) {
		this.seller_code = seller_code;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public int getCart_quantity() {
		return cart_quantity;
	}
	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
	public String[] getGoods_option_value() {
		return goods_option_value;
	}
	public void setGoods_option_value(String[] goods_option_value) {
		this.goods_option_value = goods_option_value;
	}
	public String[] getGoods_option_price() {
		return goods_option_price;
	}
	public void setGoods_option_price(String[] goods_option_price) {
		this.goods_option_price = goods_option_price;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public int getCart_delivery_fee() {
		return cart_delivery_fee;
	}
	public void setCart_delivery_fee(int cart_delivery_fee) {
		this.cart_delivery_fee = cart_delivery_fee;
	}
	public int getCart_donation() {
		return cart_donation;
	}
	public void setCart_donation(int cart_donation) {
		this.cart_donation = cart_donation;
	}
	public int getCart_save() {
		return cart_save;
	}
	public void setCart_save(int cart_save) {
		this.cart_save = cart_save;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public boolean isCart_pay_check() {
		return cart_pay_check;
	}
	public void setCart_pay_check(boolean cart_pay_check) {
		this.cart_pay_check = cart_pay_check;
	}
	public String getCart_order_content() {
		return cart_order_content;
	}
	public void setCart_order_content(String cart_order_content) {
		this.cart_order_content = cart_order_content;
	}
	public boolean isCheckAll() {
		return checkAll;
	}
	public void setCheckAll(boolean checkAll) {
		this.checkAll = checkAll;
	}
	
	
}
