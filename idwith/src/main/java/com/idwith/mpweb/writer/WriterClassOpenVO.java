package com.idwith.mpweb.writer;

import java.sql.Date;
import java.sql.Time;
import java.util.Arrays;

public class WriterClassOpenVO {
	
	private int classOpenSeq;
	private int classOpenSeller;
	private String className;
	private String classOpenClassCode;
	private String classOpenCategory;
	private String classOpenName;
	private int classOpenPrice;
	private String classOpenPostAddress;
	private String classOpenAddress;
	private String classOpenDetailAddress;
	private String classOpenReference;
	private Date classOpenDate;
	private String classOpenInputTime; // db에는 제외
	private Time classOpenTime;
	private String classCloseInputTime; // db에는 제외
	private Time classCloseTime;
	private String[] classOpenPhoto;
	private String classOpenDifficult;
	private String classOpenInfo;
	private String classOpenPhone;
	private Integer classOpenMaxPerson;
	private String[] uploadedFileList; //db에는 제외
	private String[] uploadFileList; // db에는 제외
	private WriterClassCategoryVO writerClassCategoryVO;
	
	public int getClassOpenSeq() {
		return classOpenSeq;
	}
	public void setClassOpenSeq(int classOpenSeq) {
		this.classOpenSeq = classOpenSeq;
	}	
	public int getClassOpenSeller() {
		return classOpenSeller;
	}
	public void setClassOpenSeller(int classOpenSeller) {
		this.classOpenSeller = classOpenSeller;
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
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getClassOpenPrice() {
		return classOpenPrice;
	}
	public void setClassOpenPrice(int classOpenPrice) {
		this.classOpenPrice = classOpenPrice;
	}
	public String getClassOpenName() {
		return classOpenName;
	}
	public void setClassOpenName(String classOpenName) {
		this.classOpenName = classOpenName;
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
	public String getClassOpenInputTime() {
		return classOpenInputTime;
	}
	public void setClassOpenInputTime(String classOpenInputTime) {
		this.classOpenInputTime = classOpenInputTime;
	}
	public Time getClassOpenTime() {
		return classOpenTime;
	}
	public void setClassOpenTime(Time classOpenTime) {
		this.classOpenTime = classOpenTime;
	}
	public String getClassCloseInputTime() {
		return classCloseInputTime;
	}
	public void setClassCloseInputTime(String classCloseInputTime) {
		this.classCloseInputTime = classCloseInputTime;
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
	public WriterClassCategoryVO getWriterClassCategoryVO() {
		return writerClassCategoryVO;
	}
	public void setWriterClassCategoryVO(WriterClassCategoryVO writerClassCategoryVO) {
		this.writerClassCategoryVO = writerClassCategoryVO;
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
