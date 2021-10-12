package com.idwith.mpweb.writer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;
import com.idwith.mpweb.writer.order.service.GoodsOrderService;

@Controller
public class OderController {
	
	@Autowired
	GoodsOrderService goodsOrderService;

	// 주문 목록
	@GetMapping("/orderList.wdo")
	public String orderList(PagingVO pageVO, Model model, HttpSession session,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage,
			@RequestParam(value="set", required = false)String set) {
		System.out.println("작품 주문목록 요청처리");
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int goodsOrderTotal = goodsOrderService.countGoodsOrder(sellerCode);
 
		
		System.out.println("주문 수 : " + goodsOrderTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(goodsOrderTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), sellerCode);
	
		model.addAttribute("total", goodsOrderTotal);
		model.addAttribute("paging", pageVO);
		model.addAttribute("GoodsOrderViewAll", goodsOrderService.getOrderList(pageVO) );
		return "orderList";
	}
	
	
	
	
	// 주문 상세
	@RequestMapping(value="/productDetails.wdo", method=RequestMethod.GET)
	public String productDetails(GoodsOrderVO goodsOrder, Model model) {
		System.out.println("주문내역 상세보기 : " + goodsOrder.getOrder_detail_goods());
		System.out.println("주문가격 : " + goodsOrder.getOrder_detail_price());
		model.addAttribute("goodsOrder", goodsOrderService.order(goodsOrder));
		return "productDetails";
	}

	@RequestMapping("/updateOrder.wdo")
	public String updateOrder(GoodsOrderVO goodsOrder) {
		System.out.println("배송상태처리");
		System.out.println("Deliverly : " + goodsOrder.getOrder_delivery_state());
		goodsOrderService.updateOrder(goodsOrder);
		return "redirect:/orderList.wdo";
	}

}