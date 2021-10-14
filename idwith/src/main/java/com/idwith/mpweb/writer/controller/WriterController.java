package com.idwith.mpweb.writer.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.writer.WriterClassOrderVO;
import com.idwith.mpweb.writer.order.GoodsOrderVO;
import com.idwith.mpweb.writer.order.service.GoodsOrderService;
import com.idwith.mpweb.writer.service.ClassOrderService;
import com.idwith.mpweb.writer.service.WriterService;

@Controller
public class WriterController {
	
	@Autowired
	WriterService writerService;
	
	@Autowired
	GoodsOrderService goodsOrderService;
	
	@Autowired
	ClassOrderService classOrderService;
	
	@RequestMapping("/main.wdo")
	public String main(HttpSession session, Model model) {
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		
		int follower = writerService.follower(sellerCode);
		int todayOrder = writerService.todayOrder(sellerCode);
		int yesterdayOrder = goodsOrderService.yesterdayOrder(sellerCode);
		int weekOrder = goodsOrderService.weekOrder(sellerCode);
		int todaySales = goodsOrderService.todaySales(sellerCode);
		int yesterdaySales = goodsOrderService.yesterdaySales(sellerCode);
		int weekSales = goodsOrderService.weekSales(sellerCode);
		List<GoodsOrderVO> goodsOrder = goodsOrderService.getGoodsOrderFive(sellerCode);
		List<WriterClassOrderVO> classOrder = classOrderService.getClassOrderFive(sellerCode);
		
		
		model.addAttribute("follower", follower );
		model.addAttribute("todayOrder", todayOrder );
		model.addAttribute("goodsOrderList", goodsOrder);
		model.addAttribute("classOrderList", classOrder);
		model.addAttribute("yesterdayOrder", yesterdayOrder);
		model.addAttribute("weekOrder", weekOrder);
		model.addAttribute("todaySales", todaySales);
		model.addAttribute("yesterdaySales", yesterdaySales);
		model.addAttribute("weekSales", weekSales);
		return "main";
	}
	
	@RequestMapping("writerEnrollmentCancle.wdo")
	@ResponseBody
	public String writerEnrollmentCancle(HttpSession session) {
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		writerService.enrollmentCancle(sellerCode);
		
		return "성공";
	}
	
	@GetMapping("/logout.wdo")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/index.do";
		
	}

}
