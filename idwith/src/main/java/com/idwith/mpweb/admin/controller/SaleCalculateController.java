package com.idwith.mpweb.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.admin.service.ClassOrderService;
import com.idwith.mpweb.admin.service.GoodsOrderService;
import com.idwith.mpweb.admin.service.SellerService;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.ClassCalcVO;
import com.idwith.mpweb.writer.GoodsCalcVO;
import com.idwith.mpweb.writer.WriterClassOrderVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;



@Controller
public class SaleCalculateController {
	
	@Autowired
	GoodsOrderService goodsOrderService;
	
	@Autowired
	ClassOrderService classOrderService;
	
	@Autowired
	SellerService sellerService;
	
	@RequestMapping("calculate.mdo")
	public String calculate(HttpServletRequest request, Model model, HttpSession session, @RequestParam(value="goodsNowPage", required=false) String goodsNowPage,
			@RequestParam(value="goodsCntPerPage", required=false) String goodsCntPerPage, @RequestParam(value="classNowPage", required=false) String classNowPage,
			@RequestParam(value="classCntPerPage", required=false) String classCntPerPage) {
		
		int goodsTotal = goodsOrderService.countGoodsOrderAll();
		int classTotal = classOrderService.countClassOrderAll();
		
		if (goodsNowPage == null && goodsCntPerPage == null) {
			goodsNowPage = "1";
			goodsCntPerPage = "10";
		} else{
			goodsCntPerPage = "10";
		}
		
		if (classNowPage == null && classCntPerPage == null) {
			classNowPage = "1";
			classCntPerPage = "10";
		} else{
			classCntPerPage = "10";
		}
		PagingVO goodsPageVO = new PagingVO(goodsTotal, Integer.parseInt(goodsNowPage), Integer.parseInt(goodsCntPerPage));
		PagingVO classPageVO = new PagingVO(classTotal, Integer.parseInt(classNowPage), Integer.parseInt(classCntPerPage));
		
		List<GoodsOrderVO> goodsOrderList =  goodsOrderService.getOrderListAll(goodsPageVO);
		List<SellerVO> goodsSellerList = new ArrayList<SellerVO>();
		for(GoodsOrderVO goodsOrder : goodsOrderList) {
			goodsSellerList.add(sellerService.getSeller(goodsOrder.getOrder_detail_seller()));
		}
		model.addAttribute("goodsTotal", goodsTotal);
		model.addAttribute("goodsPaging", goodsPageVO);
		model.addAttribute("goodsOrderList",goodsOrderList);
		model.addAttribute("goodsSellerList", goodsSellerList);
		
		
		List<WriterClassOrderVO> classOrderList =  classOrderService.getClassOrderListAll(classPageVO);
		List<SellerVO> classSellerList = new ArrayList<SellerVO>();
		for (WriterClassOrderVO classOrder : classOrderList) {
			classSellerList.add(sellerService.getSeller(classOrder.getClass_seller_code()));
		}
		model.addAttribute("classTotal", classTotal);
		model.addAttribute("classPaging", classPageVO);
		model.addAttribute("classOrderList",classOrderList);
		model.addAttribute("classSellerList", classSellerList);
		
		return "calculate";
	}
	
	@RequestMapping("goodsCalcRes.mdo")
	@ResponseBody
	public String goodsCalcRes(@RequestParam(value="goods_order_detail_code") String goodsCode) {
		goodsOrderService.updateStatusCalcRes(goodsCode);
		GoodsOrderVO goodsOrderVO = goodsOrderService.getGoodsOrderOne(goodsCode);
		GoodsCalcVO goodsCalcVO = new GoodsCalcVO();
		goodsCalcVO.setGoodsCalcSeller(goodsOrderVO.getOrder_detail_seller());
		goodsCalcVO.setGoodsCalcPrice(goodsOrderVO.getOrder_detail_price());
		goodsCalcVO.setGoodsCalcCommission((int)(goodsOrderVO.getOrder_detail_price()*0.1));
		goodsCalcVO.setGoodsCalcDonation(goodsOrderVO.getOrder_detail_donation());
		goodsCalcVO.setGoodsCalcResultMoney((int)(goodsOrderVO.getOrder_detail_price()*0.9 + goodsOrderVO.getOrder_detail_donation()));
		goodsOrderService.insertGoodsCalc(goodsCalcVO);
		return null;
	}
	
	@RequestMapping("classCalcRes.mdo")
	@ResponseBody
	public String classCalcRes(@RequestParam(value="class_order_seq") Integer classCode) {
		classOrderService.updateStatusCalcRes(classCode);
		WriterClassOrderVO writerClassOrderVO = classOrderService.getClassOrderOne(classCode);
		ClassCalcVO classCalcVO = new ClassCalcVO();
		classCalcVO.setClassCalcSeller(writerClassOrderVO.getClass_seller_code());
		classCalcVO.setClassCalcPrice(writerClassOrderVO.getClass_order_price());
		classCalcVO.setClassCalcCommission((int)(writerClassOrderVO.getClass_order_price()*0.1));
		classCalcVO.setClassCalcDonation(writerClassOrderVO.getClass_order_donation());
		classCalcVO.setClassCalcResultMoney((int)(writerClassOrderVO.getClass_order_price()*0.9 + writerClassOrderVO.getClass_order_donation()));
		classOrderService.insertClassCalc(classCalcVO);
		return null;
	}
	
	
	@GetMapping("sales.mdo")
	public String sales() {
		return "sales";
	}
	
}
