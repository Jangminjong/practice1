package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.GoodsCalcVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;

public interface GoodsOrderService {

	List<GoodsOrderVO> getOrderList(PagingVO pageVO);
	
	GoodsOrderVO order(GoodsOrderVO goodsOrderVO);
	
	int countGoodsOrder(int sellerCode);

	void updateOrder(GoodsOrderVO goodsOrder);

	List<GoodsOrderVO> getGoodsOrderFive(int sellerCode);

	void updateStatus(String goodsCode);

	int countGoodsOrderAll();

	List<GoodsOrderVO> getOrderListAll(PagingVO goodsPageVO);

	void updateStatusCalcRes(String goodsCode);

	GoodsOrderVO getGoodsOrderOne(String goodsCode);

	void insertGoodsCalc(GoodsCalcVO goodsCalcVO);

	int todayAllSales();

	int monthAllSales();
}
