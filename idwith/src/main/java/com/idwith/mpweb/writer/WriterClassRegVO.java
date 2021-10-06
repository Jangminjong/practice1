package com.idwith.mpweb.writer;

import java.sql.Date;
import java.util.Arrays;


public class WriterClassRegVO {

	private int classRegSeq;
	private int classSeller;
	private String classCategory;
	private String classCode;
	private String classPostAddress;
	private String classAddress;
	private String classDetailAddress;
	private String classReference;
	private String classInfo;
	private Date classRegDate;
	private String classPhone;
	private String[] classPhoto;
	private int classStatus;
	private String[] uploadedFileList;
	private String[] uploadFileList;
	public int getClassRegSeq() {
		return classRegSeq;
	}
	public void setClassRegSeq(int classRegSeq) {
		this.classRegSeq = classRegSeq;
	}
	public int getClassSeller() {
		return classSeller;
	}
	public void setClassSeller(int classSeller) {
		this.classSeller = classSeller;
	}
	public String getClassCategory() {
		return classCategory;
	}
	public void setClassCategory(String classCategory) {
		this.classCategory = classCategory;
	}

	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getClassPostAddress() {
		return classPostAddress;
	}
	public void setClassPostAddress(String classPostAddress) {
		this.classPostAddress = classPostAddress;
	}
	public String getClassAddress() {
		return classAddress;
	}
	public void setClassAddress(String classAddress) {
		this.classAddress = classAddress;
	}
	public String getClassDetailAddress() {
		return classDetailAddress;
	}
	public void setClassDetailAddress(String classDetailAddress) {
		this.classDetailAddress = classDetailAddress;
	}
	public String getClassReference() {
		return classReference;
	}
	public void setClassReference(String classReference) {
		this.classReference = classReference;
	}
	public String getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(String classInfo) {
		this.classInfo = classInfo;
	}
	public Date getClassRegDate() {
		return classRegDate;
	}
	public void setClassRegDate(Date classRegDate) {
		this.classRegDate = classRegDate;
	}
	public String getClassPhone() {
		return classPhone;
	}
	public void setClassPhone(String classPhone) {
		this.classPhone = classPhone;
	}
	public String[] getClassPhoto() {
		return classPhoto;
	}
	public void setClassPhoto(String[] classPhoto) {
		this.classPhoto = classPhoto;
	}
	public int getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(int classStatus) {
		this.classStatus = classStatus;
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
		return "WriterClassRegVO [classRegSeq=" + classRegSeq + ", classSeller=" + classSeller + ", classCategory="
				+ classCategory + ", classCode=" + classCode + ", classPostAddress=" + classPostAddress
				+ ", classAddress=" + classAddress + ", classDetailAddress=" + classDetailAddress + ", classReference="
				+ classReference + ", classInfo=" + classInfo + ", classRegDate=" + classRegDate + ", classPhone="
				+ classPhone + ", classPhoto=" + Arrays.toString(classPhoto) + ", classStatus=" + classStatus
				+ ", uploadedFileList=" + Arrays.toString(uploadedFileList) + ", uploadFileList="
				+ Arrays.toString(uploadFileList) + "]";
	}
	
	
	
}
