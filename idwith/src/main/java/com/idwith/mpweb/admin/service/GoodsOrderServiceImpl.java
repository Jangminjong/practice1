package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.GoodsOrderDAO;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.GoodsCalcVO;
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
	public int countGoodsOrderAll() {
		return goodsOrderDAO.countGoodsOrderAll();
	}

	@Override
	public List<GoodsOrderVO> getOrderListAll(PagingVO goodsPageVO) {
		return goodsOrderDAO.getOrderListAll(goodsPageVO);
	}

	@Override
	public void updateStatusCalcRes(String goodsCode) {
		goodsOrderDAO.updateStatusCalcRes(goodsCode);
		
	}

	@Override
	public GoodsOrderVO getGoodsOrderOne(String goodsCode) {
		return goodsOrderDAO.getGoodsOrderOne(goodsCode);
	}

	@Override
	public void insertGoodsCalc(GoodsCalcVO goodsCalcVO) {
		goodsOrderDAO.insertGoodsCalc(goodsCalcVO);
		
	}
	
	

}
