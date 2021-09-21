package com.idwith.mpweb.user.board;

import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "qnaList")
@XmlAccessorType(XmlAccessType.FIELD)
public class QnAListVO {
	@XmlElement(name = "qna")
	private List<QnABoardVO> qnaList;
	
	public List<QnABoardVO> getQnAList(){
		return qnaList;
	}
	
	public void setQnAList(List<QnABoardVO> qnaList) {
		this.qnaList=qnaList;
	}
}
