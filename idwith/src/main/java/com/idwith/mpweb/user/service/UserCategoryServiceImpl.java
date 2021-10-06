package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;

import com.idwith.mpweb.user.SellerStoryVO;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsVO;

import com.idwith.mpweb.user.UserCategoryDAO;

@Service
public class UserCategoryServiceImpl implements UserCategoryService {
	@Autowired
	private UserCategoryDAO dao;
	
	@Override
	public int countStory() {
		return dao.countStory();
	}
	
	@Override
	public List<SellerStoryVO> getStoryList(PagingVO pageVO) {
		return dao.getStoryList(pageVO);
	}

	@Override
	public int goodsCount(String goods_category) {
		return dao.goodsCount(goods_category);
	}

	@Override
	public List<GoodsVO> getGoodsList(PagingVO pageVO) {
		return dao.getGoodsList(pageVO);
	}

	@Override
	public String getCategoryName(String goods_category) {
		return dao.getCategoryName(goods_category);
	}

	@Override
	public List<GoodsVO> getGoodsListWithPrice(PagingVO pageVO) {
		return dao.getGoodsListWithPrice(pageVO);
	}

	@Override
	public List<GoodsCategoryVO> getGoodsCategory() {
		return dao.getGoodsCategory();
	}

	@Override
	public List<GoodsVO> getGoodsListForPopular(GoodsVO goodsVO) {
		return dao.getGoodsListForPopular(goodsVO);
	}

}
