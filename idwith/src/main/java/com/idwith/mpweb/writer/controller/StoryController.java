package com.idwith.mpweb.writer.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.storyboard.StoryBoardVO;
import com.idwith.mpweb.writer.storyboard.service.StoryBoardService;

@Controller
public class StoryController {
	
	@Autowired
	StoryBoardService storyBoardService;
	
	// 스토리 글 목록 요청
	@GetMapping("/writerStory.wdo")
	public String wirterStory(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage,
			@RequestParam(value = "set", required=false) String set) {
		System.out.println("글 목록 요청 처리");
		
		int storyBoardTotal = storyBoardService.countStoryBoard();
		
		System.out.println("글 수 : " + storyBoardTotal);
		
		if(nowPage == null && cntPerPage == null ) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(storyBoardTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pageVO);
		model.addAttribute("StoryBoardViewAll", storyBoardService.getStoryList(pageVO));
		
		return "writerStory"; 
	}
	
	// 글 등록 화면 
	@RequestMapping("/insertStory.wdo")
	public String insertstory() {
		return "insertStory";		
	}	
	
	// 스토리 글 등록 기능
	@RequestMapping("/writerInsertStory.wdo")
	public String writerInsertStory(StoryBoardVO storyBoard) {
		System.out.println("작가 이야기 등록 처리");
		System.out.println("context : " + storyBoard.getStoryBoardContext());
		storyBoardService.writerInsertStory(storyBoard);
		return "writerStory";
	}
	
	// 스토리 상세보기
	@RequestMapping(value="/storyModify.wdo", method=RequestMethod.GET)
	public String storyModify(@RequestParam("storyBoardSeq") String storyBoard, Model model) {
		System.out.println("작가 이야기 상세보기 처리 Seq : " + storyBoard);
		model.addAttribute("storyBoard", storyBoardService.storyModify(storyBoard));
		return "storyModify";
	}	
	
	// 스토리 수정
	@RequestMapping("/updateStoryBoard.wdo")
	public String updateStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("작가 이야기 수정처리");
		System.out.println("seq : " + storyBoard.getStory_tseq());
		System.out.println("시간 : " + storyBoard.getStoryBoardRegDate());
		storyBoardService.updateStoryBoard(storyBoard);
		return "redirect:/writerStory.wdo";		
	}
		
	// 스토리 삭제
	@RequestMapping("/deleteStoryBoard.wdo")
	public String deleteStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("작가 이야기 삭제처리");
		storyBoardService.deleteStoryBoard(storyBoard);
		return "redirect:/writerStory.wdo";		
	}

}
