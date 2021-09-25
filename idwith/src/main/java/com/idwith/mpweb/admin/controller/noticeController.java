package com.idwith.mpweb.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.board.AdminEventBoardVO;
import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.admin.board.service.AdminBoardService;
import com.idwith.mpweb.common.PagingVO;

@Controller
public class noticeController {
	@Autowired
	AdminBoardService adminBoardService;
	
	
	@GetMapping("/adminNotice.mdo")
	public String adminNotice() {
		return "adminNotice";
	}
	
	@GetMapping("/adminInsertNotice.mdo")
	public String adminInsertNotice() {
		return "adminInsertNotice";
	}
	
	@GetMapping("/adminNoticeContent.mdo")
	public String adminNoticeContent() {
		return "adminNoticeContent";
	}
	
	//--------------------------------------------
	
	@GetMapping("/userNotice.mdo")
	public String userNotice(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
		 int countEventNotice = adminBoardService.countEventNotice(); // 전체 글 수
		 System.out.println("전체글 수: "+ countEventNotice);
		 System.out.println("카테고리: "+set);
		 
		 if (nowPage == null && cntPerPage == null) { 
			 nowPage = "1";
			 cntPerPage = "10"; 
		 } else { 
			 cntPerPage = "10"; 
		 }
		 
		 System.out.println("nowpage: " + nowPage + "cntPerpage: " + cntPerPage);
		 if(set == null) {
				System.out.println("set 세팅");
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
		System.out.println("공지 등록 처리");
		 System.out.println("content: "+adminEventVO.getUser_event_board_content());
		 adminBoardService.userInsertNotice(adminEventVO);
		
		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent(AdminEventBoardVO adminEventVO, Model model) {
		System.out.println("공지글 상세 보기 처리");
		
		System.out.println("num: "+adminEventVO.getUser_event_board_seq()); 
		model.addAttribute("adminEventVO", adminBoardService.getEventNotice(adminEventVO));
		 
		return "userNoticeContent";
	}
	
	@RequestMapping("/updateEventNotice.mdo")
	public String updateEventNotice(AdminEventBoardVO adminEventVO) {
		System.out.println("유저 공지사항 내용 수정 처리");
		adminBoardService.updateEventNotice(adminEventVO);
		return "redirect:/userNotice.mdo";
	}
	
	@RequestMapping("/deleteEventNotice.mdo")
	public String deleteEventNotice(AdminEventBoardVO adminEventVO) {
		System.out.println("유저 공지글 삭제 처리");
		adminBoardService.deleteEventNotice(adminEventVO);
		return "redirect:/userNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping(value="/qna.mdo")
	public String qnaList(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
		
		int total = adminBoardService.countQnA(); // 전체 글 수 조회 
		System.out.println("전체 qna 수: " + total);
		System.out.println("카테고리: "+set);

		if (nowPage == null && cntPerPage == null) { // 현재 페이지와 조회할 글 개수가 할당되지 않은 경우에는
			nowPage = "1"; // 페이지를 1로 하고
			cntPerPage = "10"; // 글은 10개를 불러오겠다.
		} else {
			cntPerPage = "10"; // 나머지 경우에는 10개씩 불러오겠다.(페이지넘버 할당된 경우)
		}

		System.out.println("nowpage: " + nowPage + ", cntPerpage: " + cntPerPage);
		if(set == null) { // 카테고리가 null인 경우(처음 페이지를 로딩했을 때)
			System.out.println("set 세팅");
			set = "구분"; // 구분으로 하겠다. 여기서는 구분을 카테고리 전체로 가정하고 처리하였다. - 카테고리 구분없이 글을 다 불러오겠다는 의미
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set); // 페이징 생성
		System.out.println(pageVO.getSet());
		model.addAttribute("paging", pageVO); // jsp에서 페이징 처리를 위해 모델에 담아준다. 

		model.addAttribute("adminQnAList", adminBoardService.selectQnA(pageVO)); // selectQnA()를 실행하여 가져온 리스트를 모델에 저장

		return "qna";
	}

	
	@RequestMapping("/answer.mdo")
	public String answer(AdminQnABoardVO adminQnA, Model model) {
		System.out.println("글 상세 보기 처리");
		System.out.println("num: "+adminQnA.getSeq());
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "answer";
	}
	
	@RequestMapping("/updateAnswer.mdo")
	public String updateAnswer(AdminQnABoardVO adminQnA) {
		System.out.println("QnA 답변 등록 처리");
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
		System.out.println("공지 등록 처리");
		System.out.println("content: "+adminQnA.getBoard_content());
		adminBoardService.insertFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/detailFAQ.mdo")
	public String detailFAQ(AdminQnABoardVO adminQnA, Model model) {
		System.out.println("FAQ 상세 보기 처리");
		System.out.println("num: "+adminQnA.getSeq()); 
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "detailFAQ";
	}
	
	@RequestMapping("/updateFAQ.mdo")
	public String updateFAQ(AdminQnABoardVO adminQnA) {
		System.out.println("유저 공지사항 내용 수정 처리");
		adminBoardService.updateFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/deleteFAQ.mdo")
	public String deleteFAQ(AdminQnABoardVO adminQnA) {
		System.out.println("유저 공지글 삭제 처리");
		adminBoardService.deleteFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}

}
