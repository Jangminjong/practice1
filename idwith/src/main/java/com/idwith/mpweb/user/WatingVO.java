package com.idwith.mpweb.user;

public class WatingVO {
	private String user_id; //ȸ�� ���̵�(�̸���)
	private String seller_name;//�۰� �̸�
	private String seller_phone;//�۰� ��ȭ��ȣ
	private String product_name;//��ǰ �̸�
	private String product_price;//��ǰ ����
	private boolean state;//���� ��û ����(����/�ź�)
	
	 private String product_category;//��ǰ ī�װ�
	 private String product_function;//��ǰ ���
	 private String product_info;//��ǰ �ΰ���ɼ���
	 private String seller_sellno_img;//������ �־��ָ��
	
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
