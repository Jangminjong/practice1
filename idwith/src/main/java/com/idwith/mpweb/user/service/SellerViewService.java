package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.user.SellerClassVO;
import com.idwith.mpweb.user.SellerProductReviewVO;
import com.idwith.mpweb.user.SellerStoryVO;
import com.idwith.mpweb.user.UserSellerVO;

public interface SellerViewService {
	Long getSeller(String user_id);

	List<UserSellerVO> getSellerList();

	int getSellerInfo(String seller_code);

	UserSellerVO getSellerProfile(String seller_code);

	int getClassCheck(String seller_code);

	List<SellerClassVO> getClassList(String seller_code);

	List<SellerStoryVO> getSellerStory(String seller_code);

	List<SellerProductReviewVO> getSellerProductReviewList(String seller_code);

	List<UserSellerVO> getSellerListForIndex();

	List<SellerStoryVO> getStoryList();
}
