package com.idwith.mpweb.user;

import java.sql.Timestamp;

public class FollowVO {
	private int follow_seq;
	private String follow_id;
	private int followed_id;
	private Timestamp follow_date;
	private boolean follow_true;

	public int getFollow_seq() {
		return follow_seq;
	}

	public void setFollow_seq(int follow_seq) {
		this.follow_seq = follow_seq;
	}

	public String getFollow_id() {
		return follow_id;
	}

	public void setFollow_id(String follow_id) {
		this.follow_id = follow_id;
	}

	public int getFollowed_id() {
		return followed_id;
	}

	public void setFollowed_id(int followed_id) {
		this.followed_id = followed_id;
	}

	public Timestamp getFollow_date() {
		return follow_date;
	}

	public void setFollow_date(Timestamp follow_date) {
		this.follow_date = follow_date;
	}
	
	

	public boolean isFollow_true() {
		return follow_true;
	}

	public void setFollow_true(boolean follow_true) {
		this.follow_true = follow_true;
	}

	@Override
	public String toString() {
		return "FollowVO [follow_seq=" + follow_seq + ", follow_id=" + follow_id + ", followed_id=" + followed_id
				+ ", follow_date=" + follow_date + "]";
	}

}
