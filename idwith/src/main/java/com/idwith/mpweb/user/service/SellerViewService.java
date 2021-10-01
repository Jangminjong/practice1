package com.idwith.mpweb.user.service;

import java.util.List;

import com.idwith.mpweb.user.SellerClassVO;
import com.idwith.mpweb.user.UserSellerVO;

public interface SellerViewService {
	Long getSeller(String user_id);

	List<UserSellerVO> getSellerList();

	List<UserSellerVO> getSellerInfo(String seller_code);

	List<UserSellerVO> getSellerProfile(String seller_code);

	List<UserSellerVO> getSellerStory(String seller_code);

	int getClassCheck(String seller_code);

	List<SellerClassVO> getClassList(String seller_code);
}
