package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.user.classUser.ClassOrderVO;

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

	public void updateAddress(UserAddressVO vo) {
		sqlSessionTemplate.update("MyPageDAO.updateAddress", vo);
	}
	
	public List<GoodsOrderDetailVO> getReviewBeforeList(String order_id){
		return sqlSessionTemplate.selectList("GoodsOrderUserDAO.getReviewBeforeList", order_id);
	}

	public GoodsOrderDetailVO getReviewBefore(String order_detail_code) {
		return sqlSessionTemplate.selectOne("GoodsOrderUserDAO.getReviewBefore", order_detail_code); 
	}

	public void insertReview(GoodsReviewVO reviewVO, GoodsOrderDetailVO orderVO) {
		
		sqlSessionTemplate.insert("MyPageDAO.insertReview", reviewVO);
		sqlSessionTemplate.update("GoodsOrderUserDAO.reviewStateUpdate", orderVO);
	}

	public List<GoodsReviewVO> getReviewAfterList(String goods_review_id) {
		return sqlSessionTemplate.selectList("MyPageDAO.getReviewAfterList", goods_review_id);
	}

	public void deleteReview(String goods_review_seq) {
		sqlSessionTemplate.delete("MyPageDAO.deleteReview", Integer.parseInt(goods_review_seq));
	}

	public List<UserAddressVO> getAddressList(String user_id) {
		return sqlSessionTemplate.selectList("MyPageDAO.getAddressList", user_id);
	}
	
	public List<ClassOrderVO> getOrderClassList(String email) {
		return sqlSessionTemplate.selectList("classDAO.getOrderClassList", email);
	}

	public List<GoodsOrderDetailVO> getOrderGoodsList(String email) {
		return sqlSessionTemplate.selectList("GoodsOrderUserDAO.getOrderGoodsList", email);
	}

	public List<CouponHaveVO> getCouponList(String email) {
		return sqlSessionTemplate.selectList("UserDAO.getCouponList", email);
	}
}
