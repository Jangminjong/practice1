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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.GoodsOptionVO;
import com.idwith.mpweb.user.GoodsVO;
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
		model.addAttribute("cartListLength", cartList.size());
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
	
	//옵션 수정 클릭 시 모달 띄워주는 메서드
	@RequestMapping(value = "/cartGetOptionList.do", method=RequestMethod.GET)
	@ResponseBody
	public List<GoodsOptionVO> cartGetOptionList(@RequestParam("goods_code")String goods_code, HttpSession session) {
		List<GoodsOptionVO> vo = cartService.getGoodsOption(goods_code);
	
		return vo;
	}
	
	@RequestMapping(value = "/optionUpdate.do", method=RequestMethod.GET)
	@ResponseBody
	public String optionUpdate(@RequestParam("goods_code")String goods_code,
			@RequestParam("curOption") String updateOption, HttpSession session) {
		System.out.println("옵션 수정 컨트롤러 실행");
		CartVO vo = new CartVO();
		vo.setUser_id((String) session.getAttribute("email"));
		vo.setGoods_code(goods_code);
		
		String[] option = updateOption.split("/");
		
		String[] cartOptionValue = new String[option.length];
		String[] cartOptionPrice = new String[option.length];
		for(int i=0; i<option.length; i++) {
			String j =  option[i];
			String[] str = j.split(",");
			
			cartOptionValue[i] = str[0];
			cartOptionPrice[i] = str[1];
		}
		
		vo.setGoods_option_value(cartOptionValue);
		vo.setGoods_option_price(cartOptionPrice);
		
		
		//split으로 나눠서 데이터 나누기
		cartService.updateOption(vo);
		return null;
	}
}
