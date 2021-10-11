package com.idwith.mpweb.user.classUser;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

public class ClassOrderVO {
	private int class_order_seq;
	private String class_order_code;
	private int class_order_price;
	private Date class_order_date;
	private Time class_order_time;
	private int class_order_donation;
	private String class_order_id;
	private int class_order_people;
	private String class_order_demand;
	private boolean class_payment_check;
	private Timestamp class_payment_date;
	private int class_order_review;
	private String class_order_name;
	private String class_order_reserve_name;
	private String class_order_reserve_phone;
	
	// 아임포트 결제 정보 조회시 사용할 고유값
	private String marchant_uid;
	private String imp_uid;
	
	private String user_phone;

	public int getClass_order_seq() {
		return class_order_seq;
	}

	public void setClass_order_seq(int class_order_seq) {
		this.class_order_seq = class_order_seq;
	}

	public String getClass_order_code() {
		return class_order_code;
	}

	public void setClass_order_code(String class_order_code) {
		this.class_order_code = class_order_code;
	}

	public int getClass_order_price() {
		return class_order_price;
	}

	public void setClass_order_price(int class_order_price) {
		this.class_order_price = class_order_price;
	}

	public Date getClass_order_date() {
		return class_order_date;
	}

	public void setClass_order_date(Date class_order_date) {
		this.class_order_date = class_order_date;
	}

	public Time getClass_order_time() {
		return class_order_time;
	}

	public void setClass_order_time(Time class_order_time) {
		this.class_order_time = class_order_time;
	}

	public int getClass_order_donation() {
		return class_order_donation;
	}

	public void setClass_order_donation(int class_order_donation) {
		this.class_order_donation = class_order_donation;
	}

	public String getClass_order_id() {
		return class_order_id;
	}

	public void setClass_order_id(String class_order_id) {
		this.class_order_id = class_order_id;
	}

	public int getClass_order_people() {
		return class_order_people;
	}

	public void setClass_order_people(int class_order_people) {
		this.class_order_people = class_order_people;
	}

	public String getClass_order_demand() {
		return class_order_demand;
	}

	public void setClass_order_demand(String class_order_demand) {
		this.class_order_demand = class_order_demand;
	}

	

	public boolean isClass_payment_check() {
		return class_payment_check;
	}

	public void setClass_payment_check(boolean class_payment_check) {
		this.class_payment_check = class_payment_check;
	}

	public Timestamp getClass_payment_date() {
		return class_payment_date;
	}

	public void setClass_payment_date(Timestamp class_payment_date) {
		this.class_payment_date = class_payment_date;
	}

	public int getClass_order_review() {
		return class_order_review;
	}

	public void setClass_order_review(int class_order_review) {
		this.class_order_review = class_order_review;
	}

	public String getMarchant_uid() {
		return marchant_uid;
	}

	public void setMarchant_uid(String marchant_uid) {
		this.marchant_uid = marchant_uid;
	}

	public String getImp_uid() {
		return imp_uid;
	}

	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	
	public String getClass_order_name() {
		return class_order_name;
	}

	public void setClass_order_name(String class_order_name) {
		this.class_order_name = class_order_name;
	}

	public String getClass_order_reserve_name() {
		return class_order_reserve_name;
	}

	public void setClass_order_reserve_name(String class_order_reserve_name) {
		this.class_order_reserve_name = class_order_reserve_name;
	}

	public String getClass_order_reserve_phone() {
		return class_order_reserve_phone;
	}

	public void setClass_order_reserve_phone(String class_order_reserve_phone) {
		this.class_order_reserve_phone = class_order_reserve_phone;
	}
	
	

}
