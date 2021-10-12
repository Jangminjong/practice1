package com.idwith.mpweb.user.controller;

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
	ClassService service;
	
	@Autowired
	UserService userService;
	
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
