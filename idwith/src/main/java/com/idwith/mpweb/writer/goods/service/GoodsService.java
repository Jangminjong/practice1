package com.idwith.mpweb.writer.goods.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.goods.GoodsCategoryVO;
import com.idwith.mpweb.writer.goods.GoodsOptionVO;
import com.idwith.mpweb.writer.goods.WriterGoodsVO;

public interface GoodsService {
	
	// 작품 등록
	void  productCreate(WriterGoodsVO goods);
	
	// 작품 목록 조회
	List<WriterGoodsVO> getGoodsList(PagingVO pageVO);
	
	// 작품 삭제
	void deleteGoods(WriterGoodsVO goods);
	
	// 페이징 처리
	int countGoods(int goodsSeller);

	// 카테고리 리스트
	List<GoodsCategoryVO> goodsCategoryFind();
	
	// 옵션 등록
	void optionInsert(GoodsOptionVO option);
	
	// 작품 1개 가져오기
	WriterGoodsVO getWriterGoods(int classOpenSeq);
	
	// 작품 1개의 옵션들 가져오기
	List<GoodsOptionVO> getGoodsOptionList(String goods_code);

	GoodsCategoryVO getGoodsCategoryName(String goods_category);

	void deleteOptions(String goods_code);

	

}
