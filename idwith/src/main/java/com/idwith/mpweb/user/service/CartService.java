package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.GoodsOptionVO;
import com.idwith.mpweb.user.GoodsVO;

public interface CartService {
	void insertGoods(CartVO cart);

	List<CartVO> getCartList(String user_id);

	int updateQuantity(CartVO vo);

	int updateOrderMessage(CartVO vo);

	List<GoodsOptionVO> getGoodsOption(String goods_code);

	void updateOption(CartVO vo);

	void deleteOption(CartVO vo);

	CartVO getCartForDirect(String user_id);
}
