package com.idwith.mpweb.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.admin.board.AdminEventBoardVO;

import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.admin.board.service.AdminBoardService;
import com.idwith.mpweb.admin.board.service.AdminNoticeService;
import com.idwith.mpweb.common.PagingVO;


@Controller
public class noticeController {
	@Autowired
	AdminBoardService adminBoardService;
	
	@Autowired
	AdminNoticeService adminNoticeService;
	
	/**관리자 공지사항 글 목록 요청*/

	@GetMapping("/adminNotice.mdo")
	public String adminNoticeList(PagingVO pagination, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		System.out.println("글 목록 요청 처리");
		
		int adminNoticeTotal = adminNoticeService.countAdminNotice();
		
		System.out.println("글 수:"+adminNoticeTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pagination = new PagingVO(adminNoticeTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagination);
		model.addAttribute("NoticeViewAll", adminNoticeService.getNoticeList(pagination));
		
		return "adminNotice";
	}
	
	/**관리자 공지사항 글 등록 화면*/
	@RequestMapping("/adminInsertNotice.mdo")
	public String adminInsertNotice() {
		return "adminInsertNotice";
	}
	
	/**관리자 공지사항 글 등록 기능*/
	@RequestMapping("/insertNotice.mdo")
	public String insertNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("관리자 공지사항 등록 처리");
		System.out.println("content : " + adminNotice.getAmdinBoardContent());
		adminNoticeService.insertAdminNotice(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	/**관계자 공지사항 글 상세보기 */
	@RequestMapping("/detailAdminNotice.mdo")
	public String detailAdminNotice(AdminNoticeBoardVO adminNotice, Model model) {
		System.out.println("관리자 공지사항 상세보기 처리 Seq : " + adminNotice.getAdminBoardSeq());
		model.addAttribute("adminNotice", adminNoticeService.getAdminNotice(adminNotice));
		return "detailAdminNotice";
	}
	
	/**관계자 공지사항 글 수정*/
	@RequestMapping("/updateAdminNotice.mdo")
	public String updateAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("관리자 공지사항 수정 처리");
		System.out.println("seq : " + adminNotice.getAdminBoardSeq());
		adminNoticeService.updateAdminNotice(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	/**관계자 공지사항 글 삭제*/
	@RequestMapping("/deleteAdminNotice.mdo")
	public String deleteAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("관리자 공지사항 삭제 처리");
		adminNoticeService.deleteAdminNoitce(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping("/userNotice.mdo")
	public String userNotice(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value="set", required=false) String set) {
		 int countEventNotice = adminBoardService.countEventNotice(); // ��ü �� ��
		 System.out.println("��ü�� ��: "+ countEventNotice);
		 System.out.println("ī�װ�: "+set);
		 
		 if (nowPage == null && cntPerPage == null) { 
			 nowPage = "1";
			 cntPerPage = "10"; 
		 } else { 
			 cntPerPage = "10"; 
		 }
		 
		 System.out.println("nowpage: " + nowPage + "cntPerpage: " + cntPerPage);
		 if(set == null) {
				System.out.println("set ����");
				set = "����";
		 }
		 
		 pageVO = new PagingVO(countEventNotice, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set); 
		 model.addAttribute("paging", pageVO);
		 model.addAttribute("noticeList",adminBoardService.getEventNoticeList(pageVO));
		return "userNotice";
	}
	
	@GetMapping("/userInsertNotice.mdo")
	public String userInsertNotice() {
		return "userInsertNotice";
	}
	
	@RequestMapping("/insertUserNotice.mdo")
	public String insertUserNotice(AdminEventBoardVO adminEventVO) {
		System.out.println("���� ��� ó��");
		 System.out.println("content: "+adminEventVO.getUser_event_board_content());
		 adminBoardService.userInsertNotice(adminEventVO);

		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent(AdminEventBoardVO adminEventVO, Model model) {
		System.out.println("������ �� ���� ó��");
		
		System.out.println("num: "+adminEventVO.getUser_event_board_seq()); 
		model.addAttribute("adminEventVO", adminBoardService.getEventNotice(adminEventVO));
		 
		return "userNoticeContent";
	}
	
	@RequestMapping("/updateEventNotice.mdo")
	public String updateEventNotice(AdminEventBoardVO adminEventVO) {
		System.out.println("���� �������� ���� ���� ó��");
		adminBoardService.updateEventNotice(adminEventVO);
		return "redirect:/userNotice.mdo";
	}
	
	@RequestMapping("/deleteEventNotice.mdo")
	public String deleteEventNotice(AdminEventBoardVO adminEventVO) {
		System.out.println("���� ������ ���� ó��");
		adminBoardService.deleteEventNotice(adminEventVO);

		return "redirect:/userNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping(value="/qna.mdo")
	public String qnaList(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, 
			@RequestParam(value="set", required=false) String set) {
		int total = adminBoardService.countQnA(); // ��ü �� �� ��ȸ 
		System.out.println("��ü qna ��: " + total);
		System.out.println("ī�װ�: "+set);

		if (nowPage == null && cntPerPage == null) { // ���� �������� ��ȸ�� �� ������ �Ҵ���� ���� ��쿡��
			nowPage = "1"; // �������� 1�� �ϰ�
			cntPerPage = "10"; // ���� 10���� �ҷ����ڴ�.
		} else {
			cntPerPage = "10"; // ������ ��쿡�� 10���� �ҷ����ڴ�.(�������ѹ� �Ҵ�� ���)
		}

		System.out.println("nowpage: " + nowPage + ", cntPerpage: " + cntPerPage);
		if(set == null) { // ī�װ��� null�� ���(ó�� �������� �ε����� ��)
			System.out.println("set ����");
			set = "����"; // �������� �ϰڴ�. ���⼭�� ������ ī�װ� ��ü�� �����ϰ� ó���Ͽ���. - ī�װ� ���о��� ���� �� �ҷ����ڴٴ� �ǹ�
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set); // ����¡ ����
		System.out.println(pageVO.getSet());
		model.addAttribute("paging", pageVO); // jsp���� ����¡ ó���� ���� �𵨿� ����ش�. 

		model.addAttribute("adminQnAList", adminBoardService.selectQnA(pageVO)); // selectQnA()�� �����Ͽ� ������ ����Ʈ�� �𵨿� ����

		return "qna";
	}

	
	@RequestMapping("/answer.mdo")
	public String answer(AdminQnABoardVO adminQnA, Model model) {
		System.out.println("�� �� ���� ó��");
		System.out.println("num: "+adminQnA.getSeq());
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "answer";
	}
	
	@RequestMapping("/updateAnswer.mdo")
	public String updateAnswer(AdminQnABoardVO adminQnA) {
		System.out.println("QnA �亯 ��� ó��");
		System.out.println("seq: "+ adminQnA.getSeq());
		System.out.println("answer: "+ adminQnA.getBoard_answer());
		adminBoardService.updateAnswer(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/userInsertFAQ.mdo")
	public String userInsertFAQ() {
		return "userInsertFAQ";
	}
	
	@RequestMapping("/insertFAQ.mdo")
	public String insertFAQ(AdminQnABoardVO adminQnA) {
		System.out.println("���� ��� ó��");
		System.out.println("content: "+adminQnA.getBoard_content());
		adminBoardService.insertFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/detailFAQ.mdo")
	public String detailFAQ(AdminQnABoardVO adminQnA, Model model) {
		System.out.println("FAQ �� ���� ó��");
		System.out.println("num: "+adminQnA.getSeq()); 
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "detailFAQ";
	}
	
	@RequestMapping("/updateFAQ.mdo")
	public String updateFAQ(AdminQnABoardVO adminQnA) {
		System.out.println("���� �������� ���� ���� ó��");
		adminBoardService.updateFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/deleteFAQ.mdo")
	public String deleteFAQ(AdminQnABoardVO adminQnA) {
		System.out.println("���� ������ ���� ó��");
		adminBoardService.deleteFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}

}
