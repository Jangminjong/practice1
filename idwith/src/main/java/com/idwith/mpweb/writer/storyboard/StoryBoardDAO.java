package com.idwith.mpweb.writer.storyboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("storyBoardDAO")
public class StoryBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// 스토리 insert
	public void writerInsertStory(StoryBoardVO storyBoard) {
		System.out.println("storyBoard() 기능처리");
		sqlSessionTemplate.insert("StoryBoardDAO.writerInsertStory", storyBoard);

	}

	// 스토리 목록페이지
	public List<StoryBoardVO> getStoryList(PagingVO pageVO) {
		System.out.println("getStoryList() 기능처리");
		return sqlSessionTemplate.selectList("StoryBoardDAO.getStoryList", pageVO);
	}

	// 스토리 페이징 처리
	public int countStoryBoard(int storySeller) {
		System.out.println("countStoryBoard() 기능 처리");
		return sqlSessionTemplate.selectOne("StoryBoardDAO.countStoryBoard", storySeller);
	}

	// 스토리 상세페이지
	public StoryBoardVO storyModify(String storyBoard) {
		System.out.println("storyModify() 기능 처리");
		StoryBoardVO story = sqlSessionTemplate.selectOne("StoryBoardDAO.storyModify", Integer.parseInt(storyBoard));
		System.out.println(story.getStory_tseq());
		System.out.println(story.getStoryBoardTitle());
		System.out.println(story.getStoryBoardContext());
		return story;

	}

	// 스토리 update
	public void updateStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("updateStoryBoard() 기능처리");
		sqlSessionTemplate.update("StoryBoardDAO.updateStoryBoard", storyBoard);

	}

	// 스토리 delete
	public void deleteStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("seq : " + storyBoard.getStory_tseq());
		System.out.println("deleteStoryBoard() 기능처리");
		sqlSessionTemplate.delete("StoryBoardDAO.deleteStoryBoard", storyBoard);

	}

}
