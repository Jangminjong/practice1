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

	public List<UserSellerVO> getSellerInfo(String seller_code) {
		List<UserSellerVO> sellerInfo = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerInfo", seller_code);
		
		System.out.println("결과 값 : " + sellerInfo);
		
		return sellerInfo;
	}

	public List<UserSellerVO> getSellerProfile(String seller_code) {
		List<UserSellerVO> profile = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerProfile", seller_code);
		
		return profile;
	}

	public List<UserSellerVO> getSellerStory(String seller_code) {
		List<UserSellerVO> story = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerStory", seller_code);
		
		return story;
	}

	public int getClassCheck(String seller_code) {
		boolean result = sqlSessionTemplate.selectOne("SellerCheckDAO.getClassCheck", seller_code);
		int classCheck = 0;
		
		if(result == true) {
			classCheck = 1;
		}
		
		return classCheck;
	}

	public List<SellerClassVO> getClassList(String seller_code) {
		List<SellerClassVO> classList = sqlSessionTemplate.selectList("SellerCheckDAO.getClassList", seller_code);
		return classList;
	}
}
