package com.idwith.mpweb.user;

import java.sql.Timestamp;
import java.util.Arrays;

public class ClassRegVO {
	private int class_reg_seq;
	private int class_seller;
	private String user_id;
	private String class_category;
	private String class_name;
	private String class_code;
	private int class_price;
	private String class_post_address;
	private String class_address;
	private String class_detail_address;
	private String class_reference;
	private String class_difficult;
	private int class_person;
	private String class_info;
	private Timestamp class_reg_date;
	private String class_phone;
	private String[] class_photo;
	private int class_status;
	private String store_name;
	private String seller_sellno; //사업자 등록번호
	
	public String getSeller_sellno() {
		return seller_sellno;
	}
	public void setSeller_sellno(String seller_sellno) {
		this.seller_sellno = seller_sellno;
	}
	public int getClass_status() {
		return class_status;
	}
	public void setClass_status(int class_status) {
		this.class_status = class_status;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public int getClass_reg_seq() {
		return class_reg_seq;
	}
	public void setClass_reg_seq(int class_reg_seq) {
		this.class_reg_seq = class_reg_seq;
	}
	public int getClass_seller() {
		return class_seller;
	}
	public void setClass_seller(int class_seller) {
		this.class_seller = class_seller;
	}
	public String getClass_category() {
		return class_category;
	}
	public void setClass_category(String class_category) {
		this.class_category = class_category;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getClass_code() {
		return class_code;
	}
	public void setClass_code(String class_code) {
		this.class_code = class_code;
	}
	public int getClass_price() {
		return class_price;
	}
	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}
	public String getClass_post_address() {
		return class_post_address;
	}
	public void setClass_post_address(String class_post_address) {
		this.class_post_address = class_post_address;
	}
	public String getClass_address() {
		return class_address;
	}
	public void setClass_address(String class_address) {
		this.class_address = class_address;
	}
	public String getClass_detail_address() {
		return class_detail_address;
	}
	public void setClass_detail_address(String class_detail_address) {
		this.class_detail_address = class_detail_address;
	}
	public String getClass_reference() {
		return class_reference;
	}
	public void setClass_reference(String class_reference) {
		this.class_reference = class_reference;
	}
	public String getClass_difficult() {
		return class_difficult;
	}
	public void setClass_difficult(String class_difficult) {
		this.class_difficult = class_difficult;
	}
	public int getClass_person() {
		return class_person;
	}
	public void setClass_person(int class_person) {
		this.class_person = class_person;
	}
	public String getClass_info() {
		return class_info;
	}
	public void setClass_info(String class_info) {
		this.class_info = class_info;
	}
	public Timestamp getClass_reg_date() {
		return class_reg_date;
	}
	public void setClass_reg_date(Timestamp class_reg_date) {
		this.class_reg_date = class_reg_date;
	}
	public String getClass_phone() {
		return class_phone;
	}
	public void setClass_phone(String class_phone) {
		this.class_phone = class_phone;
	}
	public String[] getClass_photo() {
		return class_photo;
	}
	public void setClass_photo(String[] class_photo) {
		this.class_photo = class_photo;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "ClassRegVO [class_reg_seq=" + class_reg_seq + ", class_seller=" + class_seller + ", user_Id=" + user_id
				+ ", class_category=" + class_category + ", class_name=" + class_name + ", class_code=" + class_code
				+ ", class_price=" + class_price + ", class_post_address=" + class_post_address + ", class_address="
				+ class_address + ", class_detail_address=" + class_detail_address + ", class_reference="
				+ class_reference + ", class_difficult=" + class_difficult + ", class_person=" + class_person
				+ ", class_info=" + class_info + ", class_reg_date=" + class_reg_date + ", class_phone=" + class_phone
				+ ", class_photo=" + Arrays.toString(class_photo) + ", class_status=" + class_status + ", store_name="
				+ store_name + ", seller_sellno=" + seller_sellno + "]";
	}
}
