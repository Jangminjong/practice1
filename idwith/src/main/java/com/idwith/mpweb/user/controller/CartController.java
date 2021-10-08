package com.idwith.mpweb.user.controller;

import java.net.http.HttpRequest;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		List<CartVO> cartList = cartService.getCartList(user_id);
		
		System.out.println("상점이름 : " + cartList.get(0).getStore_name());
		model.addAttribute("cartList", cartList);
		return "cart";
	}
	
	@RequestMapping(value = "/insertCart.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertCart(@ModelAttribute CartVO cart) {
		System.out.println("장바구니 담기 컨트롤러 실행");

		String[] cartOptionValue = new String[cart.getGoods_option_value().length];
		String[] cartOptionPrice = new String[cart.getGoods_option_value().length];
		for(int i=0; i<cart.getGoods_option_value().length; i++) {
			System.out.println(i+"번째 실행");
			String j =  cart.getGoods_option_value()[i];
			String[] str = j.split(",");
			
			cartOptionValue[i] = str[0];
			cartOptionPrice[i] = str[1];
		}
		
		cart.setGoods_option_value(cartOptionValue);
		cart.setGoods_option_price(cartOptionPrice);
		
		cartService.insertGoods(cart);
		
		return null;
	}


	@RequestMapping(value = "/cartQuantityUpdate.do", method=RequestMethod.GET)
	@ResponseBody
	public String cartQuantityUpdate(HttpServletRequest request) {
		System.out.println("수량 추가 컨트롤러 실행");
		CartVO vo = new CartVO();
		
		System.out.println("값1 : " + request.getParameter("cart_quantity"));
		System.out.println("값1 : " +request.getParameter("goods_price"));
		System.out.println("값1 : " + request.getParameter("user_id"));
		System.out.println("값1 : " + request.getParameter("goods_code"));
		
		
		vo.setCart_quantity(Integer.parseInt(request.getParameter("cart_quantity")));
		vo.setGoods_price(Integer.parseInt(request.getParameter("goods_price")));
		vo.setUser_id(request.getParameter("user_id"));
		vo.setGoods_code(request.getParameter("goods_code"));
		int result = cartService.updateQuantity(vo);
		
		System.out.println("수량 결과 : " + result);
		return Integer.toString(result);
	}
	
	@RequestMapping(value = "/orderMessageUpdate.do", method=RequestMethod.GET)
	@ResponseBody
	public String orderMessageUpdate(HttpServletRequest request) {
		CartVO vo = new CartVO();
		vo.setUser_id(request.getParameter("user_id"));
		vo.setGoods_code(request.getParameter("goods_code"));
		vo.setCart_order_content(request.getParameter("cart_order_content"));
		
		System.out.println("내용 : " + request.getParameter("cart_order_content"));
		System.out.println("값1 : " + request.getParameter("user_id"));
		System.out.println("값1 : " + request.getParameter("goods_code"));
		
		int result = cartService.updateOrderMessage(vo);
		
		return Integer.toString(result);
	}
}
