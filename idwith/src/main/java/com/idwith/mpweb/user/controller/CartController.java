package com.idwith.mpweb.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart.do", method={RequestMethod.GET, RequestMethod.POST})
	public String cart(HttpSession session, Model model) {
		System.out.println("장바구니 컨트롤러 실행");
		
		String user_id = (String)session.getAttribute("email");
		List<CartVO> cartList;
		
		try {
			cartList = cartService.getCart(user_id);
			
			//작가코드, 상품 가격, 수량, 배송비, 후원금액, 적립금
			System.out.println("컨트롤러 결과값 : " + cartList);
			
			model.addAttribute("cartList", cartList);
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return "cart";
	}
}
