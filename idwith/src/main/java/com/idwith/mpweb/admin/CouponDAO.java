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

}
