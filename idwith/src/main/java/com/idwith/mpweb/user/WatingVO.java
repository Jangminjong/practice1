package com.idwith.mpweb.user;

public class WatingVO {
	private String user_id; //회원 아이디(이메일)
	private String seller_name;//작가 이름
	private String seller_phone;//작가 전화번호
	private String product_name;//상품 이름
	private String product_price;//상품 가격
	private boolean state;//입점 신청 상태(승인/거부)
	
	 private String product_category;//상품 카테고리
	 private String product_function;//상품 기능
	 private String product_info;//상품 부가기능설명
	 private String seller_sellno_img;//폼에서 넣어주면됨
	
	public String getSeller_sellno_img() {
		return seller_sellno_img;
	}
	public void setSeller_sellno_img(String seller_sellno_img) {
		this.seller_sellno_img = seller_sellno_img;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_function() {
		return product_function;
	}
	public void setProduct_function(String product_function) {
		this.product_function = product_function;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_phone() {
		return seller_phone;
	}
	public void setSeller_phone(String seller_phone) {
		this.seller_phone = seller_phone;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
}
