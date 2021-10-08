package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.CartDAO;
import com.idwith.mpweb.user.CartVO;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO dao;
	
	@Override
	public void insertGoods(CartVO cart) {
		dao.insertGoods(cart);
	}

	@Override
	public List<CartVO> getCartList(String user_id) {
		return dao.getCartList(user_id);
	}

	@Override
	public int updateQuantity(CartVO vo) {
		return dao.updateQuantity(vo);
	}

	@Override
	public int updateOrderMessage(CartVO vo) {
		return dao.updateOrderMessage(vo);
	}
}
