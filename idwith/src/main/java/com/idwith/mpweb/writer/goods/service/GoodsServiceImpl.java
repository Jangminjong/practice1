package com.idwith.mpweb.writer.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.goods.GoodsCategoryVO;
import com.idwith.mpweb.writer.goods.GoodsOptionVO;
import com.idwith.mpweb.writer.goods.WriterGoodsDAO;
import com.idwith.mpweb.writer.goods.WriterGoodsVO;

@Service("GoodsService")
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	private WriterGoodsDAO writerGoodsDAO;


	// 작품 등록처리
	@Override
	public void productCreate(WriterGoodsVO goods) {
		System.out.println("작품등록처리 service");
		System.out.println("GoodsName : " + goods.getGoods_name());
		System.out.println("GoodsPrice : " + goods.getGoods_price());
		System.out.println("GoodsSeq : " + goods.getGoods_seq());
	    writerGoodsDAO.productCreate(goods);
		
	}

	// 작품 목록
	@Override
	public List<WriterGoodsVO> getGoodsList(PagingVO pageVO){
		System.out.println("작폼목록처리 service");
		return writerGoodsDAO.getGoodsList(pageVO);
	}

	// 작품 삭제
	@Override
	public void deleteGoods(WriterGoodsVO goods) {
	    System.out.println("작품삭제처리 service");
		writerGoodsDAO.deleteGoods(goods);

	}

	@Override
	public int countGoods(int goodsSeller) {
		return writerGoodsDAO.countGoods(goodsSeller);
	}

	@Override
	public List<GoodsCategoryVO> goodsCategoryFind() {
		List<GoodsCategoryVO> goodsCategory = writerGoodsDAO.getGoodsCategory();
		return goodsCategory;
	}

	@Override
	public void optionInsert(GoodsOptionVO option) {
		writerGoodsDAO.optionInsert(option);
	}

	@Override
	public WriterGoodsVO getWriterGoods(int classOpenSeq) {
		WriterGoodsVO writerGoods = writerGoodsDAO.getGoods(classOpenSeq);
		return writerGoods;
	}

	@Override
	public List<GoodsOptionVO> getGoodsOptionList(String goods_code) {
		List<GoodsOptionVO> goodsOptionList = writerGoodsDAO.getGoodsOptionList(goods_code); 
		return goodsOptionList;
	}

	@Override
	public GoodsCategoryVO getGoodsCategoryName(String goods_category) {
		GoodsCategoryVO goodsCategoryVO = writerGoodsDAO.getGoodsCategoryName(goods_category);
		return goodsCategoryVO;
	}

	@Override
	public void deleteOptions(String goods_code) {
		writerGoodsDAO.optionsDelete(goods_code);
	}

	
}
