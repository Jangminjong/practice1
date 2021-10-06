package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository
public class UserCategoryDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int countStory() {
		return sqlSessionTemplate.selectOne("userCategoryDAO.countStory");
	}
	
	public List<SellerStoryVO> getStoryList(PagingVO pageVO) {
		List<SellerStoryVO>  storyList = sqlSessionTemplate.selectList("userCategoryDAO.getStoryList", pageVO);
		return storyList;
	}

	public int goodsCount(String goods_category) {
		return sqlSessionTemplate.selectOne("GoodsDAO.goodsCount", goods_category);
	}

	public List<GoodsVO> getGoodsList(PagingVO pageVO) {
		String set = pageVO.getSearchKeyword();	
		System.out.println("set: "+set);
		System.out.println("category: "+pageVO.getSearchCondition());
		if(set.equals("all")) {
			return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListWithCategory", pageVO);
		}else if(set.equals("volume")) {
			return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListSortVolume", pageVO);
		}else if(set.equals("rowPrice")) {
			return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListSortRowPrice", pageVO);
		}else if(set.equals("highPrice")) {
			return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListSortHighPrice", pageVO);
		}else {
			return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListWithCategory", pageVO);
		}
		
		/*
		 * else if(set.equals("review")) { return
		 * sqlSessionTemplate.selectList("GoodsDAO.getGoodsListSortReview", pageVO);
		 * }else{ return
		 * sqlSessionTemplate.selectList("GoodsDAO.getGoodsListSortSelect", pageVO); }
		 */
	}

	public String getCategoryName(String goods_category) {
		return sqlSessionTemplate.selectOne("GoodsDAO.getCategoryName", goods_category);
	}

	public List<GoodsVO> getGoodsListWithPrice(PagingVO pageVO) {
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListWithPrice", pageVO);
	}

	public List<GoodsCategoryVO> getGoodsCategory() {
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsCategory");
	}

	public List<GoodsVO> getGoodsListForPopular(GoodsVO goodsVO) {
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsListForPopular",goodsVO);
	}
}
