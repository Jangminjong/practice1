package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<CartVO> getCart(String user_id) {
		System.out.println("서비스 아이디 : " + user_id);
		//List<Map<String,Object>> cartList = sqlSessionTemplate.selectList("CartDAO.getCart", user_id);
		List<CartVO> cartList = sqlSessionTemplate.selectList("CartDAO.getCart", user_id);
		System.out.println("서비스 결과값 : " + cartList);
		return cartList;
	}
}
