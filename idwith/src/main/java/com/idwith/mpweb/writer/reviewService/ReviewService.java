package com.idwith.mpweb.writer.reviewService;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.review.ReviewVO;

public interface ReviewService {
	
	
	// 답글 등록
	void reviewInsert(ReviewVO review);
	
	// 리뷰목록
	List<ReviewVO> getReviweList(PagingVO pageVO);
	
	// 리뷰상세
	ReviewVO reviewContent(ReviewVO review);
	
	//리뷰 답변
	void updateReview(ReviewVO review);
	
	// 페이징 처리개수
	int countReview(int reviewSeller);

	

	
}
