package com.idwith.mpweb.user.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;
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

import edu.emory.mathcs.backport.java.util.Arrays;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/cart.do", method={RequestMethod.GET, RequestMethod.POST})
	public String cart(HttpSession session, Model model) {
		System.out.println("장바구니 컨트롤러 실행");

		String user_id = (String)session.getAttribute("email");

		List<CartVO> cartList = cartService.getCartList(user_id);
		int cartListLength = cartList.size();

		List<CartVO> goodsList = new ArrayList<CartVO>();
		List<Map<String,String>> optionList = new ArrayList<Map<String,String>>();
		List<Integer> optionNum = new ArrayList<Integer>();
		Map<String, String> optionMap = null;

		for(int i=0; i<cartList.size(); i++) {
			System.out.println(i+"번 째 실행");
			
			int state=0;
			optionMap = new HashMap<String,String>();
			if(i==0) {
				System.out.println("테스트 중 i가 0번째 일 때");
				System.out.println("가져온 수량 : " + Integer.toString(cartList.get(i).getCart_quantity()));
				optionMap.put("quantity", Integer.toString(cartList.get(i).getCart_quantity()));
				optionMap.put("goodsCode", cartList.get(i).getGoods_code());
				optionMap.put("goodsPrice", Integer.toString(cartList.get(i).getGoods_price()));
				optionMap.put("cartNum", Integer.toString(cartList.get(i).getCart_num()));
				System.out.println("옵션 개수: "+ cartList.get(i).getGoods_option_value().length);
				for(int j=0; j<cartList.get(i).getGoods_option_value().length; j++) {
					optionMap.put("optionValue"+j, cartList.get(i).getGoods_option_value()[j]); 
					optionMap.put("optionPrice"+j, cartList.get(i).getGoods_option_price()[j]); 
				}
				optionNum.add(cartList.get(i).getGoods_option_value().length);
				goodsList.add(cartList.get(i));
				optionList.add(optionMap);
				state=2;
			}
			else {
				System.out.println("테스트 중 i가 0이 아닐 때");
				for(int j=0; j<i; j++) {
					System.out.println("DB 상품코드 : " + cartList.get(i).getGoods_code());
					System.out.println("비교하는 상품 코드 : " + goodsList.get(j).getGoods_code());
					if(cartList.get(i).getGoods_code().equals(goodsList.get(j).getGoods_code())) {
						System.out.println("테스트 중 상품 코드가 같을 때");
						optionMap.put("quantity", Integer.toString(cartList.get(i).getCart_quantity()));
						optionMap.put("goodsCode", cartList.get(i).getGoods_code());
						optionMap.put("goodsPrice", Integer.toString(cartList.get(i).getGoods_price()));
						optionMap.put("cartNum", Integer.toString(cartList.get(i).getCart_num()));
						for(int m=0; m<cartList.get(i).getGoods_option_value().length; m++) {
							optionMap.put("optionValue"+m, cartList.get(i).getGoods_option_value()[j]); 
							optionMap.put("optionPrice"+m, cartList.get(i).getGoods_option_price()[j]); 
						}
						optionNum.add(cartList.get(i).getGoods_option_value().length);
						optionList.add(optionMap);
						state=1;
						break;
					}
				}

			}
			
			if(state==0) {
				System.out.println("테스트 중 state가 0일 때");
				optionMap.put("quantity", Integer.toString(cartList.get(i).getCart_quantity()));
				optionMap.put("goodsCode", cartList.get(i).getGoods_code());
				optionMap.put("goodsPrice", Integer.toString(cartList.get(i).getGoods_price()));
				optionMap.put("cartNum", Integer.toString(cartList.get(i).getCart_num()));
				for(int j=0; j<cartList.get(i).getGoods_option_value().length; j++) {
					optionMap.put("optionValue"+j, cartList.get(i).getGoods_option_value()[j]); 
					optionMap.put("optionPrice"+j, cartList.get(i).getGoods_option_price()[j]); 
				}
				optionNum.add(cartList.get(i).getGoods_option_value().length);
				goodsList.add(cartList.get(i));
				optionList.add(optionMap);
				
			}
			System.out.println("=========================");
		}
		
		System.out.println("goodsList 테스트 : " + goodsList.get(0).getGoods_code());
		System.out.println("goodsList 테스트 : " + goodsList.get(0).getGoodsVO().getGoods_photo()[0]);
		System.out.println("goodsList 테스트 : " + goodsList.get(0).getGoodsVO().getGoods_name());
		System.out.println("goodsList 테스트 : " + goodsList.get(0).getGoodsVO().getStore_name());
		
		for(int i=0; i<optionList.size();i++) {
			
			System.out.println("option의 value: "+ optionList.get(i).get("optionValue"+i));
			System.out.println("option의 price: "+ optionList.get(i).get("optionPrice"+i));
		}


		model.addAttribute("optionNum", optionNum);//옵션 개수
		model.addAttribute("goodsList", goodsList);//상품에 관한 공통 정보 ex)상품 이미지, 상품코드, 작가코드
		model.addAttribute("optionList", optionList);//옵션값, 수량이 들어있는 리스트
		model.addAttribute("cartListLength", cartListLength);
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

		//vo 세팅 후 넘김
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
	public String cartGetOptionList(@RequestParam("goods_code")String goods_code, HttpSession session
			,Model model, HttpSession sesion) {
		List<GoodsOptionVO> vo = cartService.getGoodsOption(goods_code);

		session.setAttribute("optionList", vo);
		return null;
	}

	@RequestMapping(value = "/optionUpdate.do", method=RequestMethod.GET)
	@ResponseBody
	public String optionUpdate(@RequestParam("goods_code")String goods_code,
			@RequestParam("curOption") String updateOption, 
			@RequestParam("goods_price") String goods_price, HttpSession session) {
		System.out.println("옵션 수정 컨트롤러 실행");
		CartVO vo = new CartVO();
		vo.setUser_id((String) session.getAttribute("email"));
		vo.setGoods_code(goods_code);

		String[] option = updateOption.split("/");

		System.out.println("테스트 코드 : " + goods_code);
		System.out.println("테스트 옵션 : " + updateOption);

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
		vo.setGoods_price(Integer.parseInt(goods_price));

		//split으로 나눠서 데이터 나누기
		cartService.updateOption(vo);
		return null;
	}

	@RequestMapping(value = "/deleteCartList.do", method=RequestMethod.GET)
	@ResponseBody
	public String deleteCartList(@RequestParam("goods_code")String goods_code, HttpSession session) {
		System.out.println("작품 옵션 삭제 컨트롤러 실행");

		CartVO vo = new CartVO();
		vo.setUser_id((String) session.getAttribute("email"));
		vo.setGoods_code(goods_code);

		cartService.deleteOption(vo);
		return null;
	}
}
