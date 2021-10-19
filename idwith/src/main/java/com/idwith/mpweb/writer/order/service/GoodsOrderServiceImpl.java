package com.idwith.mpweb.writer.order.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.order.GoodsOrderDAO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;

@Service("GoodsOrderService")
public class GoodsOrderServiceImpl implements GoodsOrderService{

	@Autowired
	private GoodsOrderDAO goodsOrderDAO;
	
	@Override
	public List<GoodsOrderVO> getOrderList(PagingVO pageVO) {
		System.out.println("작품 주문목록처리 service");
		return goodsOrderDAO.getOrderList(pageVO);
	}

	// 상세
	@Override
	public GoodsOrderVO order(GoodsOrderVO goodsOrder) {
		System.out.println("주문내역상세처리 service");
		return goodsOrderDAO.Order(goodsOrder);
	}

	@Override
	public int countGoodsOrder(int sellerCode) {
		return goodsOrderDAO.countGoodsOrder(sellerCode);
	}

	@Override
	public void updateOrder(GoodsOrderVO goodsOrder) {
		goodsOrderDAO.updateOrder(goodsOrder);
		
	}

	@Override
	public List<GoodsOrderVO> getGoodsOrderFive(int sellerCode) {
		return goodsOrderDAO.getGoodsOrderListFive(sellerCode);
	}

	@Override
	public void updateStatus(String goodsCode) {
		goodsOrderDAO.updateStatus(goodsCode);
	}

	@Override
	public List<Long> getGoodsCountFive(int seller) {
		return goodsOrderDAO.getGoodsCountFive(seller);
	}

	@Override
	public List<Long> getGoodsSalesFive(int seller) {
		return goodsOrderDAO.getGoodsSalesFive(seller);
	}

	@Override
	public List<String> getGoodsNameFive(int seller) {
		return  goodsOrderDAO.getGoodsNameFive(seller);
	}

	@Override
	public List<String> getGoodsCodeFive(int seller) {
		return goodsOrderDAO.getGoodsCodeFive(seller);
	}

	@Override
	public int yesterdayOrder(int sellerCode) {
		return goodsOrderDAO.yesterdayOrder(sellerCode);
	}

	@Override
	public int weekOrder(int sellerCode) {
		return goodsOrderDAO.weekOrder(sellerCode);
	}

	@Override
	public int todaySales(int sellerCode) {
		return goodsOrderDAO.todaySales(sellerCode);
	}

	@Override
	public int yesterdaySales(int sellerCode) {
		return goodsOrderDAO.yesterdaySales(sellerCode);
	}

	@Override
	public int weekSales(int sellerCode) {
		return goodsOrderDAO.weekSales(sellerCode);
	}

	@Override
	public List<Integer> getRangeCalc(GoodsOrderVO goodsOrderVO) {
		return goodsOrderDAO.getRangeCalc(goodsOrderVO);
	}

	@Override
	public List<Date> getRangeDate(GoodsOrderVO goodsOrderVO) {
		return goodsOrderDAO.getRangeDate(goodsOrderVO);
	}
	
	

}
