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

	public int getSellerInfo(String seller_code) {
		int countInfo = sqlSessionTemplate.selectOne("SellerCheckDAO.countSellerGoods", seller_code);
		
		return countInfo;
	}

	public UserSellerVO getSellerProfile(String seller_code) {
		UserSellerVO profile = sqlSessionTemplate.selectOne("SellerCheckDAO.getSellerInfo", seller_code);
		
		return profile;
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

	public List<SellerStoryVO> getSellerStory(String seller_id) {
		List<SellerStoryVO> storyList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerStory", Integer.parseInt(seller_id));
		
		System.out.println("스토리 리스트 : " + storyList);
		return storyList;
	}

	public List<SellerProductReviewVO> getSellerProductReviewList(String seller_code) {
		List<SellerProductReviewVO> reviewList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerProductReviewList", Integer.parseInt(seller_code));
		
		System.out.println("리뷰 리스트 : " + reviewList);
		
		return reviewList;
	}
}
