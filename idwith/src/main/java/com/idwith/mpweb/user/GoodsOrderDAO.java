package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsOrderDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public CartVO getCartForOrder(String cartNum) {
		return sqlSessionTemplate.selectOne("GoodsOrderDAO.getCartForOrder", Integer.parseInt(cartNum));
	}

}
