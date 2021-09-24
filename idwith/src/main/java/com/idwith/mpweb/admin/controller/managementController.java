package com.idwith.mpweb.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.EmailDTO;
import com.idwith.mpweb.admin.ProposeVO;
import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.admin.service.EmailService;
import com.idwith.mpweb.admin.service.ProposeService;
import com.idwith.mpweb.admin.service.SellerService;

@Controller
public class managementController {
	@Autowired
	private ProposeService proposeService;
	
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	private EmailService emailService;
	
	@GetMapping("/user.mdo")
	public String adminUser() {
		return "user";
	}
	
	@GetMapping("/userList.mdo")
	public String adminUserList() {
		return "userList";
	}
	
	@GetMapping("/storePropose.mdo")
	public String storePropose(Model model) {
		List<Map<String, String>> watingList = proposeService.getWatingClient();
		model.addAttribute("watingList", watingList);
		return "storePropose";
	}
	
	//작품 입점 관리 메서드
	@RequestMapping(value="/storeProposeState.mdo", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String storeProposeState(HttpServletRequest request) {
		String user_id = request.getParameter("user_id");
		String agree = request.getParameter("agree");
		String disagree = request.getParameter("disagree");
		int result = 0;
		
		if(agree != null) {//입점 승인
			result = proposeService.updateAgree(user_id);
			System.out.println("Controller result : " + result);
		}else if(disagree != null) {//입점 거절
			result = proposeService.updateDisagree(user_id);
			System.out.println("Controller result : " + result);
		}
		
		return Integer.toString(result);
	}
	
	//작가 등록을 위한 메서드
	@RequestMapping(value="/sellerInsert.mdo", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public String sellerInsert(HttpServletRequest request) {
		System.out.println("작가 등록 컨트롤러 실행");
		SellerVO vo = new SellerVO();
		long resultCode = 0;
		
		//작가코드 설정
		try {
	        int random = (int)(Math.random()*900000)+100000;
	        String randomCode = Integer.toString(random);
	        
	        resultCode = Long.parseLong(randomCode);
	        System.out.println("작품 번호 : " + request.getParameter("product_category"));

	        vo.setSeller_code(resultCode);
			vo.setSeller_name(request.getParameter("seller_name"));
			vo.setSeller_sellno(request.getParameter("product_category"));
			vo.setUser_id(request.getParameter("user_id"));
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		sellerService.insertSeller(vo);
		return null;
	}
	
	//이메일 전송을 위한 컨트롤러
	@RequestMapping(value="/sendEmail.mdo", method=RequestMethod.GET)
	@ResponseBody
	public String sendEmail(HttpServletRequest request) {
		System.out.println("이메일 전송 컨트롤러 실행");
		EmailDTO dto = new EmailDTO();
		
		int result = 0;
		String agree = request.getParameter("agree");
		String disagree = request.getParameter("disagree");
		
		if(agree != null) {//입점 승인
			dto.setSenderMail("wnguds1101@gmail.com");
			dto.setReceiveMail(request.getParameter("user_id"));
			dto.setSubject("Idwith 작가 등록 승인");
			result = 1;
		}else if(disagree != null) {//입점 거절
			dto.setSenderMail("wnguds1101@gmail.com");
			dto.setReceiveMail(request.getParameter("user_id"));
			dto.setSubject("Idwith 작가 입점 탈락");
			result = 0;
		}
		
		emailService.sendMail(dto, result);
		
		
		System.out.println("이메일 전송 완료");
		return Integer.toString(1);
	}
	
	@GetMapping("/productPropose.mdo")
	public String productPropose() {
		return "productPropose";
	}
	
	@GetMapping("/classPropose.mdo")
	public String classPropose() {
		return "classPropose";
	}
	
	@GetMapping("/adminList.mdo")
	public String adminList() {
		return "adminList";
	}
	
	@GetMapping("/writerList.mdo")
	public String writerList() {
		return "writerList";
	}
	
	@GetMapping("/productWriter.mdo")
	public String productWriter() {
		return "productWriter";
	}
	
	@GetMapping("/classWriter.mdo")
	public String classWriter() {
		return "classWriter";
	}
	
}
