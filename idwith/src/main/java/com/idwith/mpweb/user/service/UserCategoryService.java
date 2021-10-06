package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsVO;

public interface UserCategoryService {

	List<Map<String, String>> getStoryList();

	int goodsCount(String goods_category);

	List<GoodsVO> getGoodsList(PagingVO pageVO);

	String getCategoryName(String goods_category);

	List<GoodsVO> getGoodsListWithPrice(PagingVO pageVO);

	List<GoodsCategoryVO> getGoodsCategory();

	List<GoodsVO> getGoodsListForPopular(GoodsVO goodsVO);

}
