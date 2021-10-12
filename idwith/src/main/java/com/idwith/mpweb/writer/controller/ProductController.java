package com.idwith.mpweb.writer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.goods.GoodsVO;
import com.idwith.mpweb.writer.goods.service.GoodsService;

@Controller
public class ProductController {	
	
	@Autowired
	GoodsService goodsService;

	// 작품 목록
	@GetMapping("/productManagement.wdo")
	public String productManagement(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage,
			@RequestParam(value = "set", required = false) String set) {
		System.out.println("작품 리스트 목록처리");
		
		int goodsTotal = goodsService.countGoods();
		
		System.out.println("작품 수 : " + goodsTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(goodsTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pageVO);
		model.addAttribute("ProductViewAll", goodsService.getGoodsList(pageVO));
		
		return "productManagement";
	}
	
	// 작품 등록 화면
	@RequestMapping("/insertGoods.wdo")
		public String insertgoods() {
		   return "insertGoods";		
		}
	
	
	@GetMapping("productCreate.wdo")
	public String productCreate() {
		return "productCreate";
	}
	
	// 작품 등록 기능
	@RequestMapping(value="/productRegist.wdo", method=RequestMethod.POST)
	public String productCreate(GoodsVO goods) {
		System.out.println("작품등록처리");
		System.out.println("GoodsName : " + goods.getGoods_name());
		System.out.println("GoodsPrice : " + goods.getGoods_price());
		goodsService.productCreate(goods);
		return "redirect:/productManagement.wdo";
	}
	
	// 상세보기
	@RequestMapping("/productModify.wdo")
	public String productModify(GoodsVO goods, Model model) {
		System.out.println("작품 상세보기 처리 seq : " + goods.getGoods_seq());
		model.addAttribute("goods", goodsService.productModify(goods));
		return "productModify";
	}
	
	// 작품 수정
	@RequestMapping("/updateGoods.wdo")
	public String updateGoods(GoodsVO goods) {
		System.out.println("작품 수정처리");
		System.out.println("seq : " + goods.getGoods_seq());
		System.out.println("가격 : " + goods.getGoods_price());
		goodsService.updateGoods(goods);
		return "redirect:/productManagement.wdo";
	}
	
	// 작품 삭제
	@RequestMapping("/deleteGoods.wdo")
	public String deleteGoods(GoodsVO goods) {
		System.out.println("작품 삭제처리");
		goodsService.deleteGoods(goods);
		return "redirect:/productManagement.wdo";
		
	}


}
