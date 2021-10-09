package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.idwith.mpweb.admin.GoodsSellerDAO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.common.PagingVO;

@Service("goodsSellerService")
public class GoodsSellerServiceImpl implements GoodsSellerService {
	
	@Autowired
	private GoodsSellerDAO goodsSellerDAO;

	@Override
	public int countGoodsSeller() {
		return goodsSellerDAO.countGoodsSeller();
	}
	
	@Override
	public List<WriterVO> getGoodsSellerList(PagingVO goodsPagination) {
		return goodsSellerDAO.getGoodsSellerList(goodsPagination);
	}

	@Override
	public WriterVO getSellerContent(Integer sellerCode) {
		return goodsSellerDAO.getSellerContent(sellerCode);
	}

	@Override
	@Transactional
	public int getGoodsSearchCnt(String searchKeyword) {
		return goodsSellerDAO.getGoodsSearchCnt(searchKeyword);
	}

	@Override
	public List<WriterVO> getSearchGoodsWriter(PagingVO goodsSearchPagination) {
		return goodsSellerDAO.getSearchGoodsWriter(goodsSearchPagination);
	}




}
