package com.idwith.mpweb.writer.order;

import java.sql.Date;
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

	public void updateStatus(String goodsCode) {
		sqlSessionTemplate.update("GoodsOrderDAO.goodsUpdateStatusCalcReq",goodsCode);		
	}

	public List<Long> getGoodsCountFive(int seller) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getGoodsCountFive", seller);
	}

	public List<Long> getGoodsSalesFive(int seller) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getGoodsSalesFive", seller);
	}

	public List<String> getGoodsNameFive(int seller) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getGoodsNameFive", seller);
	}

	public List<String> getGoodsCodeFive(int seller) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getGoodsCodeFive", seller);
	}

	public int yesterdayOrder(int sellerCode) {
		int sales=0;
		try{
			sales=sqlSessionTemplate.selectOne("GoodsOrderDAO.yesterdayOrder", sellerCode);
		} catch(NullPointerException e) {
			sales = 0;
		}
		return sales;
	}

	public int weekOrder(int sellerCode) {
		int sales=0;
		try {
			sales = sqlSessionTemplate.selectOne("GoodsOrderDAO.weekOrder", sellerCode);
		} catch(NullPointerException e){
			sales = 0;
		}
		return sales;
	}

	public int todaySales(int sellerCode) {
		int sales=0;
		try {
			sales = sqlSessionTemplate.selectOne("GoodsOrderDAO.todaySales", sellerCode);	
		} catch(NullPointerException e){
			sales = 0;
		}
		return sales;
	}

	public int yesterdaySales(int sellerCode) {
		int sales=0;
		try {
			sales = sqlSessionTemplate.selectOne("GoodsOrderDAO.yesterdaySales", sellerCode);
		} catch(NullPointerException e){
			sales = 0;
		}
		return sales;
	}

	public int weekSales(int sellerCode) {
		int sales=0;
		try {
			sales = sqlSessionTemplate.selectOne("GoodsOrderDAO.weekSales", sellerCode);
		} catch(NullPointerException e){
			sales = 0;
		}
		return sales;
	}

	public List<Integer> getRangeCalc(GoodsOrderVO goodsOrderVO) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getRangeCalc", goodsOrderVO);
	}

	public List<Date> getRangeDate(GoodsOrderVO goodsOrderVO) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getRangeDate", goodsOrderVO);
	}

	 

}
