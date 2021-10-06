package com.idwith.mpweb.writer.storyboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.storyboard.StoryBoardDAO;
import com.idwith.mpweb.writer.storyboard.StoryBoardListVO;
import com.idwith.mpweb.writer.storyboard.StoryBoardVO;

@Service("StoryBoardService")
public class StoryBoardServiceImpl implements StoryBoardService {

	@Autowired
	private StoryBoardDAO storyBoardDAO;
	
	@Override
	public void writerInsertStory(StoryBoardVO storyBoard) {
		System.out.println("글 등록 처리 service");
		System.out.println("title : " + storyBoard.getStoryBoardTitle());
		System.out.println("context : " + storyBoard.getStoryBoardContext());
		storyBoardDAO.writerInsertStory(storyBoard);
	}

	@Override
	public List<StoryBoardVO> getStoryList(PagingVO pageVO) {
		System.out.println("글 목록 처리 service");
		return storyBoardDAO.getStoryList(pageVO);
	}

	
	// 글 상세보기
	@Override
	public StoryBoardVO storyModify(String storyboard) {
		System.out.println("글 상세보기 처리 service");
		return storyBoardDAO.storyModify(storyboard);
	}

	// 글 수정
	@Override
	public void updateStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("글 수정 처리 service");
		System.out.println("context : " + storyBoard.getStoryBoardContext());
		storyBoardDAO.updateStoryBoard(storyBoard);
		
	}

	// 글 삭제
	@Override
	public void deleteStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("글 삭제 처리 service");
		storyBoardDAO.deleteStoryBoard(storyBoard);
		
	}
	
	@Override
	public int countStoryBoard() {
		return storyBoardDAO.countStoryBoard();
	}


	
}
