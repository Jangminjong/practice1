package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("couponDAO")
public class CouponDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insetCoupon(CouponVO coupon) {
		sqlSessionTemplate.insert("CouponDAO.insertCoupon", coupon);
	}

	public List<WriterVO> getWriterList() {
		return sqlSessionTemplate.selectList("WriterDAO.getWriterList");
	}

	public int countCouponList() {
		return sqlSessionTemplate.selectOne("CouponDAO.countCouponList");
	}

	public List<CouponVO> getCouponList(PagingVO pagination) {
		return sqlSessionTemplate.selectList("CouponDAO.getCouponList", pagination);
	}

	public CouponVO getDetailCoupon(CouponVO coupon) {
		CouponVO detailCoupon = sqlSessionTemplate.selectOne("CouponDAO.getgetDetailCoupon", coupon);
		return detailCoupon;
	}

	public void couponContentUpdate(CouponVO coupon) {
		sqlSessionTemplate.update("CouponDAO.updateCoupon", coupon);
	}

	public void deleteCoupon(CouponVO coupon) {
		sqlSessionTemplate.delete("CouponDAO.deleteCoupon", coupon);
	}

	public int countRequestCoupon() {
		return sqlSessionTemplate.selectOne("CouponDAO.countRequestCoupon");
	}

	public List<RequestCouponVO> getRequestCoupon(PagingVO pagination) {
		return sqlSessionTemplate.selectList("CouponDAO.getRequestCoupon", pagination);
	}

	public RequestCouponVO requestInsertCoupon(RequestCouponVO coupon) {
		return sqlSessionTemplate.selectOne("CouponDAO.requestInsertCoupon", coupon);
	}

	public void requestCouponInsert(RequestCouponVO reCoupon) {
		sqlSessionTemplate.insert("CouponDAO.requestCouponInsert", reCoupon);
	}

	public void updateRequestCouponStatus(RequestCouponVO reCoupon) {
		sqlSessionTemplate.update("CouponDAO.updateRequestCouponStatus", reCoupon);
	}


}
