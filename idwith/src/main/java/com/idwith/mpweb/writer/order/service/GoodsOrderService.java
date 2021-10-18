package com.idwith.mpweb.writer.order.service;

import java.sql.Date;
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

	List<Long> getGoodsCountFive(int seller);

	List<Long> getGoodsSalesFive(int seller);

	List<String> getGoodsNameFive(int seller);

	List<String> getGoodsCodeFive(int seller);

	int yesterdayOrder(int sellerCode);

	int weekOrder(int sellerCode);

	int todaySales(int sellerCode);

	int yesterdaySales(int sellerCode);

	int weekSales(int sellerCode);

	List<Integer> getRangeCalc(GoodsOrderVO goodsOrderVO);

	List<Date> getRangeDate(GoodsOrderVO goodsOrderVO);
}
