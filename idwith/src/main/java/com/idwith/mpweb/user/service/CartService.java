package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.user.CartVO;

public interface CartService {
	void insertGoods(CartVO cart);

	List<CartVO> getCartList(String user_id);

	int updateQuantity(CartVO vo);

	int updateOrderMessage(CartVO vo);
}
