package com.idwith.mpweb.writer;

import java.sql.Timestamp;

public class FollowerVO {
	
	private Integer follow_seq;
	private String follow_id;
	private Integer followed_id;
	private Timestamp follow_date;
	public Integer getFollow_seq() {
		return follow_seq;
	}
	public void setFollow_seq(Integer follow_seq) {
		this.follow_seq = follow_seq;
	}
	public String getFollow_id() {
		return follow_id;
	}
	public void setFollow_id(String follow_id) {
		this.follow_id = follow_id;
	}
	public Integer getFollowed_id() {
		return followed_id;
	}
	public void setFollowed_id(Integer followed_id) {
		this.followed_id = followed_id;
	}
	public Timestamp getFollow_date() {
		return follow_date;
	}
	public void setFollow_date(Timestamp follow_date) {
		this.follow_date = follow_date;
	}
	
	

}
