package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
