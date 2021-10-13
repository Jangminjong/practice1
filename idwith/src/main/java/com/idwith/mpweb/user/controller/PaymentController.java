package com.idwith.mpweb.user.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.CartListVO;
import com.idwith.mpweb.user.CartVO;
import com.idwith.mpweb.user.CouponHaveVO;
import com.idwith.mpweb.user.CouponUseVO;
import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.GoodsOrderVO;
import com.idwith.mpweb.user.UserAddressVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.GoodsOrderService;
import com.idwith.mpweb.user.service.MypageService;
import com.idwith.mpweb.user.service.UserService;
import com.idwith.mpweb.user.SaveVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.classUser.ClassOrderVO;
import com.idwith.mpweb.user.classUser.service.ClassService;
import com.idwith.mpweb.user.service.UserService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class PaymentController {
	@Autowired
	private GoodsOrderService goodsService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MypageService myPageService;
	
	@Autowired
	private ClassService service;
	
	@GetMapping("/payment.do")
	public String payment(HttpSession session, Model model) {
		String user_id = (String) session.getAttribute("email");
		
		UserVO userVO = userService.getOrderUser(user_id);
		List<UserAddressVO> adrList = myPageService.getAddressList(user_id);
		
		List<SaveVO> point = goodsService.getPointForPayment(user_id);
		int totalPoint=0;
		for(SaveVO list: point) {
			totalPoint+=list.getSave_point();
		}
		
		List<CouponHaveVO> couponList = goodsService.getCouponListForPayment(user_id);
		
		System.out.println("배송지 길이 : " + adrList.size());
		
		UserAddressVO adr1 = null;
		
		if(adrList.size() > 0) {
			adr1 = adrList.get(0);
		}
		
		model.addAttribute("adr1", adr1);
		model.addAttribute("userInfo", userVO);
		model.addAttribute("couponList", couponList);
		model.addAttribute("totalPoint", totalPoint);
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
		List<GoodsOrderDetailVO> orderDetailList = new ArrayList<GoodsOrderDetailVO>();
		
		int finalPrice = Integer.parseInt(req.getParameter("finalPrice"));
		int finalDeliveryFee =0; // 배송비합산
		int orderGoodsPrice = 0; // 주문하는 작품들만의 가격 합산
		
		
		String[] carts = req.getParameter("optionStr").split("@");
		for(int i=1; i<carts.length;i++) {
			System.out.println(i+"번째 실행");
			String option = "";
			CartVO cart = goodsService.getCartForOrder(carts[i]);
			
			System.out.println(cart.getStore_name());
			System.out.println(cart.getGoodsVO().getStore_name());
			cartList.add(cart);
			
			GoodsOrderDetailVO orderDetail = new GoodsOrderDetailVO();
			orderDetail.setOrder_detail_seller(cart.getSeller_code());
			orderDetail.setOrder_detail_goods(cart.getGoods_code());
			orderDetail.setGoods_name(cart.getGoodsVO().getGoods_name());
			orderDetail.setOrder_detail_quantity(cart.getCart_quantity());
			orderDetail.setOrder_detail_demand(cart.getCart_order_content());
			orderDetail.setOrder_detail_price(cart.getGoods_price());
			orderDetail.setOrder_id((String)session.getAttribute("email"));
						
			for(int j=0; j<cart.getGoods_option_value().length; j++) {
				if(j==0) {
					option = cart.getGoods_option_value()[j];
				}else {
					option += ("/"+cart.getGoods_option_value()[j]);
				}
			}
			
			finalDeliveryFee += cart.getCart_delivery_fee();
			orderGoodsPrice += cart.getGoods_price();
			
			orderDetail.setOrder_detail_option(option);
			orderDetailList.add(orderDetail);
		
		}
		
		SaveVO point = new SaveVO();
		point.setSave_point((int)Math.round(orderGoodsPrice * 0.01));
		
		session.setAttribute("cartListForOrder", cartList);
		session.setAttribute("orderDetailList", orderDetailList);
		session.setAttribute("finalPrice", finalPrice); // 주문 상품 전체 가격(배송비포함)
		session.setAttribute("finalDeliveryFee", finalDeliveryFee);
		session.setAttribute("orderGoodsPrice", orderGoodsPrice);
		session.setAttribute("point", point);

		
		return Integer.toString(1);
	}
	
	@RequestMapping(value = "insert_goods_payment.do", method= RequestMethod.POST)
	@ResponseBody
	public String insertGoodsPayment(HttpSession session, @RequestParam(value= "user_name", required=false) String user_name,
			@RequestParam(value= "user_phone") String user_phone, @RequestParam(value= "order_save") String order_save, @RequestParam(value= "point_balance") String point_balance, @RequestParam(value= "order_save_use") String order_save_use, @RequestParam(value="goods_coupon_discount") String goods_coupon_discount,
			@RequestParam(value= "order_final_cost") String order_final_cost, @RequestParam(value= "coupon_code") String coupon_code, @RequestParam(value= "order_detail_payment") String order_detail_payment,
			@RequestParam(value= "delivery_name") String delivery_name, @RequestParam(value= "delivery_phone") String delivery_phone, @RequestParam(value= "delivery_zipcode") String delivery_zipcode,
			@RequestParam(value= "delivery_address1") String delivery_address1, @RequestParam(value= "delivery_address2") String delivery_address2, @RequestParam(value= "goods_order_donation") String goods_order_donation,
			@RequestParam(value= "final_discount") String final_discount) {
		
		String email = (String) session.getAttribute("email");
		String merchant_uid = (String) session.getAttribute("merchant_uid");
		String imp_uid = (String) session.getAttribute("imp_uid");
		int orderGoodsPrice = (int) session.getAttribute("orderGoodsPrice");
		int finalDiscount = Integer.parseInt(final_discount);
		List<CartVO> cartList = (List<CartVO>) session.getAttribute("cartListForOrder");
		List<GoodsOrderDetailVO> orderDetailList = (List<GoodsOrderDetailVO>) session.getAttribute("orderDetailList");
		
		
		System.out.println("user_name: " + user_name);
		System.out.println("user_phone: "+user_phone);
		System.out.println("order_final_cost: "+order_final_cost);
		System.out.println("delivert_address1: "+delivery_address1);
		System.out.println("order_save :"+order_save );
		System.out.println("order_save_use :"+ order_save_use);
		System.out.println("order_final_cost :"+ order_final_cost);
		System.out.println("coupon_code :"+coupon_code );
		System.out.println("order_detail_payment :"+ order_detail_payment);
		System.out.println("delivery_name :"+ delivery_name);
		System.out.println("delivery_phone :"+ delivery_phone);
		System.out.println("delivery_address1 :"+ delivery_address1);
		System.out.println("delivery_address2 :"+ delivery_address2);
		System.out.println("goods_order_donation :"+ goods_order_donation);
		
		
		
		
		// 유저정보 확인하고 이름&전화번호 추가
		UserVO user = new UserVO();
		user.setUser_id(email);
		user.setUser_phone(user_phone);
		userService.updateUserInfoAtPayment(user);
		
		// 배송지 있는지 확인하고 추가(주소)
		UserAddressVO address = new UserAddressVO();
		address.setUser_id(email);
		address.setUser_name(user_name);
		address.setUser_order(1);
		address.setUser_phone(user_phone);
		address.setUser_zipcode(delivery_zipcode);
		address.setUser_address1(delivery_address1);
		address.setUser_address2(delivery_address2);
		userService.updateAddressAtPayment(address);
		
		// 주문 디테일 추가(주문코드 가져오기) orderDetailList
		for(int i=0; i<orderDetailList.size(); i++) {
			String order_detail_code = orderDetailList.get(i).getOrder_detail_goods()+ (int)(Math.random()*100000);
			orderDetailList.get(i).setOrder_detail_code(order_detail_code);
			orderDetailList.get(i).setOrder_id(email);
			orderDetailList.get(i).setOrder_detail_donation(Integer.parseInt(goods_order_donation));
			if(!coupon_code.equals(null)) {
				orderDetailList.get(i).setCoupon_use(true);
				orderDetailList.get(i).setCoupon_code(coupon_code);
			}else {
				orderDetailList.get(i).setCoupon_use(false);
			}
			
			if(i==(orderDetailList.size()-1)) {
				int detailCost = orderDetailList.get(i).getOrder_detail_price()-finalDiscount;
				orderDetailList.get(i).setOrder_detail_cost(detailCost);
			}else {
				orderDetailList.get(i).setOrder_detail_cost(orderDetailList.get(i).getOrder_detail_price());
			}
			
			orderDetailList.get(i).setOrder_detail_payment(order_detail_payment);
			orderDetailList.get(i).setOrder_detail_name(delivery_name);
			orderDetailList.get(i).setOrder_detail_phone(delivery_phone);
			orderDetailList.get(i).setOrder_detail_zip(delivery_zipcode);
			orderDetailList.get(i).setOrder_detail_address(delivery_address1);
			orderDetailList.get(i).setOrder_detail_address2(delivery_address2);
			orderDetailList.get(i).setImp_uid(imp_uid);
			goodsService.insertDetailOrder(orderDetailList.get(i));
		}
		
		// 전체 주문내역에 추가할 주문디테일코드 가져오기
		List<String> orderDetailCodes = goodsService.getOrderDetailCodes(email);
		String[] orderDetailCodeStr = null;
		for(int i=0; i<orderDetailCodes.size();i++) {
			orderDetailCodeStr[i]=orderDetailCodes.get(i);
		}
		
		// 전체 주문내역 추가 
		GoodsOrderVO goodsOrder = new GoodsOrderVO();
		goodsOrder.setOrder_detail_codes(orderDetailCodeStr);
		goodsOrder.setOrder_id(email);
		goodsOrder.setOrder_save(Integer.parseInt(order_save));
		if(Integer.parseInt(order_save_use)==0) {
			goodsOrder.setOrder_save_use(false);
		}else {
			goodsOrder.setOrder_save_use(true);
		}
		goodsOrder.setOrder_final_cost(Integer.parseInt(order_final_cost));
		goodsOrder.setMarchant_uid(merchant_uid);
		goodsOrder.setImp_uid(imp_uid);
		
		goodsService.insertOrder(goodsOrder);
		
		// 카트에서 삭제 cartListForOrder
		for(int i=0; i<cartList.size(); i++) {
			goodsService.updateCartNumAfterPayment(cartList.get(i).getCart_num());
		}
		
		// 쿠폰 have테이블에서 삭제, use 테이블에 추가 
		CouponHaveVO have = new CouponHaveVO();
		have.setCoupon_have_code(coupon_code);
		have.setCoupon_have_id(email);
		userService.deleteHaveCoupon(have);
		
		CouponUseVO use = new CouponUseVO();
		use.setCoupon_use_goods(merchant_uid);
		use.setCoupon_use_id(email);
		use.setCoupon_use_code(coupon_code);
		userService.insertUseCoupon(use);
		
		// 기존적립금 false, 
		SaveVO point = new SaveVO();
		point.setSave_id(email);
		point.setSave_point(Integer.parseInt(point_balance));
		userService.updateOrderSave(point); // 기존 항목 모두 false로 수정, 남은 포인트 새로 insert
		
		point.setSave_point(Integer.parseInt(order_save));
		point.setSave_goods_code(cartList.get(0).getGoods_code());
		userService.insertNewOrderSave(point); // 새로운 적립금 insert
		return "1";
	}
	
	@RequestMapping("/payment_goods_cancel.do")
	public String paymentGoodsCancel(HttpServletRequest req) {
		String imp_uid = req.getParameter("imp_uid");
		goodsService.paymentGoodsCancel(imp_uid);
		return "redirect:/mypage_order_goods.do";
	}
	
	
	
	private IamportClient api;
	
	public PaymentController() {
		this.api = new IamportClient("6333697477875245","4510aab2496ecff525faf930bc5ef6004fa9b7f9f301efb1226114e12bb86cc0163aa189864c61b8");
	}
	
	@RequestMapping("/payment_class.do")
	public String payment(ClassOrderVO classOrder, HttpSession session, HttpServletRequest req, Model model) {
		String classCode = (String) session.getAttribute("classCode");
		String email = (String) session.getAttribute("email");
		
		SaveVO point = new SaveVO();
		point.setSave_point((int)Math.round((classOrder.getClass_order_price()) * 0.01));
		
		// 사용자 정보 세팅 
		List<UserVO> user = service.getUserInfoForClassReg(email); 
		int totalPoint=0;
		for(UserVO list: user) {
			totalPoint+=list.getSave_point();
		}
		
		user.get(0).setSave_point(totalPoint);
		 
		classOrder.setClass_order_code(classCode);
		classOrder.setClass_order_id(email);
		
		model.addAttribute("classOrder", classOrder);
		model.addAttribute("user", user.get(0));
		model.addAttribute("store_name", service.getStoreNameforOrder(classOrder.getClass_order_code()));
		model.addAttribute("point", point);
		
		return "payment";
	}
	
	
	// 아임포트 결제 검증
	@RequestMapping(value="/verify_import.do")
	@ResponseBody
	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session,
													@RequestParam(value= "imp_uid") String imp_uid, @RequestParam(value= "merchant_uid") String merchant_uid) throws IamportResponseException, IOException {	
			
		session.setAttribute("imp_uid",imp_uid);
		session.setAttribute("merchant_uid",merchant_uid);
		return api.paymentByImpUid(imp_uid);
	}
	
	@RequestMapping(value="/insert_payment.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertPayment(@ModelAttribute(value="class_order") ClassOrderVO class_order, @RequestParam(value= "class_code") String class_code, HttpSession session,
			@RequestParam(value= "point_new") int point_new, @RequestParam(value= "point_balance") int point_balance) {
		class_order.setMarchant_uid((String) session.getAttribute("merchant_uid"));
		class_order.setImp_uid((String) session.getAttribute("imp_uid"));
		class_order.setClass_order_code(class_code);
		service.insertClassOrder(class_order);
		
		// 사용자 정보 업데이트(전화번호, 이름 없는 유저)
		UserVO user = new UserVO();
		user.setUser_id(class_order.getClass_order_id());
		user.setUser_name(class_order.getClass_order_name());
		user.setUser_phone(class_order.getUser_phone());
		userService.updateUserInfoAtPayment(user);
		
		// 사용한 적립금 차감
		SaveVO point = new SaveVO();
		point.setSave_id(class_order.getClass_order_id());
		point.setSave_point(point_balance);
		userService.updateOrderSave(point); // 기존 항목 모두 false로 수정, 남은 포인트 새로 insert
		
		point.setSave_point(point_new);
		point.setSave_goods_code(class_code);
		userService.insertNewOrderSave(point); // 새로운 적립금 insert
		return "1";
	}
	
	@GetMapping("/payment_complete.do")
	public String paymentComplete(HttpSession session) {
		return "class/payment_complete";
	}
	
	@RequestMapping("/payment_class_cancel.do")
	public String paymentClassCancel(HttpServletRequest req) {
		String marchant_uid = req.getParameter("marchant_uid");
		service.paymentClassCancel(marchant_uid);
		return "redirect:/mypage_order_class.do";
	}
}
