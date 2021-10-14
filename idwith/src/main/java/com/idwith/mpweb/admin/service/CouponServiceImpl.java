package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.CouponDAO;
import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.FollowVO;
import com.idwith.mpweb.admin.RequestCouponVO;
import com.idwith.mpweb.admin.UserListVO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.common.PagingVO;

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

	@Override
	public int countCouponList() {
		return couponDAO.countCouponList();
	}

	@Override
	public List<CouponVO> getCouponList(PagingVO pagination) {
		return couponDAO.getCouponList(pagination);
	}

	@Override
	public CouponVO getDetailCoupon(CouponVO coupon) {
		return couponDAO.getDetailCoupon(coupon);
	}

	@Override
	public void couponContentUpdate(CouponVO coupon) {
		couponDAO.couponContentUpdate(coupon);
	}

	@Override
	public void deleteCoupon(CouponVO coupon) {
		couponDAO.deleteCoupon(coupon);
	}

	@Override
	public int countRequestCoupon() {
		return couponDAO.countRequestCoupon();
	}

	@Override
	public List<RequestCouponVO> getRequestCoupon(PagingVO pagination) {
		return couponDAO.getRequestCoupon(pagination);
	}

	@Override
	public RequestCouponVO requestInsertCoupon(RequestCouponVO coupon) {
		return couponDAO.requestInsertCoupon(coupon);
	}

	@Override
	public void requestCouponInsert(RequestCouponVO reCoupon) {
		couponDAO.requestCouponInsert(reCoupon);
	}

	@Override
	public void updateRequestCouponStatus(RequestCouponVO reCoupon) {
		couponDAO.updateRequestCouponStatus(reCoupon);
	}

	@Override
	public List<UserListVO> getUserList() {
		return couponDAO.getUserList();
	}

	@Override
	public List<FollowVO> getFollowList(String target) {
		return couponDAO.getFollowList(target);
	}

	@Override
	public void releaseAllCp(UserListVO user) {
		couponDAO.releaseAllCp(user);
	}

	@Override
	public void releaseFollowCp(FollowVO follow) {
		couponDAO.releaseFollowCp(follow);
	}

	@Override
	public void releaseStatus(CouponVO coupon) {
		couponDAO.releaseStatus(coupon);
	}



}
