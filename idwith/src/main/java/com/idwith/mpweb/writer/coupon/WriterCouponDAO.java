package com.idwith.mpweb.writer.coupon;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("writerCouponDAO")
public class WriterCouponDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	
	// 쿠폰 insert
	public void insertCoupon(WriterCouponVO writerCouponVO) {
		System.out.println("writerCoupon() 기능처리");
		sqlSessionTemplate.insert("WriterCouponDAO.insertCoupon", writerCouponVO);

	}

	// 쿠폰 요청 목록페이지
	public List<WriterCouponVO> getCouponList(PagingVO pageVO) {
		System.out.println("getCouponList() 기능처리");
		return sqlSessionTemplate.selectList("WriterCouponDAO.getCouponList", pageVO);

	}

	// 페이징 처리
	public int countWriterCoupon(int sellerCode) {
		System.out.println("countWriterCoupon() 기능처리");
		return sqlSessionTemplate.selectOne("WriterCouponDAO.countWriterCoupon", sellerCode);
	}

	// 쿠폰 상세페이지
	public WriterCouponVO coupon(WriterCouponVO writerCoupon) {
		System.out.println("Coupon() 기능처리");
		WriterCouponVO coupon = sqlSessionTemplate.selectOne("WriterCouponDAO.coupon" ,writerCoupon);
		System.out.println(coupon.getRequest_cp_name());
		System.out.println(coupon.getRequest_cp_target());
		return coupon;
	}

	
	  public void updateWriterCoupon(WriterCouponVO writerCoupon) {
	  System.out.println("updayeWriterCoupon() 기능처리");
	  sqlSessionTemplate.update("WriterCouponDAO.updateWriterCoupon", writerCoupon); 
	  
	  }
	 

}
