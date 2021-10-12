package com.idwith.mpweb.writer.coupon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.coupon.WriterCouponDAO;
import com.idwith.mpweb.writer.coupon.WriterCouponVO;

@Service("WriterCouponService")
public class WriterCouponServiceImpl implements WriterCouponService{

	@Autowired
	private WriterCouponDAO writerCouponDAO;
	
	@Override
	public void insertWriterCoupon(WriterCouponVO writerCoupon) {
		System.out.println("쿠폰등록 처리 Service");
		System.out.println("title : " + writerCoupon.getRequest_cp_name());	
		writerCouponDAO.insertCoupon(writerCoupon);
	}

	@Override
	public List<WriterCouponVO> getCouponList(PagingVO pageVO) {
		System.out.println("쿠폰 목록 처리 Serivce");	
		return writerCouponDAO.getCouponList(pageVO);
	}
	
	// 상세
	@Override
	public WriterCouponVO coupon(WriterCouponVO writerCoupon) {
		System.out.println("쿠폰 상세보기 처리 Serivce");
		return writerCouponDAO.coupon(writerCoupon);
	}

	// 수정
	
	@Override 
	public void updateWriterCoupon(WriterCouponVO writerCoupon) {
	  System.out.println("쿠폰 수정처리 Service");
	  writerCouponDAO.updateWriterCoupon(writerCoupon);
	  
	  }
	 

	@Override
	public int countWriterCoupon(int sellerCode) {
		return writerCouponDAO.countWriterCoupon(sellerCode);
	}

	

}
