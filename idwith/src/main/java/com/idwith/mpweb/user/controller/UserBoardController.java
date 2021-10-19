package com.idwith.mpweb.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.board.EventBoardVO;
import com.idwith.mpweb.user.board.QnABoardVO;
import com.idwith.mpweb.user.board.UserMessageVO;
import com.idwith.mpweb.user.board.service.UserBoardService;

@Controller
public class UserBoardController {
	@Autowired
	UserBoardService boardService;
	
	@GetMapping("/alarm.do")
	public String userAlarm(Model model) {
		model.addAttribute("newEvent", boardService.getNewEvent());  // 중요이벤트(최신) 출력
		model.addAttribute("event", boardService.getEventList()); // 이벤트 리스트 출력
		return "board/alarm";
	}
	
	@RequestMapping("/dueDateCheck.do")
	@ResponseBody
	public String dueDateCheck(HttpServletRequest req) {
		return boardService.dueDateCheck(req.getParameter("seq"));
	}
	
	@RequestMapping("/alarmList.do")
	@ResponseBody
	public List<EventBoardVO> alarmList(HttpServletRequest req, HttpSession session) {
		List<EventBoardVO> list = boardService.getEventList();
		session.setAttribute("event", list);
		return list;
	}
	
	
	// 메시지 -----------------------------------------------------------------
	// 메시지 드롭다운에 세팅
	@RequestMapping("/messageList.do")
	@ResponseBody
	public List<UserMessageVO>  messageList(HttpServletRequest req, HttpSession session) {
		List<UserMessageVO> list = boardService.getMessageList(req.getParameter("email"));
		session.setAttribute("msgList", list);
		return list;
	}
	
	@GetMapping("/message.do")
	public String userMessage(HttpSession session, Model model) {
		String email = session.getAttribute("email").toString();
		model.addAttribute("msgList", boardService.getMessageList(email));
		return "board/message";
	}
	
	@RequestMapping("/message_choice.do")
	public String userMessageChoice(HttpSession session, Model model) {
		String email = (String) session.getAttribute("email");
		List<SellerVO> followSellerList = boardService.getFollowSellerList(email);
		model.addAttribute("followSellerList", followSellerList);
		return "board/message_choice";
	}
	
	@RequestMapping(value="/message_detail.do", produces="application/text; charset=utf8")
	public String userMessageDetail(HttpSession session, HttpServletRequest req, UserMessageVO msgVO, Model model) {
		boardService.updateReadState(req.getParameter("msgd_id"));
		String email = session.getAttribute("email").toString();
		model.addAttribute("msgd_id", req.getParameter("msgd_id"));
		msgVO.setMsg_id(email);
		msgVO.setMsgd_id(req.getParameter("msgd_id"));
		
		model.addAttribute("msgContextList", boardService.getMsgContextList(msgVO));
		
		return "board/message_detail";
	}
	
	@RequestMapping("/insertMessage.do")
	public String insertMessage(UserMessageVO msgVO) {
		String[] msgd_id = msgVO.getMsgd_id().split(",");
		if(msgd_id[0].equals(null)){
			msgVO.setMsgd_id(msgVO.getMsgd_id());
		}else {
			msgVO.setMsgd_id(msgd_id[0]);
		}
		// 최신 상태값 변경
		boardService.updateNewState(msgVO);
		
		boardService.insertMessage(msgVO);
		return "redirect:/message.do";
	}
	
	// 1:1 문의 ------------------------------------------------------------------------------------
	
	@RequestMapping(value="/qnaRightCheck.do", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public String qnaRightCheck(HttpServletRequest req) throws Exception{
		QnABoardVO qnaVO = new QnABoardVO();
		String email = req.getParameter("email");
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
		boardService.insertQnA(qnaVO);
		return "redirect:/board.do";
	}
	
	@RequestMapping("/board_detail.do")
	public String boardDetail(QnABoardVO qnaVO, Model model){
		boardService.addHit(qnaVO);
		model.addAttribute("qnaVO", boardService.getQnA(qnaVO));
		return "board/board_detail";
	}
	
	@RequestMapping("/updateQnA.do")
	public String updateQnA(QnABoardVO qnaVO) {
		boardService.updateQnA(qnaVO);
		return "redirect:/board.do";
	}
	
	
	@RequestMapping("/deleteQnA.do")
	public String deleteQnA(QnABoardVO qnaVO) {
		boardService.deleteQnA(qnaVO);
		return "redirect:/board.do";
	}
	
	
	@GetMapping("/board.do")
	public String qnaList(PagingVO pageVO, Model model, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		model.addAttribute("noticeList",boardService.getQnAList());
		int total = boardService.countQnA();
		int countNotice = boardService.countNotice();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = Integer.toString(20-countNotice);
		} else if(nowPage =="1") {
			cntPerPage = Integer.toString(20-countNotice);
		}else if(Integer.parseInt(nowPage)>1) {
			cntPerPage = "20";
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), countNotice);
		model.addAttribute("paging", pageVO);
		model.addAttribute("qnaList", boardService.selectQnA(pageVO));
		return "board/board";
		
	}
	
	// 공지사항 ------------------------------------------------------------------------------------------
	
	@GetMapping("/eventNoticeBoard.do")
	public String noticeEventList(PagingVO pageVO, Model model, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int total = boardService.countEventNotice();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "19";
		}else{
			cntPerPage = "20";
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pageVO);
		model.addAttribute("noticeEventList",boardService.getEventNoticeList(pageVO));
		return "board/event_board";
		
	}
	
	@RequestMapping("/eventNotice_detail.do")
	public String eventNoticeDetail(EventBoardVO eventVO, Model model){
		boardService.addCnt(eventVO);
		model.addAttribute("eventVO", boardService.getEventNotice(eventVO));
		return "board/event_detail";
	}
	
	@GetMapping("/enterWriterNotice.do")
	public String enterWriterNotice() {
		return "board/enterWriterNotice";
	}
	
}
