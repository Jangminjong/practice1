package com.idwith.mpweb.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.EmailDTO;
import com.idwith.mpweb.user.GoodsOrderDetailVO;
import com.idwith.mpweb.user.GoodsReviewVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.EmailUpdateService;
import com.idwith.mpweb.user.service.MypageService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Controller
public class MyPageController {
	@Autowired
	private MypageService myPageService;

	@Autowired
	private EmailUpdateService emailUpdateService;

	@RequestMapping(value = "/mypage.do", method=RequestMethod.GET)
	public String mypageMain(Model model,HttpSession session) {
		String user_id = (String) session.getAttribute("email");

		System.out.println("mypage ��Ʈ�ѷ� ����");
		System.out.println("���� �� : " +user_id);

		List<Map<String, String>> user = myPageService.getUser(user_id);

		String id = user.get(0).get("user_id");
		String user_phone = user.get(0).get("user_phone");
		String user_name = user.get(0).get("user_name");
		String user_grade = user.get(0).get("user_grade");
		String user_birth = user.get(0).get("user_birth");

		session.setAttribute("user_id", id);
		session.setAttribute("user_phone", user_phone);
		session.setAttribute("user_name", user_name);
		session.setAttribute("user_grade", user_grade);
		session.setAttribute("user_birth", user_birth);

		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/mypage_address.do", method={RequestMethod.GET, RequestMethod.POST})
	public String mypageAddress() {
		return "mypage/mypage_adr";
	}

	@GetMapping("/mypage_coupon.do")
	public String mypageCoupon() {
		return "mypage/mypage_coupon";
	}

	@GetMapping("/mypage_point.do")
	public String mypagePoint() {
		return "mypage/mypage_point";
	}

	@GetMapping("/mypage_follow.do")
	public String mypageFollow() {
		return "mypage/mypage_follow";
	}

	@GetMapping("/mypage_info.do")
	public String mypageInfo() {
		return "mypage/mypage_info";
	}

	@GetMapping("/mypage_interest_class.do")
	public String mypageInterestClass() {
		return "mypage/mypage_interest_class";
	}

	@GetMapping("/mypage_interest_goods.do")
	public String mypageInterestGoods() {
		return "mypage/mypage_interest_goods";
	}

	@GetMapping("/mypage_level.do")
	public String mypageLevel() {
		return "mypage/mypage_level";
	}

	@GetMapping("/mypage_order_return.do")
	public String mypageOrderReturn() {
		return "mypage/mypage_order_return";
	}

	@GetMapping("/mypage_order_goods.do")
	public String mypageOrderGoods() {
		return "mypage/mypage_order_goods";
	}

	@GetMapping("/mypage_order_class.do")
	public String mypageOrderClass() {
		return "mypage/mypage_order_class";
	}


	@GetMapping("/mypage_recent.do")
	public String mypageRecent() {
		return "mypage/mypage_recent";
	}

	@GetMapping("/mypage_review_after.do")
	public String mypageReviewAfter(HttpSession session, Model model) {
		String goods_review_id = (String) session.getAttribute("email");
		List<GoodsReviewVO> reviewAfterList = myPageService.getReviewAfterList(goods_review_id);
		model.addAttribute("reviewAfterList", reviewAfterList);
		return "mypage/mypage_review_after";
	}

	@RequestMapping("/mypage_review_before.do")
	public String mypageReviewBefore(HttpSession session, Model model) {
		String order_id = (String) session.getAttribute("email");
		List<GoodsOrderDetailVO> reviewBeforeList = myPageService.getReviewBeforeList(order_id);
		model.addAttribute("reviewBeforeList", reviewBeforeList);
		return "mypage/mypage_review_before";
	}
	
	@GetMapping("/write_review.do")
	public String writeReview(Model model, @RequestParam(value="order_detail_code", required=false) String order_detail_code) {
		GoodsOrderDetailVO orderVO = myPageService.getReviewBefore(order_detail_code);
		model.addAttribute("orderVO", orderVO);
		return "mypage/write_review";
	}
	
	@PostMapping("/write_review.do")
	public String insertReview(GoodsReviewVO reviewVO, 	GoodsOrderDetailVO orderVO) {
		myPageService.insertReview(reviewVO, orderVO);
		return "redirect:/mypage_review_after.do";
	}
	
	@RequestMapping("/delete_review.do")
	public String deleteReview(HttpServletRequest request) {
		String goods_review_seq = request.getParameter("goods_review_seq");
		myPageService.deleteReview(goods_review_seq);
		return "redirect:/mypage_review_after.do";
	}


	//�̸��� ������ ���� ��Ʈ�ѷ�
	@RequestMapping(value="/sendEmailUpdate.do", method=RequestMethod.GET)
	@ResponseBody
	public String sendUpdateEmail(HttpServletRequest request) {
		System.out.println("�̸��� ���� ��Ʈ�ѷ� ����");
		EmailDTO dto = new EmailDTO();


		dto.setSenderMail("wnguds1101@gmail.com");
		dto.setReceiveMail(request.getParameter("user_id"));
		dto.setSubject("Idwith �̸��� ����");

		emailUpdateService.sendMail(dto);


		System.out.println("�̸��� ���� �Ϸ�");
		return Integer.toString(1);
	}

	//�̸��� ���� ����Ȯ�� �Ϸ�â
	@GetMapping("/emailUpdateSuccess.do")
	public String emailUpdateSuccess() {
		return "emailUpdateSuccess";
	}
	
	//�̸��� ���� ��Ʈ�ѷ�
	@RequestMapping(value="/updateEmail.do", method=RequestMethod.GET)
	@ResponseBody
	public String updateEmail(HttpServletRequest request, HttpSession session) {
		System.out.println("�̸��� ���� ��Ʈ�ѷ� ����");
		String user_id = (String) session.getAttribute("user_id");
		String update_email = request.getParameter("update_email");
		
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_update_email(update_email);
		
		System.out.println("��Ʈ�ѷ� ��ȣ : " + update_email);
		
		myPageService.updateEmail(vo);
		
		session.setAttribute("user_id", user_id);
		return null;
	}

	//��ȭ��ȣ ������ ���� ��Ʈ�ѷ�
	@RequestMapping(value="/updatePhone.do", method=RequestMethod.GET)
	@ResponseBody
	public String updatePhone(HttpServletRequest request, HttpSession session) {
		System.out.println("��ȭ��ȣ ���� ���� ��Ʈ�ѷ� ����");
		String user_id = (String) session.getAttribute("user_id");
		String user_phone = request.getParameter("user_phone");
		
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_phone(user_phone);
		
		System.out.println("��Ʈ�ѷ� ��ȣ : " + user_phone);
		
		myPageService.updatePhone(vo);
		
		session.setAttribute("user_phone", user_phone);
		return null;
	}
	
	//���� ��ü ������ ���� ��Ʈ�ѷ�
	@RequestMapping(value="/update_user_info.do", method=RequestMethod.GET)
	@ResponseBody
	public String updateBirth(HttpServletRequest request, HttpSession session) {
		System.out.println("�������� ���� ��Ʈ�ѷ� ����");
		String user_id = (String) session.getAttribute("user_id");
		String user_birth = request.getParameter("user_birth");
		
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_birth(user_birth);
		
		System.out.println("��Ʈ�ѷ� ��ȣ : " + user_birth);
		
		myPageService.updateUserInfo(vo);
		
		session.setAttribute("user_birth", user_birth);
		return null;
	}
	
	//���� �����(�ּ�) ������ ���� ��Ʈ�ѷ�
		@RequestMapping(value="/updateAddress.do", method=RequestMethod.POST)
		@ResponseBody
		public String updateAddress(HttpServletRequest request, HttpSession session) {
			System.out.println("�ּ� ���� ��Ʈ�ѷ� ����");
			String user_id = (String) session.getAttribute("user_id");
			String user_address_order = request.getParameter("user_address_order");
			String user_name = request.getParameter("user_name");
			String user_phone = request.getParameter("user_phone");
			String user_zipcode = request.getParameter("user_zipcode");
			String user_address1 = request.getParameter("user_address1");
			String user_address2 = request.getParameter("user_address2");
			int order = Integer.parseInt(user_address_order);
			
			UserVO vo = new UserVO();
			vo.setUser_id(user_id);
			vo.setUser_name(user_name);
			vo.setUser_phone(user_phone);
			vo.setUser_zipcode(user_zipcode);
			vo.setUser_address1(user_address1);
			vo.setUser_address2(user_address2);
			vo.setUser_order(order);
			
			System.out.println("�ּ��� ���� : " + order);
			System.out.println("�̸� : " + user_name);
			System.out.println("��ȭ : " + user_phone);
			System.out.println("���� : " + user_zipcode);
			System.out.println("�ּ�1 : " + user_address1);
			System.out.println("�ּ�2 : " + user_address2);
			
			
			myPageService.updateAddress(vo);
			
			session.setAttribute("user_phone", user_phone);
			session.setAttribute("user_zipcode", user_zipcode);
			session.setAttribute("user_address1", user_address1);
			session.setAttribute("user_address2", user_address2);
			return Integer.toString(1);
		}
}
