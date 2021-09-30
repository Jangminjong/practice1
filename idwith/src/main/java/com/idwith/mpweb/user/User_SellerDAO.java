package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class User_SellerDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Long getSeller(String user_id) {
		System.out.println("DAO �۰� üũ : " + user_id);
		Long result = sqlSessionTemplate.selectOne("SellerCheckDAO.sellerCheck", user_id);
		System.out.println("DB��� �� : " + result);
		
		return result;
	}

	public List<UserSellerVO> getSellerList() {
		List<UserSellerVO> sellerList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerList");
		
		System.out.println("결과 값 : " + sellerList);
		
		return sellerList;
	}
}
