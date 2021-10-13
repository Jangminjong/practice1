package com.idwith.mpweb.writer.goods;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.idwith.mpweb.common.PagingVO;


@Repository("writerGoodsDAO")
public class WriterGoodsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 작품 등록
	public void productCreate(WriterGoodsVO goodsVO) {
		System.out.println("productCreate() 기능처리");
		sqlSessionTemplate.insert("WriterGoodsDAO.productCreate", goodsVO);
	}
	
	// 작품 목록페이지
	public List<WriterGoodsVO> getGoodsList(PagingVO pageVO){
		System.out.println("getGoodList() 기능처리");
		return sqlSessionTemplate.selectList("WriterGoodsDAO.getGoodsList", pageVO);
	}
	
	// 페이징 처리
	public int countGoods(int goodsSeller) {
		System.out.println("countGoods() 기능처리");
		return sqlSessionTemplate.selectOne("WriterGoodsDAO.countGoods", goodsSeller);
		
	}
	
	// 작품 delete
	public void deleteGoods(WriterGoodsVO goods) {
		System.out.println("seq : " + goods.getGoods_seq());
		System.out.println("deleteGoods() 기능처리");
		sqlSessionTemplate.delete("WriterGoodsDAO.deleteGoods", goods);
	}

	public List<GoodsCategoryVO> getGoodsCategory() {
		return sqlSessionTemplate.selectList("WriterGoodsDAO.goodsCategoryList");
	}

	public void optionInsert(GoodsOptionVO option) {
		sqlSessionTemplate.insert("WriterGoodsDAO.optionInsert",option);
	}

	public WriterGoodsVO getGoods(int classOpenSeq) {
		return sqlSessionTemplate.selectOne("WriterGoodsDAO.goods", classOpenSeq);
		
	}

	public List<GoodsOptionVO> getGoodsOptionList(String goods_code) {
		return sqlSessionTemplate.selectList("WriterGoodsDAO.goodsOptionList", goods_code);
	}

	public GoodsCategoryVO getGoodsCategoryName(String goods_category) {
		return sqlSessionTemplate.selectOne("WriterGoodsDAO.goodsCategoryName", goods_category);
	}

	public void optionsDelete(String goods_code) {
		sqlSessionTemplate.delete("WriterGoodsDAO.optionsDelete", goods_code);
	}
	
	
	
	

}
