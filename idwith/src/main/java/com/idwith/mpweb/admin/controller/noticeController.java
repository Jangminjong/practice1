package com.idwith.mpweb.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.admin.board.service.AdminBoardService;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.board.QnABoardVO;
import com.idwith.mpweb.user.board.service.UserBoardService;

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
	
	@GetMapping("/userNotice.mdo")
	public String userNotice(PagingVO pageVO, Model model, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int countNotice = adminBoardService.countNotice();
		System.out.println("공지글 수: "+ countNotice);
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
		System.out.println("공지 등록 처리");
		System.out.println("content: "+adminQnA.getBoard_content());
		adminBoardService.userInsertNotice(adminQnA);
		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent(AdminQnABoardVO adminQnA, Model model) {
		System.out.println("공지글 상세 보기 처리");
		System.out.println("num: "+adminQnA.getSeq());
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "userNoticeContent";
	}
	
	@RequestMapping("/updateNotice.mdo")
	public String updateNotice(AdminQnABoardVO adminQnA) {
		System.out.println("유저 공지사항 내용 수정 처리");
		adminBoardService.updateNotice(adminQnA);
		return "redirect:/userNotice.mdo";
	}
	
	@RequestMapping("/deleteNotice.mdo")
	public String deleteNotice(AdminQnABoardVO adminQnA) {
		System.out.println("유저 공지글 삭제 처리");
		adminBoardService.deleteNotice(adminQnA);
		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping(value="/qna.mdo")
	public String qnaList(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
		
		int total = adminBoardService.countQnA();
		System.out.println("전체 qna 수: " + total);
		System.out.println("카테고리: "+set);

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else {
			cntPerPage = "10";
		}

		System.out.println("nowpage: " + nowPage + ", cntPerpage: " + cntPerPage);
		if(set == null) {
			System.out.println("set 세팅");
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

}
