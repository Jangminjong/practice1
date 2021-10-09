package com.idwith.mpweb.user.classUser;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

public class ClassOrderVO {
	int class_order_seq;
	String class_order_code;
	String class_order_price;
	Date class_order_date;
	Time class_order_time;
	int class_order_donation;
	String class_order_id;
	int class_order_people;
	String class_order_demand;
	boolean class_order_check;
	Timestamp class_payment_date;
	int class_order_review;

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

	public String getClass_order_price() {
		return class_order_price;
	}

	public void setClass_order_price(String class_order_price) {
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

	public boolean isClass_order_check() {
		return class_order_check;
	}

	public void setClass_order_check(boolean class_order_check) {
		this.class_order_check = class_order_check;
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

}
