package com.idwith.mpweb.user.service;

import java.util.ArrayList;
import java.util.List;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.GoodsVO;

public interface GoodsService {
	List<GoodsCategoryVO> selectGoodsCategory();
	
	List<GoodsVO> getGoodsList(GoodsVO goodsVO);

	List<GoodsReviewVO> getReviewList();

	List<GoodsCategoryVO> getAllGoodsCategory();
}
