package com.idwith.mpweb.writer.reviewService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.review.ReviewDAO;
import com.idwith.mpweb.writer.review.ReviewVO;

@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	
	@Override
	public void reviewInsert(ReviewVO review) {
		System.out.println("답글처리 service");
		reviewDAO.reviewInsert(review);		
	}

	// 상세보기
	@Override
	public ReviewVO reviewContent(ReviewVO review) {
		System.out.println("리뷰 상세보기 service");
		return reviewDAO.reviewContent(review);
	}

	@Override
	public void updateReview(ReviewVO review) {
		System.out.println("리뷰 답글처리 service");
		System.out.println("comment : " + review.getGoods_review_comment() );
		reviewDAO.updateReview(review);
	}

	@Override
	public int countReview(int reviewSeller) {
		return reviewDAO.countReview(reviewSeller);
	}

	@Override
	public List<ReviewVO> getReviweList(PagingVO pageVO) {
		System.out.println("리뷰 목록처리 service");
		return reviewDAO.getReviewList(pageVO);
	}


	


}
