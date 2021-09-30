package com.idwith.mpweb.user;

public class CartVO {
	private int cart_num; //장바구니 번호
	private String goods_code; //상품 번호
	private int seller_code; //작가 코드
	private int goods_price; //상품 가격
	private int cart_quantity; //수량
	private String goods_option1; //상품 옵션1
	private String goods_option2; //상품 옵션2
	private String goods_option3; //상품 옵션3
	private int cart_delivery_fee; // 배송비
	private int cart_donation; // 후원금액
	private int cart_save; // 적립금
	private String user_id; //구매자 아이디
	private boolean cart_pay_check; //결제여부
	private String cart_order_content; //주문 요청 사항
	
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
	public String getGoods_option1() {
		return goods_option1;
	}
	public void setGoods_option1(String goods_option1) {
		this.goods_option1 = goods_option1;
	}
	public String getGoods_option2() {
		return goods_option2;
	}
	public void setGoods_option2(String goods_option2) {
		this.goods_option2 = goods_option2;
	}
	public String getGoods_option3() {
		return goods_option3;
	}
	public void setGoods_option3(String goods_option3) {
		this.goods_option3 = goods_option3;
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
	@Override
	public String toString() {
		return "CartVO [cart_num=" + cart_num + ", goods_code=" + goods_code + ", seller_code=" + seller_code
				+ ", goods_price=" + goods_price + ", cart_quantity=" + cart_quantity + ", goods_option1="
				+ goods_option1 + ", goods_option2=" + goods_option2 + ", goods_option3=" + goods_option3
				+ ", cart_delivery_fee=" + cart_delivery_fee + ", cart_donation=" + cart_donation + ", cart_save="
				+ cart_save + ", user_id=" + user_id + ", cart_pay_check=" + cart_pay_check + ", cart_order_content="
				+ cart_order_content + "]";
	}
	
}
