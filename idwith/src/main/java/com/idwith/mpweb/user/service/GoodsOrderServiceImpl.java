package com.idwith.mpweb.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.GoodsOrderDAO;

@Service
public class GoodsOrderServiceImpl implements GoodsOrderService{

	@Autowired
	private GoodsOrderDAO dao;
	
	@Override
	public CartVO getCartForOrder(String cartNum) {
		return dao.getCartForOrder(cartNum);
	}

}
