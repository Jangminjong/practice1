package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.user.UserSellerVO;

public interface SellerViewService {
	Long getSeller(String user_id);

	List<UserSellerVO> getSellerList();
}
