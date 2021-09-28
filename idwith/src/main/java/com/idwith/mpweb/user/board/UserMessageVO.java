package com.idwith.mpweb.user.board;

import java.sql.Date;

public class UserMessageVO {
	int msg_seq;
	String msg_id;
	String msgd_id;
	String msg_context;
	Date msg_date;
	int msg_read;
	int msg_new;

	public int getMsg_seq() {
		return msg_seq;
	}

	public void setMsg_seq(int msg_seq) {
		this.msg_seq = msg_seq;
	}

	public String getMsg_id() {
		return msg_id;
	}

	public void setMsg_id(String msg_id) {
		this.msg_id = msg_id;
	}

	public String getMsgd_id() {
		return msgd_id;
	}

	public void setMsgd_id(String msgd_id) {
		this.msgd_id = msgd_id;
	}

	public String getMsg_context() {
		return msg_context;
	}

	public void setMsg_context(String msg_context) {
		this.msg_context = msg_context;
	}

	public Date getMsg_date() {
		return msg_date;
	}

	public void setMsg_date(Date msg_date) {
		this.msg_date = msg_date;
	}

	public int getMsg_read() {
		return msg_read;
	}

	public void setMsg_read(int msg_read) {
		this.msg_read = msg_read;
	}

	public int getMsg_new() {
		return msg_new;
	}

	public void setMsg_new(int msg_new) {
		this.msg_new = msg_new;
	}

	@Override
	public String toString() {
		return "UserMessageVO [msg_seq=" + msg_seq + ", msg_id=" + msg_id + ", msgd_id=" + msgd_id + ", msg_context="
				+ msg_context + ", msg_date=" + msg_date + ", msg_read=" + msg_read + ", msg_new=" + msg_new + "]";
	}
	
	

}
