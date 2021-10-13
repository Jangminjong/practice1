package com.idwith.mpweb.user;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class GoodsOrderVO {
	private int order_num;
	private String[] order_detail_codes;
	private String order_delivery_code;
	private Timestamp order_payment_date;
	private boolean order_payment_check;
	private String order_id;
	private int order_save;
	private boolean order_save_use;
	private int order_final_cost;
	private String marchant_uid;
	private String imp_uid;

	public int getOrder_num() {
		return order_num;
	}

	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}

	public String[] getOrder_detail_codes() {
		return order_detail_codes;
	}

	public void setOrder_detail_codes(String[] order_detail_codes) {
		this.order_detail_codes = order_detail_codes;
	}
	

	public String getOrder_delivery_code() {
		return order_delivery_code;
	}

	public void setOrder_delivery_code(String order_delivery_code) {
		this.order_delivery_code = order_delivery_code;
	}

	public Timestamp getOrder_payment_date() {
		return order_payment_date;
	}

	public void setOrder_payment_date(Timestamp order_payment_date) {
		this.order_payment_date = order_payment_date;
	}

	public boolean isOrder_payment_check() {
		return order_payment_check;
	}

	public void setOrder_payment_check(boolean order_payment_check) {
		this.order_payment_check = order_payment_check;
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public int getOrder_save() {
		return order_save;
	}

	public void setOrder_save(int order_save) {
		this.order_save = order_save;
	}

	public boolean isOrder_save_use() {
		return order_save_use;
	}

	public void setOrder_save_use(boolean order_save_use) {
		this.order_save_use = order_save_use;
	}

	public int getOrder_final_cost() {
		return order_final_cost;
	}

	public void setOrder_final_cost(int order_final_cost) {
		this.order_final_cost = order_final_cost;
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

	
}
