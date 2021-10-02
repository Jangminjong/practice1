package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.UserVO;

public interface MypageService {
	List<Map<String, String>> getUser(String user_id);
	
	void updatePhone(UserVO vo);
	
	void updateEmail(UserVO vo);
	
	void updateUserInfo(UserVO vo);

	void updateAddress(UserVO vo);
	
	List<GoodsOrderDetailVO> getReviewBeforeList(String order_id);
}
