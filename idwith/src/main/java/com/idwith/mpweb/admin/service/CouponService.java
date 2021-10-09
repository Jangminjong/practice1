package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.common.PagingVO;

public interface CouponService {

	void insertCoupon(CouponVO coupon);

	List<WriterVO> getWriterList();

	int countCouponList();

	List<CouponVO> getCouponList(PagingVO pagination);

	CouponVO getDetailCoupon(CouponVO coupon);

	void couponContentUpdate(CouponVO coupon);

	void deleteCoupon(CouponVO coupon);

}
