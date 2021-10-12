package com.idwith.mpweb.writer.review;

import java.sql.Timestamp;
import java.util.Arrays;

public class ReviewVO {
	
	private Integer rownum;
	private Integer goods_review_seq;
	private String goods_review_id;
	private String goods_review_product;
	private String goods_review_code;
	private Timestamp goods_review_date;
	private Integer goods_review_point; // 작품 별점
	private String[] goods_review_image;  // 후기 사진
	private String goods_review_option1; 
	private String goods_review_option2;
	private String goods_review_option3;
	private String goods_review_context; // 리뷰내용
	private String goods_review_comment; // 리뷰답변
	private Integer goods_seller_code;
	
	public Integer getGoods_review_seq() {
		return goods_review_seq;
	}
	public void setGoods_review_seq(Integer goods_review_seq) {
		this.goods_review_seq = goods_review_seq;
	}
	public String getGoods_review_id() {
		return goods_review_id;
	}
	public void setGoods_review_id(String goods_review_id) {
		this.goods_review_id = goods_review_id;
	}
	public String getGoods_review_code() {
		return goods_review_code;
	}
	public void setGoods_review_code(String goods_review_code) {
		this.goods_review_code = goods_review_code;
	}
	public Timestamp getGoods_review_date() {
		return goods_review_date;
	}
	public void setGoods_review_date(Timestamp goods_review_date) {
		this.goods_review_date = goods_review_date;
	}
	public Integer getGoods_review_point() {
		return goods_review_point;
	}
	public void setGoods_review_point(Integer goods_review_point) {
		this.goods_review_point = goods_review_point;
	}
	public String[] getGoods_review_image() {
		return goods_review_image;
	}
	public void setGoods_review_image(String[] goods_review_image) {
		this.goods_review_image = goods_review_image;
	}
	public String getGoods_review_option1() {
		return goods_review_option1;
	}
	public void setGoods_review_option1(String goods_review_option1) {
		this.goods_review_option1 = goods_review_option1;
	}
	public String getGoods_review_option2() {
		return goods_review_option2;
	}
	public void setGoods_review_option2(String goods_review_option2) {
		this.goods_review_option2 = goods_review_option2;
	}
	public String getGoods_review_option3() {
		return goods_review_option3;
	}
	public void setGoods_review_option3(String goods_review_option3) {
		this.goods_review_option3 = goods_review_option3;
	}
	public String getGoods_review_context() {
		return goods_review_context;
	}
	public void setGoods_review_context(String goods_review_context) {
		this.goods_review_context = goods_review_context;
	}
	
	public String getGoods_review_comment() {
		return goods_review_comment;
	}
	public void setGoods_review_comment(String goods_review_comment) {
		this.goods_review_comment = goods_review_comment;
	}
	
	public Integer getRownum() {
		return rownum;
	}
	public void setRownum(Integer rownum) {
		this.rownum = rownum;
	}
	public String getGoods_review_product() {
		return goods_review_product;
	}
	public void setGoods_review_product(String goods_review_product) {
		this.goods_review_product = goods_review_product;
	}
	
	public Integer getGoods_seller_code() {
		return goods_seller_code;
	}
	public void setGoods_seller_code(Integer goods_seller_code) {
		this.goods_seller_code = goods_seller_code;
	}
	
	
	
	
	

	

}
