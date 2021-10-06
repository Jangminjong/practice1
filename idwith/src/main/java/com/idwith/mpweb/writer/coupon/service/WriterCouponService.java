package com.idwith.mpweb.writer.coupon.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.coupon.WriterCouponVO;

public interface WriterCouponService {
	
	// 쿠폰 요청
	void insertWriterCoupon(WriterCouponVO writerCoupon);
	
	// 쿠폰 리스트
	List<WriterCouponVO> getCouponList(PagingVO pageVO);
	
	// 쿠폰 상세
	WriterCouponVO coupon(WriterCouponVO writerCoupon);
	
	//쿠폰 수정
	void updateWriterCoupon(WriterCouponVO writerCoupon);
	
	// 페이징 처리 개수
	int countWriterCoupon();

	

	

}
