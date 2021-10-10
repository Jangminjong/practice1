package com.idwith.mpweb.user;

public class GoodsOptionVO {
	private int goods_op1_code;
	private String goods_code;
	private String goods_op1_name;
	private String[] goods_op1_value;
	private Integer[] goods_op1_price;
	private GoodsVO goodsVO;
	
	public GoodsVO getGoodsVO() {
		return goodsVO;
	}
	public void setGoodsVO(GoodsVO goodsVO) {
		this.goodsVO = goodsVO;
	}
	public int getGoods_op1_code() {
		return goods_op1_code;
	}
	public void setGoods_op1_code(int goods_op1_code) {
		this.goods_op1_code = goods_op1_code;
	}
	public String getGoods_code() {
		return goods_code;
	}
	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}
	public String getGoods_op1_name() {
		return goods_op1_name;
	}
	public void setGoods_op1_name(String goods_op1_name) {
		this.goods_op1_name = goods_op1_name;
	}
	public String[] getGoods_op1_value() {
		return goods_op1_value;
	}
	public void setGoods_op1_value(String[] goods_op1_value) {
		this.goods_op1_value = goods_op1_value;
	}
	public Integer[] getGoods_op1_price() {
		return goods_op1_price;
	}
	public void setGoods_op1_price(Integer[] goods_op1_price) {
		this.goods_op1_price = goods_op1_price;
	}
	
}
