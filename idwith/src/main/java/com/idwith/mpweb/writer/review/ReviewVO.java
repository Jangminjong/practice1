package com.idwith.mpweb.writer.review;

import java.sql.Timestamp;

public class ReviewVO {
	
	private Integer goods_review_rownum;
	private Integer goods_review_seq;
	private String goods_review_title;
	private String goods_review_id;
	private String goods_review_product;
	private String goods_review_code;
	private Timestamp goods_review_date;
	private Integer goods_review_point; // 작품 별점
	private String goods_review_image;  // 후기 사진
	private String goods_review_option1; 
	private String goods_review_option2;
	private String goods_review_option3;
	private String goods_review_context; // 리뷰내용
	private String goods_review_comment; // 리뷰답변
	
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
	public String getGoods_review_image() {
		return goods_review_image;
	}
	public void setGoods_review_image(String goods_review_image) {
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
	
	public String getGoods_review_title() {
		return goods_review_title;
	}
	public void setGoods_review_title(String goods_review_title) {
		this.goods_review_title = goods_review_title;
	}
	
	public Integer getGoods_review_rownum() {
		return goods_review_rownum;
	}
	public void setGoods_review_rownum(Integer goods_review_rownum) {
		this.goods_review_rownum = goods_review_rownum;
	}
	
	public String getGoods_review_product() {
		return goods_review_product;
	}
	public void setGoods_review_product(String goods_review_product) {
		this.goods_review_product = goods_review_product;
	}
	
	
	@Override
	public String toString() {
		return "ReviewVO [goods_review_rownum=" + goods_review_rownum + ", goods_review_seq=" + goods_review_seq
				+ ", goods_review_title=" + goods_review_title + ", goods_review_id=" + goods_review_id
				+ ", goods_review_product=" + goods_review_product + ", goods_review_code=" + goods_review_code
				+ ", goods_review_date=" + goods_review_date + ", goods_review_point=" + goods_review_point
				+ ", goods_review_image=" + goods_review_image + ", goods_review_option1=" + goods_review_option1
				+ ", goods_review_option2=" + goods_review_option2 + ", goods_review_option3=" + goods_review_option3
				+ ", goods_review_context=" + goods_review_context + ", goods_review_comment=" + goods_review_comment
				+ "]";
	}
	
	
	
	
	
	

	

}
