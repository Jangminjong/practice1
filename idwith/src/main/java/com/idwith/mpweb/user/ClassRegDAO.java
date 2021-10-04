package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClassRegDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertClassReg(ClassRegVO classRegVO) {
		sqlSessionTemplate.insert("WatingDAO.insertClassReg", classRegVO);
	}
}
