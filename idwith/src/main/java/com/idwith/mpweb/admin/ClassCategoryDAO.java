package com.idwith.mpweb.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClassCategoryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertClassCategory(CategoryVO category) {
		System.out.println("goodsCategoryDAO insertClassCategory() 처리");
		sqlSessionTemplate.insert("CategoryDAO.insertClassCategory", category);
	}

}
