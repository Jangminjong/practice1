package com.idwith.mpweb.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsDAO;
import com.idwith.mpweb.user.GoodsOption1VO;
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
	public GoodsVO getGoodsContent(String goods_code) {
		return goodsDAO.getGoodsContent(goods_code);
	}

	@Override
	public List<GoodsReviewVO> getGoodsReviewList(String goods_code) {
		return goodsDAO.getGoodsReviewList(goods_code);
	}

	@Override
	public GoodsReviewVO getReviewListDetail(String goods_code) {
		return goodsDAO.getReviewListDetail(goods_code);
	}

	@Override
	public List<GoodsVO> getGoodsOptionList(String goods_code) {
		return goodsDAO.getGoodsOptionList(goods_code);
	}
}
