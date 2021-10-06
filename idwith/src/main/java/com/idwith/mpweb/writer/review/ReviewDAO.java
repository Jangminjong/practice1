package com.idwith.mpweb.writer.review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("reviewDAO")
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 리뷰 목록 페이지
	public List<ReviewVO> getReviewList(PagingVO pageVO){
		System.out.println("getReviewList() 기능처리");
		return sqlSessionTemplate.selectList("ReviewDAO.getReviewList", pageVO);
	}
	
	// 리뷰 페이징처리
	public int countReview() {
		System.out.println("countReview() 기능처리");
		return sqlSessionTemplate.selectOne("ReviewDAO.countReview");
	}
	
	// 리뷰 상세
	public ReviewVO reviewContent(ReviewVO review) {
		System.out.println("reviewContent() 기능처리");
		ReviewVO reviews = sqlSessionTemplate.selectOne("ReviewDAO.reviewContent");
		System.out.println(review.getGoods_review_id());
		System.out.println(review.getGoods_review_seq());
		return reviews;
	}
	
	// 리뷰 답변
	public void updateReview(ReviewVO review) {
		System.out.println("updateReview() 기능처리");
		sqlSessionTemplate.update("ReviewDAO.updateReview", review);
	}

}
