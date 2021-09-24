package com.idwith.mpweb.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idwith.mpweb.user.WatingVO;
import com.idwith.mpweb.user.service.WatingService;

@Controller
public class OfferController {

	@Autowired
	private WatingService watingService;
	
	@GetMapping("/offer_product.do")
	public String offerProduct() {
		return "offer_product";
	}
	
	//��ǰ ���� ��û �� ����ȭ��
	@RequestMapping(value = "offer_success.do", method = RequestMethod.POST)
	public String offerSuccess(WatingVO watingVO) {
		System.out.println("��Ʈ�ѷ� ���� : offer_success");
		System.out.println("ī�װ� : " + watingVO.getProduct_category());
		System.out.println("��� : " + watingVO.getProduct_function());
		System.out.println("�󼼳��� : " + watingVO.getProduct_info());
		
		watingService.insertWating(watingVO);
		return "offer_success";
	}
}
