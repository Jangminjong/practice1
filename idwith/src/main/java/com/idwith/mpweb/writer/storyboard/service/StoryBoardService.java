package com.idwith.mpweb.writer.storyboard.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.storyboard.StoryBoardVO;

public interface StoryBoardService {
	
	// 글 등록
	void writerInsertStory(StoryBoardVO storyBoard);
	
	//글 목록 조회
	List<StoryBoardVO> getStoryList(PagingVO pageVO);
	

	// 글 상세보기
	StoryBoardVO storyModify(String storyboard);
	
	// 글 수정
	void updateStoryBoard(StoryBoardVO storyBoard);
	
	// 글 삭제
	void deleteStoryBoard(StoryBoardVO storyBoard);

	//페이징 처리 개수
	int countStoryBoard();


	


}
