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
	public List<CartVO> getCart(String user_id) {
		return dao.getCart(user_id);
	}
}
