package com.idwith.mpweb.admin;

import java.sql.Timestamp;
import java.util.Arrays;

public class ClassProposeInfoVO {
	
	private Integer classRegSeq;
	private String classSeller;
	private String storeName;
	private String className;
	private String classPhone;
	private String sellerSellno;
	private String classCategory;
	private Timestamp classRegdate;
	private String classInfo;
	private String[] classPhoto;
	
	public String[] getClassPhoto() {
		return classPhoto;
	}
	public void setClassPhoto(String[] classPhoto) {
		this.classPhoto = classPhoto;
	}
	public Integer getClassRegSeq() {
		return classRegSeq;
	}
	public void setClassRegSeq(Integer classRegSeq) {
		this.classRegSeq = classRegSeq;
	}
	
	public String getClassSeller() {
		return classSeller;
	}
	public void setClassSeller(String classSeller) {
		this.classSeller = classSeller;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassPhone() {
		return classPhone;
	}
	public void setClassPhone(String classPhone) {
		this.classPhone = classPhone;
	}
	public String getSellerSellno() {
		return sellerSellno;
	}
	public void setSellerSellno(String sellerSellno) {
		this.sellerSellno = sellerSellno;
	}
	public String getClassCategory() {
		return classCategory;
	}
	public void setClassCategory(String classCategory) {
		this.classCategory = classCategory;
	}
	public Timestamp getClassRegdate() {
		return classRegdate;
	}
	public void setClassRegdate(Timestamp classRegdate) {
		this.classRegdate = classRegdate;
	}
	public String getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(String classInfo) {
		this.classInfo = classInfo;
	}
	
	@Override
	public String toString() {
		return "ClassProposeInfoVO [classRegSeq=" + classRegSeq + ", classSeller=" + classSeller + ", storeName="
				+ storeName + ", className=" + className + ", classPhone=" + classPhone + ", sellerSellno="
				+ sellerSellno + ", classCategory=" + classCategory + ", classRegdate=" + classRegdate + ", classInfo="
				+ classInfo + ", classPhoto=" + Arrays.toString(classPhoto) + "]";
	}
	
	
}
