package com.idwith.mpweb.writer.reviewService;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.review.ReviewVO;

public interface ReviewService {
	
	
	List<ReviewVO> getReviweList(PagingVO pageVO);
	
	ReviewVO review(ReviewVO review);
	
	void updateReview(ReviewVO review);
	
	int countReview();

	

	
}
