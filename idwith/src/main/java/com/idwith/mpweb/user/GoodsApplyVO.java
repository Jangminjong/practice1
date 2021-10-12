package com.idwith.mpweb.user;

import java.sql.Date;
import java.util.Arrays;

public class GoodsApplyVO {
	private int goods_apply_seq;
	private String goods_apply_id;
	private String[] goods_apply_photo;
	private String goods_apply_bsn;
	private String goods_apply_info;
	private Date goods_apply_date;
	private String godds_apply_check;
	private String store_name;
	private String goods_apply_phone;
	private String goods_apply_category;
	public int getGoods_apply_seq() {
		return goods_apply_seq;
	}
	public void setGoods_apply_seq(int goods_apply_seq) {
		this.goods_apply_seq = goods_apply_seq;
	}
	public String getGoods_apply_id() {
		return goods_apply_id;
	}
	public void setGoods_apply_id(String goods_apply_id) {
		this.goods_apply_id = goods_apply_id;
	}
	public String[] getGoods_apply_photo() {
		return goods_apply_photo;
	}
	public void setGoods_apply_photo(String[] goods_apply_photo) {
		this.goods_apply_photo = goods_apply_photo;
	}
	public String getGoods_apply_bsn() {
		return goods_apply_bsn;
	}
	public void setGoods_apply_bsn(String goods_apply_bsn) {
		this.goods_apply_bsn = goods_apply_bsn;
	}
	public String getGoods_apply_info() {
		return goods_apply_info;
	}
	public void setGoods_apply_info(String goods_apply_info) {
		this.goods_apply_info = goods_apply_info;
	}
	public Date getGoods_apply_date() {
		return goods_apply_date;
	}
	public void setGoods_apply_date(Date goods_apply_date) {
		this.goods_apply_date = goods_apply_date;
	}
	public String getGodds_apply_check() {
		return godds_apply_check;
	}
	public void setGodds_apply_check(String godds_apply_check) {
		this.godds_apply_check = godds_apply_check;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getGoods_apply_phone() {
		return goods_apply_phone;
	}
	public void setGoods_apply_phone(String goods_apply_phone) {
		this.goods_apply_phone = goods_apply_phone;
	}
	public String getGoods_apply_category() {
		return goods_apply_category;
	}
	public void setGoods_apply_category(String goods_apply_category) {
		this.goods_apply_category = goods_apply_category;
	}
	
	@Override
	public String toString() {
		return "GoodsApplyVO [goods_apply_seq=" + goods_apply_seq + ", goods_apply_id=" + goods_apply_id
				+ ", goods_apply_photo=" + Arrays.toString(goods_apply_photo) + ", goods_apply_bsn=" + goods_apply_bsn
				+ ", goods_apply_info=" + goods_apply_info + ", goods_apply_date=" + goods_apply_date
				+ ", godds_apply_check=" + godds_apply_check + ", store_name=" + store_name + ", goods_apply_phone="
				+ goods_apply_phone + ", goods_apply_category=" + goods_apply_category + "]";
	}
	
	

}
