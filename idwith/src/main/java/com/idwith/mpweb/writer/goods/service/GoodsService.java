package com.idwith.mpweb.writer.goods.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.goods.GoodsVO;

public interface GoodsService {
	
	// 작품 등록
	void  productCreate(GoodsVO goods);
	
	// 작품 목록 조회
	List<GoodsVO> getGoodsList(PagingVO pageVO);
	
	//작품 상세보기
	GoodsVO productModify(GoodsVO goods);
	
	
	// 작품 수정
	void updateGoods(GoodsVO goods);
	
	// 작품 삭제
	void deleteGoods(GoodsVO goods);
	
	// 페이징 처리
	int countGoods();

	

}
