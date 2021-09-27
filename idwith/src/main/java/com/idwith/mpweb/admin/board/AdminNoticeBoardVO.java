package com.idwith.mpweb.admin.board;

import java.sql.Timestamp;

/*
 * admin_board_seq
 * admin_board_id
 * admin_board_name
 * admin_board_title
 * admin_board_content
 * admin_board_date
 * admin_board_cnt
 * admin_board_file
 * admin_board_static
 */

public class AdminNoticeBoardVO {
	
	private Integer adminBoardSeq;
	private String adminBoardId;
	private String adminBoardTitle;
	private String amdinBoardContent;
	private Timestamp adminBoardRegDate;
	private Integer adminBoardCnt;
	private String adminBoardFilePath;
	private boolean adminBoardStatic;
	private int rownum;
	
	
	public Integer getAdminBoardSeq() {
		return adminBoardSeq;
	}
	public void setAdminBoardSeq(Integer adminBoardSeq) {
		this.adminBoardSeq = adminBoardSeq;
	}
	public String getAdminBoardId() {
		return adminBoardId;
	}
	public void setAdminBoardId(String adminBoardId) {
		this.adminBoardId = adminBoardId;
	}
	public String getAdminBoardTitle() {
		return adminBoardTitle;
	}
	public void setAdminBoardTitle(String adminBoardTitle) {
		this.adminBoardTitle = adminBoardTitle;
	}
	public String getAmdinBoardContent() {
		return amdinBoardContent;
	}
	public void setAmdinBoardContent(String amdinBoardContent) {
		this.amdinBoardContent = amdinBoardContent;
	}
	public Timestamp getAdminBoardRegDate() {
		return adminBoardRegDate;
	}
	public void setAdminBoardRegDate(Timestamp adminBoardRegDate) {
		this.adminBoardRegDate = adminBoardRegDate;
	}
	public Integer getAdminBoardCnt() {
		return adminBoardCnt;
	}
	public void setAdminBoardCnt(Integer adminBoardCnt) {
		this.adminBoardCnt = adminBoardCnt;
	}
	public String getAdminBoardFilePath() {
		return adminBoardFilePath;
	}
	public void setAdminBoardFilePath(String adminBoardFilePath) {
		this.adminBoardFilePath = adminBoardFilePath;
	}
	public boolean isAdminBoardStatic() {
		return adminBoardStatic;
	}
	public void setAdminBoardStatic(boolean adminBoardStatic) {
		this.adminBoardStatic = adminBoardStatic;
	}
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	
	@Override
	public String toString() {
		return "AdminNoticeBoardVO [adminBoardSeq=" + adminBoardSeq + ", adminBoardId=" + adminBoardId
				+ ", adminBoardTitle=" + adminBoardTitle + ", amdinBoardContent=" + amdinBoardContent
				+ ", adminBoardRegDate=" + adminBoardRegDate + ", adminBoardCnt=" + adminBoardCnt
				+ ", adminBoardFilePath=" + adminBoardFilePath + ", adminBoardStatic=" + adminBoardStatic + ", rownum="
				+ rownum + "]";
	}
	
	

}
