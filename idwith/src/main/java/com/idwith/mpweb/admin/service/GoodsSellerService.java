package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.common.PagingVO;

public interface GoodsSellerService {

	List<WriterVO> getGoodsSellerList(PagingVO goodsPagination);

	int countGoodsSeller();

	WriterVO getSellerContent(Integer sellerCode);

	int getGoodsSearchCnt(String searchKeyword);

	List<WriterVO> getSearchGoodsWriter(PagingVO goodsSearchPagination);


}
