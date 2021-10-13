package com.idwith.mpweb.writer.order.service;

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
	
	

}
