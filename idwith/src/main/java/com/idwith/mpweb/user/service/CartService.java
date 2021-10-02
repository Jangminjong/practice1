package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.user.CartVO;

public interface CartService {
	List<CartVO> getCart(String user_id);
}
