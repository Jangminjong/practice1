package com.idwith.mpweb.admin;

public class SellerVO {
	private int seller_code; //작가코드
	private String seller_name;//상점이름
	private String seller_sellno;//사업자 등록 번호
	private String user_id;//이메일
	
	public int getSeller_code() {
		return seller_code;
	}
	public void setSeller_code(int seller_code) {
		this.seller_code = seller_code;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_sellno() {
		return seller_sellno;
	}
	public void setSeller_sellno(String seller_sellno) {
		this.seller_sellno = seller_sellno;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
}
