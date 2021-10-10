package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.CartDAO;
import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.GoodsOptionVO;
import com.idwith.mpweb.user.GoodsVO;

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

	@Override
	public List<GoodsOptionVO> getGoodsOption(String goods_code) {
		return dao.getGoodsOption(goods_code);
	}

	@Override
	public void updateOption(CartVO vo) {
		dao.updateOption(vo);
	}

	@Override
	public void deleteOption(CartVO vo) {
		dao.deleteOption(vo);
	}
}
