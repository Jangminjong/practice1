package com.idwith.mpweb.writer.goods;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.idwith.mpweb.common.PagingVO;


@Repository("goodsDAO")
public class GoodsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 작품 등록
	public void productCreate(GoodsVO goodsVO) {
		System.out.println("productCreate() 기능처리");
		sqlSessionTemplate.insert("WriterGoodsDAO.productCreate", goodsVO);
	}
	
	// 작품 목록페이지
	public List<GoodsVO> getGoodsList(PagingVO pageVO){
		System.out.println("getGoodList() 기능처리");
		return sqlSessionTemplate.selectList("WriterGoodsDAO.getGoodsList", pageVO);
	}
	
	// 페이징 처리
	public int countGoods() {
		System.out.println("countGoods() 기능처리");
		return sqlSessionTemplate.selectOne("WriterGoodsDAO.countGoods");
		
	}
	
	// 작품 상세
	public GoodsVO productModify(GoodsVO goods) {
		System.out.println("productModify() 기능 처리");
		GoodsVO product = sqlSessionTemplate.selectOne("GoodsDAO.productModify", goods);	
		System.out.println(product.getGoods_name());
		System.out.println(product.getGoods_price());
		return product;
		
	}
	
	// 작품 update
	public void updateGoods(GoodsVO goods) {
		System.out.println("updateGoods() 기능처리");
		System.out.println("update : " + goods.getGoods_name());
		sqlSessionTemplate.update("GoodsDAO.updateGoods" , goods);
		
	}
	
	// 작품 delete
	public void deleteGoods(GoodsVO goods) {
		System.out.println("seq : " + goods.getGoods_seq());
		System.out.println("deleteGoods() 기능처리");
		sqlSessionTemplate.delete("GoodsDAO.deleteGoods", goods);
	}
	
	
	
	

}
