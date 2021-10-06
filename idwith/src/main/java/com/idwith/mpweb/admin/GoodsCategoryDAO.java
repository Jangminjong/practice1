package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository
public class GoodsCategoryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertGoodsCategory(CategoryVO category) {
		System.out.println("goodsCategoryDAO insertGoodsCategory() 처리");
		sqlSessionTemplate.insert("CategoryDAO.insertGoodsCategory", category);
	}

	public int countGoodsCate() {
		System.out.println("goodsCategoryDAO countGoodsCate() 처리");
		return sqlSessionTemplate.selectOne("CategoryDAO.countGoodsCate");
	}

	public List<CategoryVO> getGoodsCate(PagingVO goodsPagination) {
		System.out.println("goodsCategoryDAO getGoodsCate() 처리");
		return sqlSessionTemplate.selectList("CategoryDAO.getGoodsCate", goodsPagination);
	}

	public void deleteGoodsCate(String goodsCategoryCode) {
		System.out.println("goodsCategoryDAO deleteGoodsCate() 처리");
		sqlSessionTemplate.delete("CategoryDAO.deleteGoodsCate", goodsCategoryCode);
	}
	
}
