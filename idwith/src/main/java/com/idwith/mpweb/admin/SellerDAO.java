package com.idwith.mpweb.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SellerDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertSeller(SellerVO vo) {
		System.out.println("DAO insertSeller ½ÇÇà");
		sqlSessionTemplate.insert("SellerDAO.insertSeller", vo);
	}
}
