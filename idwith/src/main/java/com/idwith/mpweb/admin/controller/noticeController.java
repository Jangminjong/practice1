package com.idwith.mpweb.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.admin.board.service.AdminBoardService;
import com.idwith.mpweb.admin.board.service.AdminNoticeService;
import com.idwith.mpweb.common.Pagination;
import com.idwith.mpweb.common.PagingVO;

@Controller
public class noticeController {
	@Autowired
	AdminBoardService adminBoardService;
	
	@Autowired
	AdminNoticeService adminNoticeService;
	
	@GetMapping("/adminNotice.mdo")
	public String adminNotice() {
		return "adminNotice";
	}
	
	/**관리자 공지사항 글 등록 화면*/
	@GetMapping("/adminInsertNotice.mdo")
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
	
	/**관리자 공지사항 글 목록 요청*/
	@GetMapping("/getAdminNoticeList.mdo")
	public String getAdminNoticeList(AdminNoticeBoardVO adminNotice, Model model,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range) {

		System.out.println("글 목록 요청 처리");
		
		System.out.println("page : " + page);
		System.out.println("range : " + range);
		
		// 전체 게시글 개수
		int listCnt = adminNoticeService.countAdminNotice();
		
		System.out.println("listCnt : " + listCnt);
		
		//페이징 처리
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt);
		
		List<AdminNoticeBoardVO> pageList = adminNoticeService.getNoticeList(pagination);
		
		model.addAttribute("pagination", pagination);
		model.addAttribute("adminNoticeList", pageList);
		
		return "adminNotice";
	}
	
	@RequestMapping(value = "/cnt.mdo", method = RequestMethod.GET)
	public String getPageListCnt() {
		System.out.println(adminNoticeService.countAdminNotice());
		return "adminNotice";
	}
	
	/**관계자 공지사항 글 상세보기 화면*/
	@GetMapping("/adminNoticeContent.mdo")
	public String adminNoticeContent() {
		return "adminNoticeContent";
	}
	
	@GetMapping("/userNotice.mdo")
	public String userNotice(PagingVO pageVO, Model model, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int countNotice = adminBoardService.countNotice();
		System.out.println("������ ��: "+ countNotice);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else {
			cntPerPage = "10";
		}
		System.out.println("nowpage: " + nowPage + "cntPerpage: " + cntPerPage);
		pageVO = new PagingVO(countNotice, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pageVO);
		model.addAttribute("noticeList",adminBoardService.getQnAList(pageVO));
		return "userNotice";
	}
	
	@GetMapping("/userInsertNotice.mdo")
	public String userInsertNotice() {
		return "userInsertNotice";
	}
	
	@RequestMapping("/insertUserNotice.mdo")
	public String insertUserNotice(AdminQnABoardVO adminQnA) {
		System.out.println("���� ��� ó��");
		/*
		 * System.out.println("content: "+adminQnA.getBoard_content());
		 * adminBoardService.userInsertNotice(adminQnA);
		 */
		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent(AdminQnABoardVO adminQnA, Model model) {
		System.out.println("������ �� ���� ó��");
		/*
		 * System.out.println("num: "+adminQnA.getSeq()); model.addAttribute("adminQnA",
		 * adminBoardService.getQnA(adminQnA));
		 */
		return "userNoticeContent";
	}
	
	@RequestMapping("/updateNotice.mdo")
	public String updateNotice(AdminQnABoardVO adminQnA) {
		System.out.println("���� �������� ���� ���� ó��");
		//adminBoardService.updateNotice(adminQnA);
		return "redirect:/userNotice.mdo";
	}
	
	@RequestMapping("/deleteNotice.mdo")
	public String deleteNotice(AdminQnABoardVO adminQnA) {
		System.out.println("���� ������ ���� ó��");
		//adminBoardService.deleteNotice(adminQnA);
		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping(value="/qna.mdo")
	public String qnaList(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
		
		int total = adminBoardService.countQnA();
		System.out.println("��ü qna ��: " + total);
		System.out.println("ī�װ�: "+set);

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else {
			cntPerPage = "10";
		}

		System.out.println("nowpage: " + nowPage + ", cntPerpage: " + cntPerPage);
		if(set == null) {
			System.out.println("set ����");
			set = "����";
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set);
		System.out.println(pageVO.getSet());
		model.addAttribute("paging", pageVO);

		model.addAttribute("adminQnAList", adminBoardService.selectQnA(pageVO));

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
	
	@RequestMapping("/InsertFAQ.mdo")
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
