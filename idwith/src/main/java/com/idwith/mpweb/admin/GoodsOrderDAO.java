package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.GoodsCalcVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;

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

	public void updateStatus(String goodsCode) {
		sqlSessionTemplate.update("GoodsOrderDAO.goodsUpdateStatusCalcReq",goodsCode);		
	}

	public int countGoodsOrderAll() {
		return sqlSessionTemplate.selectOne("GoodsOrderDAO.countGoodsOrderAll");
	}

	public List<GoodsOrderVO> getOrderListAll(PagingVO goodsPageVO) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getOrderListAll", goodsPageVO);
	}

	public void updateStatusCalcRes(String goodsCode) {
		sqlSessionTemplate.update("GoodsOrderDAO.goodsUpdateStatusCalcRes", goodsCode);
	}

	public GoodsOrderVO getGoodsOrderOne(String goodsCode) {
		return sqlSessionTemplate.selectOne("GoodsOrderDAO.getGoodsOrderOne", goodsCode);
	}

	public void insertGoodsCalc(GoodsCalcVO goodsCalcVO) {
		sqlSessionTemplate.insert("GoodsOrderDAO.insertGoodsCalc", goodsCalcVO);
		
	}

	public int todayAllSales() {
		int sales = 0;
		try {
			sales = sqlSessionTemplate.selectOne("GoodsOrderDAO.todayAllSales");
		} catch (NullPointerException e) {
			sales = 0;
		}
		return sales;
	}

	public int monthAllSales() {
		int sales = 0;
		try {
			sales = sqlSessionTemplate.selectOne("GoodsOrderDAO.monthAllSales");
		} catch (NullPointerException e) {
			sales = 0;
		}
		return sales;
	}
	 

}
