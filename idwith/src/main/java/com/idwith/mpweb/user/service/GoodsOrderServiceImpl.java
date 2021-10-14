package com.idwith.mpweb.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.CouponHaveVO;
import com.idwith.mpweb.user.GoodsOrderDAO;
import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.GoodsOrderVO;
import com.idwith.mpweb.user.SaveVO;

@Service
public class GoodsOrderServiceImpl implements GoodsOrderService{

	@Autowired
	private GoodsOrderDAO dao;
	
	@Override
	public CartVO getCartForOrder(String cartNum) {
		return dao.getCartForOrder(cartNum);
	}

	@Override
	public List<SaveVO> getPointForPayment(String user_id) {
		return dao.getPointForPayment(user_id);
	}

	@Override
	public List<CouponHaveVO> getCouponListForPayment(String user_id) {
		return dao.getCouponListForPayment(user_id);
	}

	@Override
	public void insertDetailOrder(GoodsOrderDetailVO goodsOrderDetailVO) {
		dao.insertDetailOrder(goodsOrderDetailVO);
	}

	@Override
	public List<String> getOrderDetailCodes(String email) {
		return dao.getOrderDetailCodes(email);
	}

	@Override
	public void insertOrder(GoodsOrderVO goodsOrder) {
		dao.insertOrder(goodsOrder);
		
	}

	@Override
	public void updateCartNumAfterPayment(int cart_num) {
		dao.updateCartNumAfterPayment(cart_num);
	}

	@Override
	public void paymentGoodsCancel(String imp_uid) {
		dao.paymentGoodsCancel(imp_uid);
		
	}

	@Override
	public List<GoodsOrderDetailVO> getGoodsReturnList(String email) {
		return dao.getGoodsReturnList(email);
	}

	

}
