package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsOrderDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public CartVO getCartForOrder(String cartNum) {
		return sqlSessionTemplate.selectOne("GoodsOrderDAO.getCartForOrder", Integer.parseInt(cartNum));
	}

	public List<SaveVO> getPointForPayment(String user_id) {
		return sqlSessionTemplate.selectList("UserDAO.getPointForPayment", user_id);
	}

	public List<CouponHaveVO> getCouponListForPayment(String user_id) {
		return sqlSessionTemplate.selectList("UserDAO.getCouponListForPayment", user_id);
	}

	public void insertDetailOrder(GoodsOrderDetailVO goodsOrderDetailVO) {
		sqlSessionTemplate.insert("GoodsOrderDAO.insertDetailOrder", goodsOrderDetailVO);
	}

	public List<String> getOrderDetailCodes(String email) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getOrderDetailCodes", email);
	}

	public void insertOrder(GoodsOrderVO goodsOrder) {
		sqlSessionTemplate.insert("GoodsOrderDAO.insertOrder", goodsOrder);
	}

	public void updateCartNumAfterPayment(int cart_num) {
		sqlSessionTemplate.update("GoodsOrderDAO.updateCartNumAfterPayment", cart_num);
	}

	public void paymentGoodsCancel(String imp_uid) {
		sqlSessionTemplate.update("GoodsOrderDAO.paymentGoodsCancel", imp_uid);
		sqlSessionTemplate.update("GoodsOrderDAO.paymentGoodsCancelGoodsOrder", imp_uid);
		
	}

	public List<GoodsOrderDetailVO> getGoodsReturnList(String email) {
		return sqlSessionTemplate.selectList("GoodsOrderDAO.getGoodsReturnList", email);
	}

}
