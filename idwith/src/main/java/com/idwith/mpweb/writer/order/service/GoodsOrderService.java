package com.idwith.mpweb.writer.order.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;

public interface GoodsOrderService {

	List<GoodsOrderVO> getOrderList(PagingVO pageVO);
	
	GoodsOrderVO order(GoodsOrderVO goodsOrderVO);
	
	int countGoodsOrder(int sellerCode);

	void updateOrder(GoodsOrderVO goodsOrder);

	List<GoodsOrderVO> getGoodsOrderFive(int sellerCode);

	void updateStatus(String goodsCode);
}
