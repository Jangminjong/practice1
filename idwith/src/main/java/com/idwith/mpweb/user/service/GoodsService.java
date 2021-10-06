package com.idwith.mpweb.user.service;

import java.util.ArrayList;
import java.util.List;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsOption1VO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.GoodsVO;

public interface GoodsService {
	List<GoodsCategoryVO> selectGoodsCategory();
	
	List<GoodsVO> getGoodsList(GoodsVO goodsVO);

	GoodsVO getGoodsContent(String goods_code);
	
	List<GoodsReviewVO> getReviewList();

	List<GoodsReviewVO> getGoodsReviewList(String goods_code);

	GoodsReviewVO getReviewListDetail(String goods_code);

	List<GoodsVO> getGoodsOptionList(String goods_code);

	List<GoodsCategoryVO> getAllGoodsCategory();

}
