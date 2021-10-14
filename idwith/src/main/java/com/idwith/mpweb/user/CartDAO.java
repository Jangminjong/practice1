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
	
//	public List<CartVO> getCart(String user_id) {
//		System.out.println("서비스 아이디 : " + user_id);
//		List<Map<String,Object>> cartList = sqlSessionTemplate.selectList("CartDAO.getCart", user_id);
//		List<CartVO> cartList = sqlSessionTemplate.selectList("CartDAO.getCart", user_id);
//		System.out.println("서비스 결과값 : " + cartList);
//		return cartList;
//	}

	public void insertGoods(CartVO cart) {
		
		sqlSessionTemplate.insert("CartDAO.insertGoods", cart);
		
//		int result = sqlSessionTemplate.selectOne("CartDAO.goodsCheck", cart);
//		if(result > 0) {
//			sqlSessionTemplate.update("CartDAO.updateGoodsOption", cart);
//		}else {
//			
//		}
		
	}

	public List<CartVO> getCartList(String user_id) {
		List<CartVO> cartList = sqlSessionTemplate.selectList("CartDAO.getCartList", user_id);
		return cartList;
	}

	public int updateQuantity(CartVO vo) {
		int result = sqlSessionTemplate.update("CartDAO.updateQuantity", vo);
		return result;
	}

	public int updateOrderMessage(CartVO vo) {
		int result = sqlSessionTemplate.update("CartDAO.updateOrderMessage", vo);
		return result;
	}

	public List<GoodsOptionVO> getGoodsOption(String goods_code) {
		List<GoodsOptionVO> vo = sqlSessionTemplate.selectList("CartDAO.getGoodsOption", goods_code);
		return vo;
	}

	public void updateOption(CartVO vo) {
		sqlSessionTemplate.update("CartDAO.updateOption", vo);
	}

	public void deleteOption(CartVO vo) {
		sqlSessionTemplate.delete("CartDAO.deleteOption", vo);
	}
}
