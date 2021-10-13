package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.user.UserAddressVO;
import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.classUser.ClassOrderVO;
import com.idwith.mpweb.user.GoodsReviewVO;

public interface MypageService {
	List<Map<String, String>> getUser(String user_id);
	
	void updatePhone(UserVO vo);
	
	void updateEmail(UserVO vo);
	
	void updateUserInfo(UserVO vo);

	void updateAddress(UserAddressVO vo);
	
	List<GoodsOrderDetailVO> getReviewBeforeList(String order_id);
	
	GoodsOrderDetailVO getReviewBefore(String order_detail_code);
	
	void insertReview(GoodsReviewVO reviewVO, GoodsOrderDetailVO orderVO);
	
	List<GoodsReviewVO> getReviewAfterList(String goods_review_id);

	void deleteReview(String goods_review_seq);

	List<UserAddressVO> getAddressList(String user_id);

	List<ClassOrderVO> getOrderClassList(String email);

	List<GoodsOrderDetailVO> getOrderGoodsList(String email);
}
