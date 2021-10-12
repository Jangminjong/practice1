package com.idwith.mpweb.writer.storyboard;

import java.sql.Timestamp;
import java.util.Arrays;

public class StoryBoardVO {
	
	private Integer storySellerId;
	private Timestamp storyBoardRegDate;
	private String[] storyBoardFilePath;
	private String storyBoardContext;
	private String storyBoardTitle;
	private int story_tseq;
	private String storySellerName;
	private Integer storyCnt;
	private Integer rownum;
	// seller 테이블에 있는 컬럼
	private String[] sellerProfileImg;
	private String store_name;
	// form 데이터 가져오기 용
	private String[] uploadedFileList;
	private String[] uploadFileList;
	
	public Integer getStorySellerId() {
		return storySellerId;
	}
	public void setStorySellerId(Integer storySellerId) {
		this.storySellerId = storySellerId;
	}
	public Timestamp getStoryBoardRegDate() {
		return storyBoardRegDate;
	}
	public void setStoryBoardRegDate(Timestamp storyBoardRegDate) {
		this.storyBoardRegDate = storyBoardRegDate;
	}
	
	public String[] getStoryBoardFilePath() {
		return storyBoardFilePath;
	}
	public void setStoryBoardFilePath(String[] storyBoardFilePath) {
		this.storyBoardFilePath = storyBoardFilePath;
	}
	public String getStoryBoardContext() {
		return storyBoardContext;
	}
	public void setStoryBoardContext(String storyBoardContext) {
		this.storyBoardContext = storyBoardContext;
	}
	public String getStoryBoardTitle() {
		return storyBoardTitle;
	}
	public void setStoryBoardTitle(String storyBoardTitle) {
		this.storyBoardTitle = storyBoardTitle;
	}
	public int getStory_tseq() {
		return story_tseq;
	}
	public void setStory_tseq(int story_tseq) {
		this.story_tseq = story_tseq;
	}
	public String getStorySellerName() {
		return storySellerName;
	}
	public void setStorySellerName(String storySellerName) {
		this.storySellerName = storySellerName;
	}
	public Integer getStoryCnt() {
		return storyCnt;
	}
	public void setStoryCnt(Integer storyCnt) {
		this.storyCnt = storyCnt;
	}

	public Integer getRownum() {
		return rownum;
	}

	public void setRownum(Integer rownum) {
		this.rownum = rownum;
	}
	
	public String[] getSellerProfileImg() {
		return sellerProfileImg;
	}
	public void setSellerProfileImg(String[] sellerProfileImg) {
		this.sellerProfileImg = sellerProfileImg;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String[] getUploadedFileList() {
		return uploadedFileList;
	}
	public void setUploadedFileList(String[] uploadedFileList) {
		this.uploadedFileList = uploadedFileList;
	}
	public String[] getUploadFileList() {
		return uploadFileList;
	}
	public void setUploadFileList(String[] uploadFileList) {
		this.uploadFileList = uploadFileList;
	}
	@Override
	public String toString() {
		return "StoryBoardVO [storySellerId=" + storySellerId + ", storyBoardRegDate=" + storyBoardRegDate
				+ ", storyBoardFilePath=" + Arrays.toString(storyBoardFilePath) + ", storyBoardContext="
				+ storyBoardContext + ", storyBoardTitle=" + storyBoardTitle + ", story_tseq=" + story_tseq
				+ ", storySellerName=" + storySellerName + ", storyCnt=" + storyCnt + ", rownum=" + rownum
				+ ", sellerProfileImg=" + Arrays.toString(sellerProfileImg) + ", store_name=" + store_name
				+ ", uploadedFileList=" + Arrays.toString(uploadedFileList) + ", uploadFileList="
				+ Arrays.toString(uploadFileList) + "]";
	}
	
	
}
