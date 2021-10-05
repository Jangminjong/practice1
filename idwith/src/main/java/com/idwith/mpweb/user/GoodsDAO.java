package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<GoodsCategoryVO> selectGoodsCategory(){
		return sqlSessionTemplate.selectList("GoodsDAO.selectGoodsCategory");
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO goodsVO){
		System.out.println("goodsCategory: "+goodsVO.goods_category);
		return sqlSessionTemplate.selectList("GoodsDAO.getGoodsList",goodsVO);
	}

	public GoodsVO getGoodsContent(String goods_code) {
		GoodsVO goods = sqlSessionTemplate.selectOne("GoodsDAO.getGoodsContent", goods_code);
		return goods;
	}

}
