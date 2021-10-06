package com.idwith.mpweb.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsDAO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.GoodsVO;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsDAO goodsDAO;

	@Override
	public List<GoodsCategoryVO> selectGoodsCategory() {
		return goodsDAO.selectGoodsCategory();
	}

	
	@Override public List<GoodsVO> getGoodsList(GoodsVO goodsVO) { 
		return goodsDAO.getGoodsList(goodsVO); 
	}


	@Override
	public List<GoodsReviewVO> getReviewList() {
		return goodsDAO.getReviewList();
	}


	@Override
	public List<GoodsCategoryVO> getAllGoodsCategory() {
		return goodsDAO.getAllGoodsCategory();
	}

}
