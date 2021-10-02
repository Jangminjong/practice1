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
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.GoodsService;
import com.idwith.mpweb.user.service.SellerCheckService;

@Controller
public class UserIndexController {
	@Autowired
	private SellerCheckService sellerCheckService;
	
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
			System.out.println("goodsCategoryList.get(i).getGoods_category_code() : "+ goodsCategoryList.get(i).getGoods_category_code());

			goodsVO.setGoods_category(goodsCategoryList.get(i).getGoods_category_code());
			List<GoodsVO> goodsList = goodsService.getGoodsList(goodsVO);
			for(int j=0; j<10; j++) {
				System.out.println("goodsList.get(i).getGoods_name() : "+goodsList.get(j).getGoods_name());
			}
			System.out.println("goodsList"+i);
			model.addAttribute("goodsList"+i, goodsList);
		}
		return "index";
	}
	 
	@GetMapping("/class_index.do")
	public String classIndex() {
		return "class_index";
	}
}
