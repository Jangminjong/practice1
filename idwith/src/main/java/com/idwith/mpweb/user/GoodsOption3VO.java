package com.idwith.mpweb.user;

import java.util.Arrays;

/*
 * 상품 옵션 3번째
 */
public class GoodsOption3VO {
	private int goods_op3_code;
	private String goods_code;
	private String goods_op3_name;
	private String[] goods_op3_value;
	private int[] goods_op3_price;
	
	public String getGoods_code() {
		return goods_code;
	}
	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}
	public int getGoods_op3_code() {
		return goods_op3_code;
	}
	public void setGoods_op3_code(int goods_op3_code) {
		this.goods_op3_code = goods_op3_code;
	}
	public String getGoods_op3_name() {
		return goods_op3_name;
	}
	public void setGoods_op3_name(String goods_op3_name) {
		this.goods_op3_name = goods_op3_name;
	}
	public String[] getGoods_op3_value() {
		return goods_op3_value;
	}
	public void setGoods_op3_value(String[] goods_op3_value) {
		this.goods_op3_value = goods_op3_value;
	}
	public int[] getGoods_op3_price() {
		return goods_op3_price;
	}
	public void setGoods_op3_price(int[] goods_op3_price) {
		this.goods_op3_price = goods_op3_price;
	}
}
