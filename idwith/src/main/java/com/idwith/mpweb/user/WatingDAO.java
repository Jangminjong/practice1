package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WatingDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertWating(WatingVO vo) {
		System.out.println("DAO insertWating ½ÇÇà");
		sqlSessionTemplate.insert("WatingDAO.insertWating", vo);
	}
}
