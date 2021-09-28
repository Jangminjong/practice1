package com.idwith.mpweb.admin.board;

import java.sql.Date;

public class AdminEventBoardVO {
	int rownum;
	int user_event_board_seq;
	String user_event_board_id;
	String user_event_board_category;
	String user_event_board_title1;
	String user_event_board_title2;
	String user_event_board_content;
	Date user_event_board_start;
	Date user_event_board_end;
	int user_event_board_cnt;

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public int getUser_event_board_seq() {
		return user_event_board_seq;
	}

	public void setUser_event_board_seq(int user_event_board_seq) {
		this.user_event_board_seq = user_event_board_seq;
	}

	public String getUser_event_board_id() {
		return user_event_board_id;
	}

	public void setUser_event_board_id(String user_event_board_id) {
		this.user_event_board_id = user_event_board_id;
	}

	public String getUser_event_board_category() {
		return user_event_board_category;
	}

	public void setUser_event_board_category(String user_event_board_category) {
		this.user_event_board_category = user_event_board_category;
	}

	public String getUser_event_board_title1() {
		return user_event_board_title1;
	}

	public void setUser_event_board_title1(String user_event_board_title1) {
		this.user_event_board_title1 = user_event_board_title1;
	}

	public String getUser_event_board_title2() {
		return user_event_board_title2;
	}

	public void setUser_event_board_title2(String user_event_board_title2) {
		this.user_event_board_title2 = user_event_board_title2;
	}

	public String getUser_event_board_content() {
		return user_event_board_content;
	}

	public void setUser_event_board_content(String user_event_board_content) {
		this.user_event_board_content = user_event_board_content;
	}

	public Date getUser_event_board_start() {
		return user_event_board_start;
	}

	public void setUser_event_board_start(Date user_event_board_start) {
		this.user_event_board_start = user_event_board_start;
	}

	public Date getUser_event_board_end() {
		return user_event_board_end;
	}

	public void setUser_event_board_end(Date user_event_board_end) {
		this.user_event_board_end = user_event_board_end;
	}

	public int getUser_event_board_cnt() {
		return user_event_board_cnt;
	}

	public void setUser_event_board_cnt(int user_event_board_cnt) {
		this.user_event_board_cnt = user_event_board_cnt;
	}

	@Override
	public String toString() {
		return "AdminEventBoardVO [rownum=" + rownum + ", user_event_board_seq=" + user_event_board_seq
				+ ", user_event_board_id=" + user_event_board_id + ", user_event_board_category="
				+ user_event_board_category + ", user_event_board_title1=" + user_event_board_title1
				+ ", user_event_board_title2=" + user_event_board_title2 + ", user_event_board_content="
				+ user_event_board_content + ", user_event_board_start=" + user_event_board_start
				+ ", user_event_board_end=" + user_event_board_end + ", user_event_board_cnt=" + user_event_board_cnt
				+ "]";
	}

	
	
	
}
