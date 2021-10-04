package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.SellerClassVO;
import com.idwith.mpweb.user.SellerProductReviewVO;
import com.idwith.mpweb.user.SellerStoryVO;
import com.idwith.mpweb.user.UserSellerVO;

public interface SellerViewService {
	Long getSeller(String user_id);

	int getSellerList();

	int getCountGoods(String seller_code);

	UserSellerVO getSellerProfile(String seller_code);

	List<SellerClassVO> getClassList(String seller_code);

	List<SellerStoryVO> getSellerStory(String seller_code);

	List<SellerProductReviewVO> getSellerProductReviewList(String seller_code);

	List<GoodsVO> getGoodsList(PagingVO pageVO);

	List<SellerStoryVO> getStoryList(PagingVO pageVO);

	List<UserSellerVO> getpagingSellerList(PagingVO pageVO);
}
