package com.idwith.mpweb.writer.coupon;

import java.sql.Date;
import java.sql.Timestamp;

public class WriterCouponVO {
	
	private int request_cp_seq;  
	private Integer request_cp_seller;  //작가코드
	private Integer request_cp_price;  // 할인금액
	private Integer request_cp_min_price; // 적용가능최소금액
	private String request_cp_name;    // 요청이름
	private String request_cp_target;   // 쿠폰대상
	private Integer rownum;
	private Timestamp request_cp_date; // 요청 날짜
	private String request_cp_context; // 요청 사항
	private Date request_cp_start; // 쿠폰 시작일
	private Date request_cp_end;   // 쿠폰 종료일
	private Integer request_cp_state; // 쿠폰 발급 상태
	
	public int getRequest_cp_seq() {
		return request_cp_seq;
	}
	public void setRequest_cp_seq(int request_cp_seq) {
		this.request_cp_seq = request_cp_seq;
	}
	public Integer getRequest_cp_seller() {
		return request_cp_seller;
	}
	public void setRequest_cp_seller(Integer request_cp_seller) {
		this.request_cp_seller = request_cp_seller;
	}
	public Integer getRequest_cp_price() {
		return request_cp_price;
	}
	public void setRequest_cp_price(Integer request_cp_price) {
		this.request_cp_price = request_cp_price;
	}
	public Integer getRequest_cp_min_price() {
		return request_cp_min_price;
	}
	public void setRequest_cp_min_price(Integer request_cp_min_price) {
		this.request_cp_min_price = request_cp_min_price;
	}
	public String getRequest_cp_name() {
		return request_cp_name;
	}
	public void setRequest_cp_name(String request_cp_name) {
		this.request_cp_name = request_cp_name;
	}
	public String getRequest_cp_target() {
		return request_cp_target;
	}
	public void setRequest_cp_target(String request_cp_target) {
		this.request_cp_target = request_cp_target;
	}
	public Integer getRownum() {
		return rownum;
	}
	public void setRownum(Integer rownum) {
		this.rownum = rownum;
	}
	public Timestamp getRequest_cp_date() {
		return request_cp_date;
	}
	public void setRequest_cp_date(Timestamp request_cp_date) {
		this.request_cp_date = request_cp_date;
	}
	public String getRequest_cp_context() {
		return request_cp_context;
	}
	public void setRequest_cp_context(String request_cp_context) {
		this.request_cp_context = request_cp_context;
	}
	public Date getRequest_cp_start() {
		return request_cp_start;
	}
	public void setRequest_cp_start(Date request_cp_start) {
		this.request_cp_start = request_cp_start;
	}
	public Date getRequest_cp_end() {
		return request_cp_end;
	}
	public void setRequest_cp_end(Date request_cp_end) {
		this.request_cp_end = request_cp_end;
	}
	public Integer getRequest_cp_state() {
		return request_cp_state;
	}
	public void setRequest_cp_state(Integer request_cp_state) {
		this.request_cp_state = request_cp_state;
	}
	@Override
	public String toString() {
		return "WriterCouponVO [request_cp_seq=" + request_cp_seq + ", request_cp_seller=" + request_cp_seller
				+ ", request_cp_price=" + request_cp_price + ", request_cp_min_price=" + request_cp_min_price
				+ ", request_cp_name=" + request_cp_name + ", request_cp_target=" + request_cp_target + ", rownum="
				+ rownum + ", request_cp_date=" + request_cp_date + ", request_cp_context=" + request_cp_context
				+ ", request_cp_start=" + request_cp_start + ", request_cp_end=" + request_cp_end
				+ ", request_cp_state=" + request_cp_state + "]";
	}
	
	
	
	
	
	
}
