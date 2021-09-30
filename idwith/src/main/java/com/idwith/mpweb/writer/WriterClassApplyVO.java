package com.idwith.mpweb.writer;

import java.sql.Date;
import java.util.Arrays;


public class WriterClassApplyVO {

	private int classApplySeq;
	private String classApplyId;
	private String classApplySeller;
	private String classApplyName;
	private int classApplyPrice;
	private String classApplyPostAddress;
	private String classApplyAddress;
	private String classApplyDetailAddress;
	private String classApplyReference;
	private String classApplyDifficult;
	private int classApplyPerson;
	private String classApplyInfo;
	private Date classApplyDate;
	private String[] classApplyPhoto;
	private int classApplyCheck;
	
	public int getClassApplySeq() {
		return classApplySeq;
	}
	public void setClassApplySeq(int classApplySeq) {
		this.classApplySeq = classApplySeq;
	}
	public String getClassApplyId() {
		return classApplyId;
	}
	public void setClassApplyId(String classApplyId) {
		this.classApplyId = classApplyId;
	}
	public String getClassApplySeller() {
		return classApplySeller;
	}
	public void setClassApplySeller(String classApplySeller) {
		this.classApplySeller = classApplySeller;
	}
	public String getClassApplyName() {
		return classApplyName;
	}
	public void setClassApplyName(String classApplyName) {
		this.classApplyName = classApplyName;
	}
	public int getClassApplyPrice() {
		return classApplyPrice;
	}
	public void setClassApplyPrice(int classApplyPrice) {
		this.classApplyPrice = classApplyPrice;
	}
	public String getClassApplyPostAddress() {
		return classApplyPostAddress;
	}
	public void setClassApplyPostAddress(String classApplyPostAddress) {
		this.classApplyPostAddress = classApplyPostAddress;
	}
	public String getClassApplyAddress() {
		return classApplyAddress;
	}
	public void setClassApplyAddress(String classApplyAddress) {
		this.classApplyAddress = classApplyAddress;
	}
	public String getClassApplyDetailAddress() {
		return classApplyDetailAddress;
	}
	public void setClassApplyDetailAddress(String classApplyDetailAddress) {
		this.classApplyDetailAddress = classApplyDetailAddress;
	}
	public String getClassApplyReference() {
		return classApplyReference;
	}
	public void setClassApplyReference(String classApplyReference) {
		this.classApplyReference = classApplyReference;
	}
	public String getClassApplyDifficult() {
		return classApplyDifficult;
	}
	public void setClassApplyDifficult(String classApplyDifficult) {
		this.classApplyDifficult = classApplyDifficult;
	}
	public int getClassApplyPerson() {
		return classApplyPerson;
	}
	public void setClassApplyPerson(int classApplyPerson) {
		this.classApplyPerson = classApplyPerson;
	}
	public String getClassApplyInfo() {
		return classApplyInfo;
	}
	public void setClassApplyInfo(String classApplyInfo) {
		this.classApplyInfo = classApplyInfo;
	}
	public Date getClassApplyDate() {
		return classApplyDate;
	}
	public void setClassApplyDate(Date classApplyDate) {
		this.classApplyDate = classApplyDate;
	}
	public String[] getClassApplyPhoto() {
		return classApplyPhoto;
	}
	public void setClassApplyPhoto(String[] classApplyPhoto) {
		this.classApplyPhoto = classApplyPhoto;
	}
	public int getClassApplyCheck() {
		return classApplyCheck;
	}
	public void setClassApplyCheck(int classApplyCheck) {
		this.classApplyCheck = classApplyCheck;
	}
	@Override
	public String toString() {
		return "WriterClassApplyVO [classApplySeq=" + classApplySeq + ", classApplyId=" + classApplyId
				+ ", classApplySeller=" + classApplySeller + ", classApplyName=" + classApplyName + ", classApplyPrice="
				+ classApplyPrice + ", classApplyPostAddress=" + classApplyPostAddress + ", classApplyAddress="
				+ classApplyAddress + ", classApplyDetailAddress=" + classApplyDetailAddress + ", classApplyReference="
				+ classApplyReference + ", classApplyDifficult=" + classApplyDifficult + ", classApplyPerson="
				+ classApplyPerson + ", classApplyInfo=" + classApplyInfo + ", classApplyDate=" + classApplyDate
				+ ", classApplyPhoto=" + Arrays.toString(classApplyPhoto) + ", classApplyCheck=" + classApplyCheck
				+ "]";
	}
	
	
	
}
