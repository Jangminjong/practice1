package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.MyPageDAO;
import com.idwith.mpweb.user.UserAddressVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.classUser.ClassOrderVO;

@Service
public class MyPageServiceImpl implements MypageService {
	@Autowired
	private MyPageDAO dao;
	
	@Override
	public List<Map<String, String>> getUser(String user_id) {
		return dao.getUser(user_id);
	}

	@Override
	public void updatePhone(UserVO vo) {
		dao.updatePhone(vo);
	}

	@Override
	public void updateEmail(UserVO vo) {
		dao.updateEmail(vo);
	}

	@Override
	public void updateUserInfo(UserVO vo) {
		dao.updateUserInfo(vo);
	}

	@Override
	public void updateAddress(UserAddressVO vo) {
		dao.updateAddress(vo);
	}

	@Override
	public List<GoodsOrderDetailVO> getReviewBeforeList(String order_id) {
		return dao.getReviewBeforeList(order_id);
	}

	@Override
	public GoodsOrderDetailVO getReviewBefore(String order_detail_code) {
		return dao.getReviewBefore(order_detail_code);
	}

	@Override
	public void insertReview(GoodsReviewVO reviewVO, GoodsOrderDetailVO orderVO) {
		dao.insertReview(reviewVO, orderVO);
	}

	@Override
	public List<GoodsReviewVO> getReviewAfterList(String goods_review_id) {
		return dao.getReviewAfterList(goods_review_id);
	}

	@Override
	public void deleteReview(String goods_review_seq) {
		dao.deleteReview(goods_review_seq);
	}

	/* 배송지 주소 가져오기 */
	@Override
	public List<UserAddressVO> getAddressList(String user_id) {
		return dao.getAddressList(user_id);
	}
	
	@Override
	public List<ClassOrderVO> getOrderClassList(String email) {
		return dao.getOrderClassList(email);
	}
}
