package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PdfTestDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<GoodsOrderDetailVO> getPDFList(String user_id) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getOrderPDFList", user_id);
	}
}
