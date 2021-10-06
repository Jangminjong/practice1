package com.idwith.mpweb.user;

import java.sql.Timestamp;

public class ChoiceVO {
	private int choice_seq;
	private String choice_id;
	private String choiced_code;
	private Timestamp choice_date;
	private boolean choice_true;

	public int getChoice_seq() {
		return choice_seq;
	}

	public void setChoice_seq(int choice_seq) {
		this.choice_seq = choice_seq;
	}

	public String getChoice_id() {
		return choice_id;
	}

	public void setChoice_id(String choice_id) {
		this.choice_id = choice_id;
	}

	public String getChoiced_code() {
		return choiced_code;
	}

	public void setChoiced_code(String choiced_code) {
		this.choiced_code = choiced_code;
	}

	public Timestamp getChoice_date() {
		return choice_date;
	}

	public void setChoice_date(Timestamp choice_date) {
		this.choice_date = choice_date;
	}

	public boolean isChoice_true() {
		return choice_true;
	}

	public void setChoice_true(boolean choice_true) {
		this.choice_true = choice_true;
	}

	@Override
	public String toString() {
		return "ChoiceVO [choice_seq=" + choice_seq + ", choice_id=" + choice_id + ", choiced_code=" + choiced_code
				+ ", choice_date=" + choice_date + ", choice_true=" + choice_true + "]";
	}

}
