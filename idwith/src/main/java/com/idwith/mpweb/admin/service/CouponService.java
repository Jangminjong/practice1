package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.FollowVO;
import com.idwith.mpweb.admin.RequestCouponVO;
import com.idwith.mpweb.admin.UserListVO;
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

	int countRequestCoupon();

	List<RequestCouponVO> getRequestCoupon(PagingVO pagination);

	RequestCouponVO requestInsertCoupon(RequestCouponVO coupon);

	void requestCouponInsert(RequestCouponVO reCoupon);

	void updateRequestCouponStatus(RequestCouponVO reCoupon);

	List<UserListVO> getUserList();

	List<FollowVO> getFollowList(String target);

	void releaseAllCp(UserListVO user);

	void releaseFollowCp(FollowVO follow);

	void releaseStatus(CouponVO coupon);


}
