package com.idwith.mpweb.admin.board;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name = "adminQnAList")
@XmlAccessorType(XmlAccessType.FIELD)
public class AdminQnABoardListVO {
	@XmlElement(name = "adminQnA")
	private List<AdminQnABoardVO> adminQnAList;

	public List<AdminQnABoardVO> getQnAList() {
		return adminQnAList;
	}

	public void setQnAList(List<AdminQnABoardVO> adminQnAList) {
		this.adminQnAList = adminQnAList;
	}
}
