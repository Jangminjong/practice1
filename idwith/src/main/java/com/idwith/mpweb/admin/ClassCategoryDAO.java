package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository
public class ClassCategoryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertClassCategory(CategoryVO category) {
		System.out.println("ClassCategoryDAO insertClassCategory() 처리");
		sqlSessionTemplate.insert("CategoryDAO.insertClassCategory", category);
	}

	public int countClassCate() {
		return sqlSessionTemplate.selectOne("CategoryDAO.countClassCate");
	}

	public List<CategoryVO> getClassCate(PagingVO classPagination) {
		System.out.println("ClassCategoryDAO getClassCate() 처리");
		return sqlSessionTemplate.selectList("CategoryDAO.getClassCate", classPagination);
	}

	public void deleteClassCate(String classCategoryCode) {
		System.out.println("goodsCategoryDAO deleteClassCate() 처리");
		sqlSessionTemplate.delete("CategoryDAO.deleteClassCate", classCategoryCode);
	}

	
}
