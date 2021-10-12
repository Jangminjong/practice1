package com.idwith.mpweb.writer.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("goodsOrderDAO")
public class GoodsOrderDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	// 주문 목록 처리
	public List<GoodsOrderVO> getOrderList(PagingVO pageVO){
		System.out.println("getOrderList() 기능처리");
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getOrderList", pageVO);
		
	}
	
	// 페이징 처리
	public int countGoodsOrder(int sellerCode) {
		System.out.println("countGoodsOrder() 기능처리");
		return sqlSessionTemplate.selectOne("GoodsOrderDAO.countGoodsOrder", sellerCode);
	}
	
	// 주문 상세페이지
	public GoodsOrderVO Order(GoodsOrderVO goodsOrder) {
		System.out.println("Order() 기능처리");
		GoodsOrderVO order = sqlSessionTemplate.selectOne("GoodsOrderDAO.Order", goodsOrder);
		System.out.println(order.getOrder_detail_goods());
		System.out.println(order.getOrder_detail_price());
		return order;
	}
	
	public void updateOrder(GoodsOrderVO goodsOrder) {
		sqlSessionTemplate.update("GoodsOrderDAO.updateOrder", goodsOrder);
	}
	
	
	  public int countTodayOrder(int sellerCode) { 
		  return sqlSessionTemplate.selectOne("GoodsOrderDAO.countTodayOrder", sellerCode);
	  }

	public List<GoodsOrderVO> getGoodsOrderListFive(int sellerCode) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getGoodsOrderListFive", sellerCode);
	}
	 

}
