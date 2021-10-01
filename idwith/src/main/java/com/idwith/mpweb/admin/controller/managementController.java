package com.idwith.mpweb.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.EmailDTO;
import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.admin.UserListVO;
import com.idwith.mpweb.admin.service.EmailService;
import com.idwith.mpweb.admin.service.ProposeService;
import com.idwith.mpweb.admin.service.SellerService;
import com.idwith.mpweb.admin.service.UserListService;
import com.idwith.mpweb.common.PagingVO;

@Controller
public class managementController {
	@Autowired
	private ProposeService proposeService;
	
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	private EmailService emailService;
	
	@Autowired
	UserListService userListService;
	
	
	// 회원 
	@RequestMapping("/user.mdo")
	public String getUserContent(UserListVO userList, Model model) {
		System.out.println("사용자 상세보기 출력");
		System.out.println("내용 출력 ID : " + userList.getUserId());
		model.addAttribute("userList", userListService.getUserContent(userList));
		return "user";
	}
	
	@GetMapping("/userList.mdo")
	public String adminUserList(PagingVO pagination, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		System.out.println("사용자 리스트 출력");
		
		int userListTotal = userListService.countUserList();
		
		System.out.println("userTotal : " + userListTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		pagination = new PagingVO(userListTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagination);
		model.addAttribute("UserListAll", userListService.getUserList(pagination));
		
		return "userList";
	}
	
	/**검색 리스트 처리*/
	@GetMapping("/searchUser.mdo")
	public String getSearchUser(PagingVO pagination, Model model, UserListVO userList,
			@RequestParam(required = false, value = "nowPage")String nowPage,
			@RequestParam(required = false, value = "cntPerPage")String cntPerPage) {
		
		System.out.println(pagination.getSearchCondition());
		
		int cnt = userListService.getSearchUserCnt(userList.getSearchKeyword());
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		pagination = new PagingVO(cnt, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), pagination.getSearchCondition(), pagination.getSearchKeyword());
		
		List<UserListVO> pagingList = userListService.getSearchUser(pagination);
		
		model.addAttribute("paging", pagination);
		model.addAttribute("UserListAll", pagingList);
		model.addAttribute("cnt", cnt);
		
		return "userList";
	}
	
	// 블락 처리
	@RequestMapping(value="/blockUpdate.mdo", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String blockUpdate(HttpServletRequest request) {
		String userId = request.getParameter("userId");
		int result = 0;
		
		result = userListService.blockUpdate(userId);
		
		return Integer.toString(result);
	}
	
	//복원 처리
	@RequestMapping(value="/blockCancel.mdo", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String blockCancel(HttpServletRequest request) {
		String userId = request.getParameter("userId");
		int result = 0;
		
		result = userListService.blockCancel(userId);
		
		return Integer.toString(result);
	}
	
	// 작가
	@GetMapping("/storePropose.mdo")
	public String storePropose(Model model) {
		List<Map<String, String>> watingList = proposeService.getWatingClient();
		model.addAttribute("watingList", watingList);
		return "storePropose";
	}
	
	//��ǰ ���� ���� �޼���
	@RequestMapping(value="/storeProposeState.mdo", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String storeProposeState(HttpServletRequest request) {
		String user_id = request.getParameter("user_id");
		String agree = request.getParameter("agree");
		String disagree = request.getParameter("disagree");
		int result = 0;
		
		if(agree != null) {//���� ����
			result = proposeService.updateAgree(user_id);
			System.out.println("Controller result : " + result);
		}else if(disagree != null) {//���� ����
			result = proposeService.updateDisagree(user_id);
			System.out.println("Controller result : " + result);
		}
		
		return Integer.toString(result);
	}
	
	//�۰� ����� ���� �޼���
	@RequestMapping(value="/sellerInsert.mdo", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public String sellerInsert(HttpServletRequest request) {
		System.out.println("�۰� ��� ��Ʈ�ѷ� ����");
		SellerVO vo = new SellerVO();
		long resultCode = 0;
		
		//�۰��ڵ� ����
		try {
	        int random = (int)(Math.random()*900000)+100000;
	        String randomCode = Integer.toString(random);
	        
	        resultCode = Long.parseLong(randomCode);
	        System.out.println("��ǰ ��ȣ : " + request.getParameter("product_category"));

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
	
	//�̸��� ������ ���� ��Ʈ�ѷ�
	@RequestMapping(value="/sendEmail.mdo", method=RequestMethod.GET)
	@ResponseBody
	public String sendEmail(HttpServletRequest request) {
		System.out.println("�̸��� ���� ��Ʈ�ѷ� ����");
		EmailDTO dto = new EmailDTO();
		
		int result = 0;
		String agree = request.getParameter("agree");
		String disagree = request.getParameter("disagree");
		
		if(agree != null) {//���� ����
			dto.setSenderMail("wnguds1101@gmail.com");
			dto.setReceiveMail(request.getParameter("user_id"));
			dto.setSubject("Idwith �۰� ��� ����");
			result = 1;
		}else if(disagree != null) {//���� ����
			dto.setSenderMail("wnguds1101@gmail.com");
			dto.setReceiveMail(request.getParameter("user_id"));
			dto.setSubject("Idwith �۰� ���� Ż��");
			result = 0;
		}
		
		emailService.sendMail(dto, result);
		
		
		System.out.println("�̸��� ���� �Ϸ�");
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
