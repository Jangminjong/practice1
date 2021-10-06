package com.idwith.mpweb.writer;

import java.sql.Date;
import java.sql.Time;
import java.util.Arrays;

public class WriterClassOpenVO {
	
	private int classOpenSeq;
	private String classOpenName;
	private String classOpenClassCode;
	private String classOpenCategory;
	private int classOpenPrice;
	private String classOpenPostAddress;
	private String classOpenAddress;
	private String classOpenDetailAddress;
	private String classOpenReference;
	private Date classOpenDate;
	private Time classOpenTime;
	private Time classCloseTime;
	private String[] classOpenPhoto;
	private String classOpenDifficult;
	private String classOpenInfo;
	private String classOpenPhone;
	private Integer classOpenMaxPerson;
	
	public int getClassOpenSeq() {
		return classOpenSeq;
	}
	public void setClassOpenSeq(int classOpenSeq) {
		this.classOpenSeq = classOpenSeq;
	}
	public String getClassOpenName() {
		return classOpenName;
	}
	public void setClassOpenName(String classOpenName) {
		this.classOpenName = classOpenName;
	}
	public String getClassOpenClassCode() {
		return classOpenClassCode;
	}
	public void setClassOpenClassCode(String classOpenClassCode) {
		this.classOpenClassCode = classOpenClassCode;
	}
	public String getClassOpenCategory() {
		return classOpenCategory;
	}
	public void setClassOpenCategory(String classOpenCategory) {
		this.classOpenCategory = classOpenCategory;
	}
	public int getClassOpenPrice() {
		return classOpenPrice;
	}
	public void setClassOpenPrice(int classOpenPrice) {
		this.classOpenPrice = classOpenPrice;
	}
	public String getClassOpenPostAddress() {
		return classOpenPostAddress;
	}
	public void setClassOpenPostAddress(String classOpenPostAddress) {
		this.classOpenPostAddress = classOpenPostAddress;
	}
	public String getClassOpenAddress() {
		return classOpenAddress;
	}
	public void setClassOpenAddress(String classOpenAddress) {
		this.classOpenAddress = classOpenAddress;
	}
	public String getClassOpenDetailAddress() {
		return classOpenDetailAddress;
	}
	public void setClassOpenDetailAddress(String classOpenDetailAddress) {
		this.classOpenDetailAddress = classOpenDetailAddress;
	}
	public String getClassOpenReference() {
		return classOpenReference;
	}
	public void setClassOpenReference(String classOpenReference) {
		this.classOpenReference = classOpenReference;
	}
	public Date getClassOpenDate() {
		return classOpenDate;
	}
	public void setClassOpenDate(Date classOpenDate) {
		this.classOpenDate = classOpenDate;
	}
	public Time getClassOpenTime() {
		return classOpenTime;
	}
	public void setClassOpenTime(Time classOpenTime) {
		this.classOpenTime = classOpenTime;
	}
	public Time getClassCloseTime() {
		return classCloseTime;
	}
	public void setClassCloseTime(Time classCloseTime) {
		this.classCloseTime = classCloseTime;
	}
	public String[] getClassOpenPhoto() {
		return classOpenPhoto;
	}
	public void setClassOpenPhoto(String[] classOpenPhoto) {
		this.classOpenPhoto = classOpenPhoto;
	}
	public String getClassOpenDifficult() {
		return classOpenDifficult;
	}
	public void setClassOpenDifficult(String classOpenDifficult) {
		this.classOpenDifficult = classOpenDifficult;
	}
	public String getClassOpenInfo() {
		return classOpenInfo;
	}
	public void setClassOpenInfo(String classOpenInfo) {
		this.classOpenInfo = classOpenInfo;
	}
	public String getClassOpenPhone() {
		return classOpenPhone;
	}
	public void setClassOpenPhone(String classOpenPhone) {
		this.classOpenPhone = classOpenPhone;
	}
	public Integer getClassOpenMaxPerson() {
		return classOpenMaxPerson;
	}
	public void setClassOpenMaxPerson(Integer classOpenMaxPerson) {
		this.classOpenMaxPerson = classOpenMaxPerson;
	}
	
	@Override
	public String toString() {
		return "WriterClassOpenVO [classOpenSeq=" + classOpenSeq + ", classOpenName=" + classOpenName
				+ ", classOpenClassCode=" + classOpenClassCode + ", classOpenCategory=" + classOpenCategory
				+ ", classOpenPrice=" + classOpenPrice + ", classOpenPostAddress=" + classOpenPostAddress
				+ ", classOpenAddress=" + classOpenAddress + ", classOpenDetailAddress=" + classOpenDetailAddress
				+ ", classOpenReference=" + classOpenReference + ", classOpenDate=" + classOpenDate + ", classOpenTime="
				+ classOpenTime + ", classCloseTime=" + classCloseTime + ", classOpenPhoto="
				+ Arrays.toString(classOpenPhoto) + ", classOpenDifficult=" + classOpenDifficult + ", classOpenInfo="
				+ classOpenInfo + ", classOpenPhone=" + classOpenPhone + ", classOpenMaxPerson=" + classOpenMaxPerson
				+ "]";
	}
	
	
}
