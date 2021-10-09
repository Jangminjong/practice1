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

	public WriterVO getClassSellerContent(Integer sellerCode) {
		return sqlSessionTemplate.selectOne("WriterDAO.getSellerContent", sellerCode);
	}

	public int getClassSearchCnt(String searchKeyword) {
		return sqlSessionTemplate.selectOne("WriterDAO.getClassSearchCnt", searchKeyword);
	}

	public List<WriterVO> getSearchClassWriter(PagingVO classSearchPagination) {
		return sqlSessionTemplate.selectList("WriterDAO.getSearchClassWriter", classSearchPagination);
	}


}
