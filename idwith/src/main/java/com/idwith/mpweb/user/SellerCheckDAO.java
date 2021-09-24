package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SellerCheckDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Long getSeller(String user_id) {
		System.out.println("DAO �۰� üũ : " + user_id);
		Long result = sqlSessionTemplate.selectOne("SellerCheckDAO.sellerCheck", user_id);
		System.out.println("DB��� �� : " + result);
		
		return result;
	}
}
