package com.idwith.mpweb.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.user.GoodsOptionVO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.service.GoodsService;

@Controller
public class ItemController {
	@Autowired
	private GoodsService goodsService;
	
	//클래스 상세보기
	@GetMapping("/class_detail_content.do")
	public String classDetailContent() {
		return "class_detail_content";
	}
	
	@GetMapping("/class_search.do")
	public String classSearch() {
		return "class_search";
	}
	
	//작품 상세보기
	@GetMapping("/detail_content.do")
	public String detailContent(@RequestParam("goods_code") String goods_code, Model model) {
		System.out.println("작품 상세보기 컨트롤러 실행");
		
		GoodsVO goods = goodsService.getGoodsContent(goods_code);
		List<GoodsReviewVO> goodsReviewList = goodsService.getGoodsReviewList(goods_code);
		List<GoodsOptionVO> goodsOptionList = goodsService.getGoodsOptionList(goods_code);
	
		System.out.println("가져온 작가 코드 : " + goods.getUserSellerVO().getSeller_code());
		
		List<GoodsVO> sellerOtherGoodsList = goodsService.sellerOtherGoodsList(goods.getUserSellerVO().getSeller_code());
		
		for(GoodsOptionVO list : goodsOptionList) {
			System.out.println("옵션 : " + list.getGoods_op1_name());
		}
		
		System.out.println("확인 중입니다 : " + goods.getGoods_code());
		
		model.addAttribute("goods", goods);
		model.addAttribute("goodsImageLength", goods.getGoods_photo().length);
		model.addAttribute("sellerOtherGoodsList", sellerOtherGoodsList);
		model.addAttribute("goodsReviewList", goodsReviewList);
		model.addAttribute("goodsOptionList", goodsOptionList);
		return "detail_content";
	}
	
	@GetMapping("/product_search.do")
	public String productSearch() {
		return "product_search";
	}
	
	//구매후기 작성하기 화면
	@GetMapping("/review_detail.do")
	public String review_detail(@RequestParam(value="goods_code", required=false) String goods_code) {
		System.out.println("구매후기 작성하기 컨트롤러 실행");
		
		//GoodsReviewVO reviewDetail = goodsService.getReviewListDetail(goods_code);
		return "review_detail";
	}
}
