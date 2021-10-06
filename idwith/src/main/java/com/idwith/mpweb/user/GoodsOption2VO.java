package com.idwith.mpweb.user;

import java.util.Arrays;

/*
 * 상품 옵션 2번째
 */
public class GoodsOption2VO {
	private int goods_op2_code;
	private String goods_code;
	private String goods_op2_name;
	private String[] goods_op2_value;
	private int[] goods_op2_price;
	
	public String getGoods_code() {
		return goods_code;
	}
	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}
	public int getGoods_op2_code() {
		return goods_op2_code;
	}
	public void setGoods_op2_code(int goods_op2_code) {
		this.goods_op2_code = goods_op2_code;
	}
	public String getGoods_op2_name() {
		return goods_op2_name;
	}
	public void setGoods_op2_name(String goods_op2_name) {
		this.goods_op2_name = goods_op2_name;
	}
	public String[] getGoods_op2_value() {
		return goods_op2_value;
	}
	public void setGoods_op2_value(String[] goods_op2_value) {
		this.goods_op2_value = goods_op2_value;
	}
	public int[] getGoods_op2_price() {
		return goods_op2_price;
	}
	public void setGoods_op2_price(int[] goods_op2_price) {
		this.goods_op2_price = goods_op2_price;
	}
}
