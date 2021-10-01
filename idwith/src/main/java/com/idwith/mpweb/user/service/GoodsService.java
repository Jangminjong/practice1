package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsVO;

public interface GoodsService {
	List<GoodsCategoryVO> selectGoodsCategory();
	
	List<GoodsVO> getGoodsList(String goodsCategory);
}
