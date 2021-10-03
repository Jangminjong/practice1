package com.idwith.mpweb.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.UserVO;

import com.idwith.mpweb.user.service.GoodsService;
import com.idwith.mpweb.user.service.SellerViewService;

@Controller
public class UserIndexController {
	@Autowired
	private SellerViewService sellerCheckService;
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/index.do")
	public String userIndex(HttpSession session, Model model) {
		GoodsVO goodsVO = new GoodsVO();
		// 인기 상품
		//카테고리 조회
		List<GoodsCategoryVO> goodsCategoryList =  goodsService.selectGoodsCategory();
		model.addAttribute("goodsCategoryList", goodsCategoryList);
		
		// 카테고리마다의 상품 가쳐오기
		for(int i=0; i<goodsCategoryList.size();i++) {
			goodsVO.setGoods_category(goodsCategoryList.get(i).getGoods_category_code());
			List<GoodsVO> goodsList = goodsService.getGoodsList(goodsVO);
			model.addAttribute("goodsList"+i, goodsList);
		}
		
		// 후기 가져오기 
		List<GoodsReviewVO> reviewList = goodsService.getReviewList(); 
		model.addAttribute("reviewList", reviewList);
		
		// 인기작가 가져오기
		List<UserSellerVO> sellerList = sellerCheckService.getSellerListForIndex();
		model.addAttribute("sellerList", sellerList);
		
		return "index";
	}
	 
	@GetMapping("/class_index.do")
	public String classIndex() {
		return "class_index";
	}
}
