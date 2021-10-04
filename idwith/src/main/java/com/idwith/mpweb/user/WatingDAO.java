package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WatingDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertWating(GoodsApplyVO goodsApplyVO) {
		System.out.println("작품 신청 DAO 실행");
		sqlSessionTemplate.insert("WatingDAO.insertWating", goodsApplyVO);
	}
}
