package com.idwith.mpweb.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.board.PagingVO;
import com.idwith.mpweb.user.board.QnABoardVO;
import com.idwith.mpweb.user.board.service.BoardService;

@Controller
public class UserBoardController {
	@Autowired
	BoardService boardService;
	
	@GetMapping("/alarm.do")
	public String userAlarm() {
		return "alarm";
	}
	
	@GetMapping("/message.do")
	public String userMessage() {
		return "message";
	}
	
	/*
	 * @RequestMapping("/board.do") public String getQnAList(Model model) {
	 * System.out.println("글 목록 조회 처리"); model.addAttribute("qnaList",
	 * boardService.getQnAList()); return "board/board"; }
	 */
	
	@RequestMapping(value="/qnaRightCheck.do", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public String qnaRightCheck(HttpServletRequest req) throws Exception{
		QnABoardVO qnaVO = new QnABoardVO();
		String email = req.getParameter("email");
		System.out.println("email:"+ email);
		qnaVO.setUser_id(email);
		qnaVO.setSeq(Integer.parseInt(req.getParameter("seq")));
		int result = boardService.qnaRightCheck(qnaVO); 
		return Integer.toString(result);
	}

	@GetMapping("/board_write.do")
	public String boardWrite() {
		return "board/board_write_user";
	}
	
	@RequestMapping("/insertQnA.do")
	public String insertQnA(QnABoardVO qnaVO) {
		System.out.println("QnA 등록 처리");
		boardService.insertQnA(qnaVO);
		return "board/board";
	}
	
	@RequestMapping("/board_detail.do")
	public String boardDetail(QnABoardVO qnaVO, Model model) {
		System.out.println("글 상세 보기 처리");
		System.out.println("num: "+qnaVO.getSeq());
		model.addAttribute("qnaVO", boardService.getQnA(qnaVO));
		return "board/board_detail";
	}
	
	@RequestMapping("/updateQnA.do")
	public String updateQnA(QnABoardVO qnaVO) {
		System.out.println("QnA 내용 수정 처리");
		boardService.updateQnA(qnaVO);
		return "board/board";
	}
	
	@RequestMapping("/deleteQnA.do")
	public String deleteQnA(QnABoardVO qnaVO) {
		System.out.println("글 삭제 처리");
		boardService.deleteQnA(qnaVO);
		return "board/board";
	}
	
	// 페이징 처리
	@GetMapping("/board.do")
	public String qnaList(PagingVO pageVO, Model model, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		model.addAttribute("noticeList",boardService.getQnAList());
		int total = boardService.countQnA();
		int countNotice = boardService.countNotice();
		System.out.println("공지글 수: "+ countNotice);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = Integer.toString(20-countNotice);
		} else if(nowPage =="1") {
			cntPerPage = Integer.toString(20-countNotice);
		}else if(Integer.parseInt(nowPage)>1) {
			cntPerPage = "20";
		}
		
		System.out.println("nowpage: "+nowPage+"cntPerpage: "+cntPerPage);
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), countNotice);
		model.addAttribute("paging", pageVO);
		model.addAttribute("qnaList", boardService.selectQnA(pageVO));
		return "board/board";
		
	}
	
}
