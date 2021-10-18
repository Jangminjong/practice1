package com.idwith.mpweb.writer.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassOrderVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;
import com.idwith.mpweb.writer.order.service.GoodsOrderService;
import com.idwith.mpweb.writer.service.ClassOrderService;

@Controller
public class SalesController {
	
	@Autowired
	GoodsOrderService goodsOrderService;
	
	@Autowired
	ClassOrderService classOrderService;
	
	@RequestMapping("/writerSales.wdo")
	public String writerSales(HttpServletRequest request, Model model, HttpSession session) {
		int seller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		List<Long> goodsCountList = goodsOrderService.getGoodsCountFive(seller); // 수량
		List<Long> goodsSalesList = goodsOrderService.getGoodsSalesFive(seller); // 판매금액
		List<String> goodsNameList = goodsOrderService.getGoodsNameFive(seller); // 작품명
		List<String> goodsGoodsCodeList = goodsOrderService.getGoodsCodeFive(seller); //작품코드
		model.addAttribute("goodsCountList", goodsCountList);
		model.addAttribute("goodsSalesList", goodsSalesList);
		model.addAttribute("goodsNameList", goodsNameList);
		model.addAttribute("goodsGoodsCodeList", goodsGoodsCodeList);
		return "writerSales";
	}
	@ResponseBody
	@RequestMapping("getDateSales.wdo")
	public Map<Date, Integer> getDateSales(@RequestParam(value="startDate") String startDate, @RequestParam(value="endDate") String endDate){
		GoodsOrderVO goodsOrderVO = new GoodsOrderVO();
		goodsOrderVO.setStartDate(Date.valueOf(startDate));
		goodsOrderVO.setEndDate(Date.valueOf(endDate));
		List<Integer> rangeCalc = goodsOrderService.getRangeCalc(goodsOrderVO);
		List<Date> rangeDate = goodsOrderService.getRangeDate(goodsOrderVO);
		Map<Date, Integer> chartData = new HashMap<>();
		for (int i=0; i<rangeCalc.size(); i++) {
			chartData.put(rangeDate.get(i), rangeCalc.get(i));
		}
		return chartData;
	}
	
	
	@RequestMapping("/sellerCalculate.wdo")
	public String sellerCalculate(HttpServletRequest request, Model model, HttpSession session, @RequestParam(value="goodsNowPage", required=false) String goodsNowPage,
			@RequestParam(value="goodsCntPerPage", required=false) String goodsCntPerPage, @RequestParam(value="classNowPage", required=false) String classNowPage,
			@RequestParam(value="classCntPerPage", required=false) String classCntPerPage) {
		int seller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int goodsTotal = goodsOrderService.countGoodsOrder(seller);
		int classTotal = classOrderService.countClassOrder(seller);
		
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
		PagingVO goodsPageVO = new PagingVO(goodsTotal, Integer.parseInt(goodsNowPage), Integer.parseInt(goodsCntPerPage), seller);
		PagingVO classPageVO = new PagingVO(classTotal, Integer.parseInt(classNowPage), Integer.parseInt(classCntPerPage), seller);
		
		List<GoodsOrderVO> goodsOrderList =  goodsOrderService.getOrderList(goodsPageVO);
		model.addAttribute("goodsTotal", goodsTotal);
		model.addAttribute("goodsPaging", goodsPageVO);
		model.addAttribute("goodsOrderList",goodsOrderList);
		
		List<WriterClassOrderVO> classOrderList =  classOrderService.getClassOrderList(classPageVO);
		model.addAttribute("classTotal", classTotal);
		model.addAttribute("classPaging", classPageVO);
		model.addAttribute("classOrderList",classOrderList);
		
		
		return "sellerCalculate";
	}
	
	@RequestMapping("goodsCalcReq.wdo")
	@ResponseBody
	public String goodsCalcReq(@RequestParam(value="goods_order_detail_code") String goodsCode) {
		goodsOrderService.updateStatus(goodsCode);
		return null;
	}
	
	@RequestMapping("classCalcReq.wdo")
	@ResponseBody
	public String classCalcReq(@RequestParam(value="class_order_seq") Integer classCode) {
		classOrderService.updateStatus(classCode);
		return null;
	}

}
