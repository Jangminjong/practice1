package com.idwith.mpweb.admin;

import java.sql.Timestamp;

public class UserListVO {

	private String userId;
	private String userPwd;
	private String userName;
	private String userPhone;
	private String userZipcode;
	private String userAddress1;
	private String userAddress2;
	private String userGrade;
	private long userAllmcount;
	private Timestamp userJoinDate;
	private boolean userBlackCheck;
	private String searchContdition;
	private String searchKeyword;
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSerchKeyword(String serchKeyword) {
		this.searchKeyword = serchKeyword;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserZipcode() {
		return userZipcode;
	}
	public void setUserZipcode(String userZipcode) {
		this.userZipcode = userZipcode;
	}
	public String getUserAddress1() {
		return userAddress1;
	}
	public void setUserAddress1(String userAddress1) {
		this.userAddress1 = userAddress1;
	}
	public String getUserAddress2() {
		return userAddress2;
	}
	public void setUserAddress2(String userAddress2) {
		this.userAddress2 = userAddress2;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
	public long getUserAllmcount() {
		return userAllmcount;
	}
	public void setUserAllmcount(long userAllmcount) {
		this.userAllmcount = userAllmcount;
	}
	public Timestamp getUserJoinDate() {
		return userJoinDate;
	}
	public void setUserJoinDate(Timestamp userJoinDate) {
		this.userJoinDate = userJoinDate;
	}
	
	public boolean isUserBlackCheck() {
		return userBlackCheck;
	}
	public void setUserBlackCheck(boolean userBlackCheck) {
		this.userBlackCheck = userBlackCheck;
	}
	
	public String getSearchContdition() {
		return searchContdition;
	}
	public void setSearchContdition(String searchContdition) {
		this.searchContdition = searchContdition;
	}
	@Override
	public String toString() {
		return "UserListVO [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", userPhone="
				+ userPhone + ", userZipcode=" + userZipcode + ", userAddress1=" + userAddress1 + ", userAddress2="
				+ userAddress2 + ", userGrade=" + userGrade + ", userAllmcount=" + userAllmcount + ", userJoinDate="
				+ userJoinDate + ", userBlackCheck=" + userBlackCheck + ", searchContdition=" + searchContdition
				+ ", serchKeyword=" + searchKeyword + "]";
	}
	
}
