package com.idwith.mpweb.writer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("writerClassApplyDAO")
public class WriterClassApplyDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertClassApply(WriterClassApplyVO writerClassApplyVO) {
		System.out.println("DAO insertClassApply() 실행");
		sqlSessionTemplate.insert("WriterClassApplyDAO.insertClassApply" , writerClassApplyVO);
	}
	
	public List<WriterClassApplyVO> getClassApplyList(String sellerCheck){
		System.out.println("DAO getClassApplyList() 실행");
		return null;
	}
}
