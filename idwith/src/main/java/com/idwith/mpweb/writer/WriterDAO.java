package com.idwith.mpweb.writer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void writerEnrollmentCancle(int sellerCode) {
		sqlSessionTemplate.update("writerDAO.enrollmentCancle", sellerCode);
	}
	
	
}
