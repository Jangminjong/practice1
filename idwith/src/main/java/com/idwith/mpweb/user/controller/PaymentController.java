package com.idwith.mpweb.user.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Nullable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.CartListVO;
import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.UserAddressVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.GoodsOrderService;
import com.idwith.mpweb.user.service.MypageService;
import com.idwith.mpweb.user.service.UserService;

@Controller
public class PaymentController {
	@Autowired
	private GoodsOrderService goodsService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MypageService myPageService;
	
	@GetMapping("/payment.do")
	public String payment(HttpSession session, Model model) {
		String user_id = (String) session.getAttribute("email");
		
		UserVO userVO = userService.getOrderUser(user_id);
		List<UserAddressVO> adrList = myPageService.getAddressList(user_id);
		
		System.out.println("배송지 길이 : " + adrList.size());
		
		UserAddressVO adr1 = null;
		UserAddressVO adr2 = null;
		UserAddressVO adr3 = null;
		
		if(adrList.size() > 0) {
			adrList.get(0);
			adr2 = adrList.get(1);
			adr3 = adrList.get(2);
		}
		
		model.addAttribute("adr1", adr1);
		model.addAttribute("adr2", adr2);
		model.addAttribute("adr3", adr3);
		model.addAttribute("userInfo", userVO);
		return "product_payment";
	}

	//충돌 예정 : productPayment 메서드 필요.
	//작품 결제창 컨트롤러
	@ResponseBody
	@RequestMapping(value = "product_payment.do", method = RequestMethod.POST)
	public String productPayment(HttpServletRequest req, HttpSession session)throws Exception {
		System.out.println("작품 결제 컨트롤러 실행");
		System.out.println("장바구니들: "+ req.getParameter("optionStr"));
		List<CartVO> cartList = new ArrayList<CartVO>();
		
		String[] carts = req.getParameter("optionStr").split("@");
		for(int i=1; i<carts.length;i++) {
			System.out.println(i+"번째 실행");
			CartVO cart = goodsService.getCartForOrder(carts[i]);
			cartList.add(cart);
			
			System.out.println("주문 고객 : " + cart.getUser_id());
			System.out.println("작가 코드 : " + cart.getSeller_code());
			System.out.println("작품 코드 : " + cart.getGoods_code());
			System.out.println("작품명 : " + cart.getStore_name());
			System.out.println("작품 이미지 : " + cart.getGoodsVO().getGoods_photo()[0]);
			for(int j=0; j<cart.getGoods_option_value().length; j++) {
				System.out.println("작품옵션값 : " + cart.getGoods_option_value()[j]);
				System.out.println("작품옵션가격 : " + cart.getGoods_option_price()[j]);
			}
			System.out.println("작품수량 : " + cart.getCart_quantity());
			System.out.println("작품가격 : " + cart.getGoods_price());
			
			System.out.println("==============================");
		}
		session.setAttribute("cartListForOrder", cartList);
		
		
		
		//goodsOrderDetailVO에 미리 저장
		List<GoodsOrderDetailVO> goodsOrderList = new ArrayList<GoodsOrderDetailVO>();
		
		int total = 0;
		for(int i=1; i<cartList.size(); i++) {
			System.out.println(i+"번째 상세페이지에 넣는 중");
			GoodsOrderDetailVO goodsOrderVO = new GoodsOrderDetailVO();
			goodsOrderVO.setOrder_id(cartList.get(i).getUser_id()); //구매자 아이디
			goodsOrderVO.setOrder_detail_seller(cartList.get(i).getSeller_code()); //작가 코드
			goodsOrderVO.setOrder_detail_goods(cartList.get(i).getGoods_code()); //작품 코드
			goodsOrderVO.setGoods_name(cartList.get(i).getGoodsVO().getGoods_name()); //작품명
			goodsOrderVO.setOrder_detail_quantity(cartList.get(i).getCart_quantity()); //상품수량
			goodsOrderVO.setOrder_detail_demand(cartList.get(i).getCart_order_content()); //요구사항
			
			int goods_price = cartList.get(i).getGoods_price();
			goodsOrderVO.setOrder_detail_price(goods_price); //작품 가격
			
			total += goods_price; //최종금액에 작품 가격 +
			goodsOrderVO.setOrder_detail_cost(total); //최종 금액
			goodsOrderList.add(goodsOrderVO);
		}
		
		System.out.println("주문 길이 : "  + goodsOrderList.size());
		
		session.setAttribute("goodsOrderList", goodsOrderList);
		
		return Integer.toString(1);
	}
	
	@RequestMapping(value = "insert_goods_payment.do", method= RequestMethod.POST)
	public String insertGoodsPayment() {
		
		return null;
	}
}
