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
	
	/**관리자 공지사항 페이지 출력*/
	@GetMapping("/adminNotice.mdo")
	public String adminNoticeList(PagingVO pagination, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		System.out.println("湲� 紐⑸줉 �슂泥� 泥섎━");
		
		int adminNoticeTotal = adminNoticeService.countAdminNotice();
		
		System.out.println("湲� �닔:"+adminNoticeTotal);
		
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
	
	/**관리자 공지사항 입력 폼*/
	@RequestMapping("/adminInsertNotice.mdo")
	public String adminInsertNotice() {
		return "adminInsertNotice";
	}
	
	/**관리자 공지사항 입력 기능*/
	@RequestMapping("/insertNotice.mdo")
	public String insertNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �벑濡� 泥섎━");
		System.out.println("content : " + adminNotice.getAmdinBoardContent());
		adminNoticeService.insertAdminNotice(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	/**관리자 공지사항 상세보기 기능 */
	@RequestMapping("/detailAdminNotice.mdo")
	public String detailAdminNotice(AdminNoticeBoardVO adminNotice, Model model) {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �긽�꽭蹂닿린 泥섎━ Seq : " + adminNotice.getAdminBoardSeq());
		model.addAttribute("adminNotice", adminNoticeService.getAdminNotice(adminNotice));
		return "detailAdminNotice";
	}
	
	@RequestMapping("/adminNoticeContent.mdo")
	public String adminNoticeContent(AdminNoticeBoardVO adminNotice, Model model) {
		System.out.println("글 상세내용 조회");
		System.out.println("내용 조회 seq : " + adminNotice.getAdminBoardSeq());
		model.addAttribute("adminNoticeCont", adminNoticeService.getAdminNotice(adminNotice));
		return "adminNoticeContent";
	}
	
	/**관리자 공지사항 수정 기능*/
	@RequestMapping("/updateAdminNotice.mdo")
	public String updateAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �닔�젙 泥섎━");
		System.out.println("seq : " + adminNotice.getAdminBoardSeq());
		adminNoticeService.updateAdminNotice(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	/**관리자 공지사항 삭제 기능*/
	@RequestMapping("/deleteAdminNotice.mdo")
	public String deleteAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �궘�젣 泥섎━");
		adminNoticeService.deleteAdminNoitce(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping("/userNotice.mdo")
	public String userNotice(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
		 int countEventNotice = adminBoardService.countEventNotice(); 
		 
		 if (nowPage == null && cntPerPage == null) { 
			 nowPage = "1";
			 cntPerPage = "10"; 
		 } else { 
			 cntPerPage = "10"; 
		 }
		 
		 System.out.println("nowpage: " + nowPage + "cntPerpage: " + cntPerPage);
		 if(set == null) {
				set = "구분";
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
		 System.out.println("content: "+adminEventVO.getUser_event_board_content());
		 adminBoardService.userInsertNotice(adminEventVO);

		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent(AdminEventBoardVO adminEventVO, Model model) {
		
		System.out.println("num: "+adminEventVO.getUser_event_board_seq()); 
		model.addAttribute("adminEventVO", adminBoardService.getEventNotice(adminEventVO));
		 
		return "userNoticeContent";
	}
	
	@RequestMapping("/updateEventNotice.mdo")
	public String updateEventNotice(AdminEventBoardVO adminEventVO) {
		adminBoardService.updateEventNotice(adminEventVO);
		return "redirect:/userNotice.mdo";
	}
	
	@RequestMapping("/deleteEventNotice.mdo")
	public String deleteEventNotice(AdminEventBoardVO adminEventVO) {
		adminBoardService.deleteEventNotice(adminEventVO);

		return "redirect:/userNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping(value="/qna.mdo")
	public String qnaList(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
		int total = adminBoardService.countQnA(); 
		System.out.println("占쏙옙체 qna 占쏙옙: " + total);
		System.out.println("카占쌓곤옙: "+set);

		if (nowPage == null && cntPerPage == null) { 
			nowPage = "1"; 
			cntPerPage = "10"; 
		} else {
			cntPerPage = "10";
		}

		System.out.println("nowpage: " + nowPage + ", cntPerpage: " + cntPerPage);
		if(set == null) { 
			System.out.println("set 占쏙옙占쏙옙");
			set = "구분"; 
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set); 
		System.out.println(pageVO.getSet());
		model.addAttribute("paging", pageVO); 

		model.addAttribute("adminQnAList", adminBoardService.selectQnA(pageVO)); 

		return "qna";
	}

	
	@RequestMapping("/answer.mdo")
	public String answer(AdminQnABoardVO adminQnA, Model model) {
		
		System.out.println("num: "+adminQnA.getSeq());
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "answer";
	}
	
	@RequestMapping("/updateAnswer.mdo")
	public String updateAnswer(AdminQnABoardVO adminQnA) {
		
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
		
		System.out.println("content: "+adminQnA.getBoard_content());
		adminBoardService.insertFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/detailFAQ.mdo")
	public String detailFAQ(AdminQnABoardVO adminQnA, Model model) {
		
		System.out.println("num: "+adminQnA.getSeq()); 
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "detailFAQ";
	}
	
	@RequestMapping("/updateFAQ.mdo")
	public String updateFAQ(AdminQnABoardVO adminQnA) {
		
		adminBoardService.updateFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/deleteFAQ.mdo")
	public String deleteFAQ(AdminQnABoardVO adminQnA) {
		
		adminBoardService.deleteFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}

}
