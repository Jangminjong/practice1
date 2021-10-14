package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.CouponHaveVO;
import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.GoodsOrderVO;
import com.idwith.mpweb.user.SaveVO;

public interface GoodsOrderService {

	CartVO getCartForOrder(String cartNum);

	List<SaveVO> getPointForPayment(String user_id);

	List<CouponHaveVO> getCouponListForPayment(String user_id);

	void insertDetailOrder(GoodsOrderDetailVO goodsOrderDetailVO);

	List<String> getOrderDetailCodes(String email);

	void insertOrder(GoodsOrderVO goodsOrder);

	void updateCartNumAfterPayment(int cart_num);

	void paymentGoodsCancel(String imp_uid);

	List<GoodsOrderDetailVO> getGoodsReturnList(String email);

}
