package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SellerCheckDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int getSeller(String user_id) {
		System.out.println("DAO ����, �̸��� : " + user_id);
		int result;
		boolean dbResult = sqlSessionTemplate.selectOne("SellerCheckDAO.sellerCheck", user_id);
		System.out.println("DB��� �� : " + dbResult);
		
		if(dbResult == true) {
			result = 1;
		}else {
			result = 0;
		}
		
		System.out.println("��� �� : " + result);
		return result;
	}
}
