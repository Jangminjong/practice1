package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository
public class GoodsDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<GoodsCategoryVO> selectGoodsCategory(){
		return sqlSessionTemplate.selectList("GoodsDAO.selectGoodsCategory");
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO goodsVO){
		List<GoodsVO> lists = sqlSessionTemplate.selectList("GoodsDAO.getGoodsList",goodsVO);
		return lists;
	}

	public GoodsVO getGoodsContent(String goods_code) {
		GoodsVO goods = sqlSessionTemplate.selectOne("GoodsDAO.getGoodsContent", goods_code);
		return goods;
	}
	
	public List<GoodsReviewVO> getReviewList() {
		return sqlSessionTemplate.selectList("MyPageDAO.getReviewList");
	}

	public List<GoodsReviewVO> getGoodsReviewList(String goods_review_code) {
		System.out.println("리뷰가져오기 DAO실행");
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsReviewList", goods_review_code);
	}

	public GoodsReviewVO getReviewListDetail(String goods_code) {
		return (GoodsReviewVO) sqlSessionTemplate.selectList("GoodsDAO.getDetailReviewList", goods_code);
	}
	
	public List<GoodsOptionVO> getGoodsOptionList(String goods_code) {
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsOptionList", goods_code);
	}
	public List<GoodsCategoryVO> getAllGoodsCategory() {
		return sqlSessionTemplate.selectList("GoodsDAO.getAllGoodsCategory");
	}

	public List<GoodsVO> sellerOtherGoodsList(int seller_code) {
		return sqlSessionTemplate.selectList("GoodsDAO.sellerOtherGoodsList", seller_code);
	}
		
	public int countGoodsForSearch(String search) {
		return sqlSessionTemplate.selectOne("GoodsDAO.countGoodsForSearch", search);
	}

	public List<GoodsVO> getGoodsListForSearch(PagingVO goodsPageVO) {
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListForSearch", goodsPageVO);
	}

	public List<GoodsCategoryVO> getGoodsCategory() {
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsCategoryForOffer");
	}

}
