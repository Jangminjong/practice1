package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.WriterVO;

public interface CouponService {

	void insertCoupon(CouponVO coupon);

	List<WriterVO> getWriterList();

}
