package com.idwith.mpweb.user;

import java.sql.Date;
import java.util.Arrays;

public class SellerClassVO {
	private int class_reg_seq;
	private String class_code;
	private String class_name;
	private int class_seller;
	private String class_category_code;
	private int class_price;
	private String class_post_address;
	private String class_detail_address;
	private String class_reference;
	private String class_difficult;
	private int class_person;
	private Date class_date;
	private String class_info;
	private String[] class_photo;
	private boolean class_check;
	
	public int getClass_reg_seq() {
		return class_reg_seq;
	}
	public void setClass_reg_seq(int class_reg_seq) {
		this.class_reg_seq = class_reg_seq;
	}
	public String getClass_code() {
		return class_code;
	}
	public void setClass_code(String class_code) {
		this.class_code = class_code;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public int getClass_seller() {
		return class_seller;
	}
	public void setClass_seller(int class_seller) {
		this.class_seller = class_seller;
	}
	public String getClass_category_code() {
		return class_category_code;
	}
	public void setClass_category_code(String class_category_code) {
		this.class_category_code = class_category_code;
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
	public Date getClass_date() {
		return class_date;
	}
	public void setClass_date(Date class_date) {
		this.class_date = class_date;
	}
	public String getClass_info() {
		return class_info;
	}
	public void setClass_info(String class_info) {
		this.class_info = class_info;
	}
	public String[] getClass_photo() {
		return class_photo;
	}
	public void setClass_photo(String[] class_photo) {
		this.class_photo = class_photo;
	}
	public boolean isClass_check() {
		return class_check;
	}
	public void setClass_check(boolean class_check) {
		this.class_check = class_check;
	}
	
	@Override
	public String toString() {
		return "SellerClassVO [class_reg_seq=" + class_reg_seq + ", class_code=" + class_code + ", class_name="
				+ class_name + ", class_seller=" + class_seller + ", class_category_code=" + class_category_code
				+ ", class_price=" + class_price + ", class_post_address=" + class_post_address
				+ ", class_detail_address=" + class_detail_address + ", class_reference=" + class_reference
				+ ", class_difficult=" + class_difficult + ", class_person=" + class_person + ", class_date="
				+ class_date + ", class_info=" + class_info + ", class_photo=" + Arrays.toString(class_photo)
				+ ", class_check=" + class_check + "]";
	}
}
