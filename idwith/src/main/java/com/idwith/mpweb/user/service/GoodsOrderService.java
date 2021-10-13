package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.user.CartVO;

public interface GoodsOrderService {

	CartVO getCartForOrder(String cartNum);

}
