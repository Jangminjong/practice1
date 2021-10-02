package com.idwith.mpweb.user;

import java.sql.Date;
import java.util.Arrays;

public class SellerStoryVO {
	private int story_tseq;
	private int seller_id;
	private Date story_date;
	private String story_title;
	private String story_context;
	private String[] story_image;
	private String seller_name;
	private int story_cnt;
	
	public int getStory_tseq() {
		return story_tseq;
	}
	public void setStory_tseq(int story_tseq) {
		this.story_tseq = story_tseq;
	}
	public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}
	public Date getStory_date() {
		return story_date;
	}
	public void setStory_date(Date story_date) {
		this.story_date = story_date;
	}
	public String getStory_title() {
		return story_title;
	}
	public void setStory_title(String story_title) {
		this.story_title = story_title;
	}
	public String getStory_context() {
		return story_context;
	}
	public void setStory_context(String story_context) {
		this.story_context = story_context;
	}
	public String[] getStory_image() {
		return story_image;
	}
	public void setStory_image(String[] story_image) {
		this.story_image = story_image;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public int getStory_cnt() {
		return story_cnt;
	}
	public void setStory_cnt(int story_cnt) {
		this.story_cnt = story_cnt;
	}
	@Override
	public String toString() {
		return "SellerStoryVO [story_tseq=" + story_tseq + ", seller_id=" + seller_id + ", story_date=" + story_date
				+ ", story_title=" + story_title + ", story_context=" + story_context + ", story_image="
				+ Arrays.toString(story_image) + ", seller_name=" + seller_name + ", story_cnt=" + story_cnt + "]";
	}
}
