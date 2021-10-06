package com.idwith.mpweb.writer.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.goods.GoodsDAO;
import com.idwith.mpweb.writer.goods.GoodsVO;

@Service("GoodsService")
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	private GoodsDAO goodsDAO;

	// 작품 등록처리
	@Override
	public void productCreate(GoodsVO goods) {
		System.out.println("작품등록처리 service");
		System.out.println("GoodsName : " + goods.getGoods_name());
		System.out.println("GoodsPrice : " + goods.getGoods_price());
		System.out.println("GoodsSeq : " + goods.getGoods_seq());
	    goodsDAO.productCreate(goods);
		
	}

	// 작품 목록
	@Override
	public List<GoodsVO> getGoodsList(PagingVO pageVO){
		System.out.println("작폼목록처리 service");
		return goodsDAO.getGoodsList(pageVO);
	}

	// 작품 상세보기
	@Override
	public GoodsVO productModify(GoodsVO goods) {
		System.out.println("작품 상세보기 service");
		return goodsDAO.productModify(goods);
	}

	// 작품 수정
	@Override
	public void updateGoods(GoodsVO goods) {
		System.out.println("작품수정처리 service");
		System.out.println("GoodsName " + goods.getGoods_name());
		goodsDAO.updateGoods(goods);
	}

	// 작품 삭제
	@Override
	public void deleteGoods(GoodsVO goods) {
	    System.out.println("작품삭제처리 service");
		goodsDAO.deleteGoods(goods);
	}

	@Override
	public int countGoods() {
		return goodsDAO.countGoods();
	}

	
}
