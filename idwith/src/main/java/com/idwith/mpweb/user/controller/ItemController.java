package com.idwith.mpweb.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.user.GoodsOptionVO;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.classUser.ClassVO;
import com.idwith.mpweb.user.classUser.service.ClassService;
import com.idwith.mpweb.user.service.GoodsService;

@Controller
public class ItemController {
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private ClassService classService;
	
	@RequestMapping("/search.do")
	public String classSearch(@RequestParam(value="nowPage", required=false) String nowPage, 
								@RequestParam(value="cntPerPage", required=false) String cntPerPage, HttpServletRequest req, Model model) {
		String search = (String) req.getAttribute("search");
		PagingVO goodsPageVO = new PagingVO();
		PagingVO classPageVO = new PagingVO();
		
		int totalGoods = goodsService.countGoodsForSearch(search);
		int totalClass = classService.countClassForSearch(search);
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "12";
		}else{
			cntPerPage = "12";
		}
		
		goodsPageVO = new PagingVO(totalGoods, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), search);
		classPageVO = new PagingVO(totalClass, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), search);
		
		// 굿즈 리스트 가져오기
		List<GoodsVO> goodsList = goodsService.getGoodsListForSearch(goodsPageVO);
		// 클래스 리스트 가져오기
		List<ClassVO> classList = classService.getClassListForSearch(classPageVO);
		
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("classList", classList);
		
		return "search";
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

	//구매후기 작성하기 화면
	@GetMapping("/review_detail.do")
	public String review_detail(@RequestParam(value="goods_code", required=false) String goods_code) {
		System.out.println("구매후기 작성하기 컨트롤러 실행");
		
		//GoodsReviewVO reviewDetail = goodsService.getReviewListDetail(goods_code);
		return "review_detail";
	}
}
