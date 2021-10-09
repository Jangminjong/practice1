package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.CouponDAO;
import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.WriterVO;

@Service("couponService")
public class CouponServiceImpl implements CouponService {
	
	@Autowired
	private CouponDAO couponDAO;

	@Override
	public void insertCoupon(CouponVO coupon) {
		couponDAO.insetCoupon(coupon);
	}

	@Override
	public List<WriterVO> getWriterList() {
		return couponDAO.getWriterList();
	}

}
