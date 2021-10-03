package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String, String>> getUser(String user_id){
		
		List<Map<String, String>> user = sqlSessionTemplate.selectList("MyPageDAO.getUser", user_id);
		return user;
	}
	
	public void updatePhone(UserVO vo) {
		sqlSessionTemplate.update("MyPageDAO.updatePhone", vo);
	}
	
	public void updateEmail(UserVO vo) {
		sqlSessionTemplate.update("MyPageDAO.updateEmail", vo);
	}
	
	public void updateUserInfo(UserVO vo) {
		sqlSessionTemplate.update("MyPageDAO.updateUserInfo", vo);
	}

	public void updateAddress(UserVO vo) {
		sqlSessionTemplate.update("MyPageDAO.updateAddress", vo);
	}
	
	public List<GoodsOrderDetailVO> getReviewBeforeList(String order_id){
		return sqlSessionTemplate.selectList("MyPageDAO.getReviewBeforeList", order_id);
	}

	public GoodsOrderDetailVO getReviewBefore(String order_detail_code) {
		return sqlSessionTemplate.selectOne("MyPageDAO.getReviewBefore", order_detail_code); 
	}

	public void insertReview(GoodsReviewVO reviewVO, GoodsOrderDetailVO orderVO) {
		System.out.println("order_detail_code: "+orderVO.getOrder_detail_code());
		sqlSessionTemplate.insert("MyPageDAO.insertReview", reviewVO);
		sqlSessionTemplate.update("MyPageDAO.reviewStateUpdate", orderVO);
	}

	public List<GoodsReviewVO> getReviewAfterList(String goods_review_id) {
		return sqlSessionTemplate.selectList("MyPageDAO.getReviewAfterList", goods_review_id);
	}

	public void deleteReview(String goods_review_seq) {
		sqlSessionTemplate.delete("MyPageDAO.deleteReview", Integer.parseInt(goods_review_seq));
	}
}
