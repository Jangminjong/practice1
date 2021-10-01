package com.idwith.mpweb.writer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("writerClassApplyDAO")
public class WriterClassRegDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertClassApply(WriterClassRegVO writerClassRegVO) {
		System.out.println("DAO insertClassApply() 실행");
		sqlSessionTemplate.insert("WriterClassApplyDAO.insertClassApply" , writerClassRegVO);
	}
	
	public List<WriterClassRegVO> getClassApplyList(String sellerCheck){
		System.out.println("DAO getClassApplyList() 실행");
		return null;
	}
}
