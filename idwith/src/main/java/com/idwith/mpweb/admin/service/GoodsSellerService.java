package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.GoodsSellerVO;
import com.idwith.mpweb.common.PagingVO;

public interface GoodsSellerService {

	List<GoodsSellerVO> getGoodsSellerList(PagingVO goodsPagination);

	int countGoodsSeller();

}
