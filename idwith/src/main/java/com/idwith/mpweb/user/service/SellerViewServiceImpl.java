package com.idwith.mpweb.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.SellerClassVO;
import com.idwith.mpweb.user.SellerProductReviewVO;
import com.idwith.mpweb.user.SellerStoryVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.User_SellerDAO;

@Service
public class SellerViewServiceImpl implements SellerViewService {
	@Autowired
	private User_SellerDAO dao;
	
	@Override
	public Long getSeller(String user_id) {
		System.out.println("Service ����");
		Long result = dao.getSeller(user_id);
		return result;
	}

	@Override
	public int getSellerList() {
		return dao.getSellerList();
	}

	@Override
	public int getCountGoods(String seller_code) {
		return dao.getCountGoods(seller_code);
	}

	@Override
	public UserSellerVO getSellerProfile(String seller_code) {
		System.out.println("작가정보 가져오기 서비스 실행");
		return dao.getSellerProfile(seller_code);
	}

	@Override
	public List<SellerClassVO> getClassList(String seller_code) {
		return dao.getClassList(seller_code);
	}

	@Override
	public List<SellerStoryVO> getSellerStory(String seller_code) {
		return dao.getSellerStory(seller_code);
	}

	@Override
	public List<SellerProductReviewVO> getSellerProductReviewList(String seller_code) {
		return dao.getSellerProductReviewList(seller_code);
	}

	@Override
	public List<GoodsVO> getGoodsList(PagingVO pageVO) {
		return dao.getGoodsList(pageVO);
	}

	@Override
	public List<SellerStoryVO> getStoryList(PagingVO pageVO) {
		return dao.getStoryList(pageVO);
	}

	@Override
	public List<UserSellerVO> getpagingSellerList(PagingVO pageVO) {
		return dao.pagingSellerList(pageVO);
	}
		
	public List<UserSellerVO> getSellerListForIndex() {
		return dao.getSellerListForIndex();
	}
}
