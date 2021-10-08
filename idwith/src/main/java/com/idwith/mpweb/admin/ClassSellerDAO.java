package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("classSellerDAO")
public class ClassSellerDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public int countClassSeller() {
		return sqlSessionTemplate.selectOne("WriterDAO.countClassSeller");
	}

	public List<WriterVO> getClassSellerList(PagingVO classPagination) {
		return sqlSessionTemplate.selectList("WriterDAO.getClassSellerList", classPagination);
	}

}
