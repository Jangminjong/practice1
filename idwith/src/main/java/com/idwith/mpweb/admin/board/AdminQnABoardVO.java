package com.idwith.mpweb.admin.board;

import java.util.Date;

public class AdminQnABoardVO {
	String user_id;
	String board_category;
	String board_title;
	String board_content;
	String board_answer;
	boolean board_secret;
	Date board_date;
	boolean board_fix;
	int seq;
	int rownum;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBoard_category() {
		return board_category;
	}

	public void setBoard_category(String board_category) {
		this.board_category = board_category;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_answer() {
		return board_answer;
	}

	public void setBoard_answer(String board_answer) {
		this.board_answer = board_answer;
	}

	public boolean isBoard_secret() {
		return board_secret;
	}

	public void setBoard_secret(boolean board_secret) {
		this.board_secret = board_secret;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public boolean isBoard_fix() {
		return board_fix;
	}

	public void setBoard_fix(boolean board_fix) {
		this.board_fix = board_fix;
	}
	
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	@Override
	public String toString() {
		return "AdminQnABoardVO [user_id=" + user_id + ", board_category=" + board_category + ", board_title="
				+ board_title + ", board_content=" + board_content + ", board_answer=" + board_answer
				+ ", board_secret=" + board_secret + ", board_date=" + board_date + ", board_fix=" + board_fix
				+ ", seq=" + seq + ", rownum=" + rownum + "]";
	}

	
	
}
