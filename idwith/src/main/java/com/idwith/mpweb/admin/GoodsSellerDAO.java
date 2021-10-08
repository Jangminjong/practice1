package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("goodsSellerDAO")
public class GoodsSellerDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**작가 목록 페이지*/
	public int countGoodsSeller() {
		return sqlSessionTemplate.selectOne("WriterDAO.countGoodsSeller");
	}

	public List<WriterVO> getGoodsSellerList(PagingVO goodsPagination) {
		return sqlSessionTemplate.selectList("WriterDAO.getGoodsSellerList", goodsPagination);
	}

}
