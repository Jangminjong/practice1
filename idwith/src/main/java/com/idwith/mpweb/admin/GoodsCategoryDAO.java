package com.idwith.mpweb.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsCategoryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertGoodsCategory(CategoryVO category) {
		System.out.println("goodsCategoryDAO insertGoodsCategory() 처리");
		sqlSessionTemplate.insert("CategoryDAO.insertGoodsCategory", category);
	}

}
