package com.idwith.mpweb.admin.service;

import com.idwith.mpweb.admin.SellerVO;

public interface SellerService {
	void insertSeller(SellerVO sellerVO);

	SellerVO sellerEnCheck(String user_id);

	void updateSellerStatus(String user_id);

	SellerVO getSeller(Integer order_detail_seller);

	int getClientCount();

	int getSellerCount();
}
