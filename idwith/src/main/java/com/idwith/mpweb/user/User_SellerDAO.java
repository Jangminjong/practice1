package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.idwith.mpweb.common.PagingVO;


@Repository
public class User_SellerDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Long getSeller(String user_id) {
		System.out.println("DAO �۰� üũ : " + user_id);
		Long result = sqlSessionTemplate.selectOne("SellerCheckDAO.sellerCheck", user_id);
		System.out.println("DB��� �� : " + result);
		
		return result;
	}

	public int getSellerList() {
		return sqlSessionTemplate.selectOne("SellerCheckDAO.countSeller");
	}

	public int getCountGoods(String seller_code) {
		int countInfo = sqlSessionTemplate.selectOne("SellerCheckDAO.countSellerGoods", Integer.parseInt(seller_code));
		
		return countInfo;
	}

	public UserSellerVO getSellerProfile(String seller_code) {
		System.out.println("작가 정보 가져오기 실행");
		UserSellerVO profile = sqlSessionTemplate.selectOne("SellerCheckDAO.getSellerInfo", seller_code);
		
		System.out.println("정보1 : " + profile.getSeller_name());
		System.out.println("정보2 : " + profile.getSeller_profile());
		System.out.println("정보3 : " + profile.getSeller_profile_img());
		
		return profile;
	}

	public List<SellerClassVO> getClassList(String seller_code) {
		List<SellerClassVO> classList = sqlSessionTemplate.selectList("SellerCheckDAO.getClassList", Integer.parseInt(seller_code));
		return classList;
	}

	public List<SellerStoryVO> getSellerStory(String seller_id) {
		List<SellerStoryVO> storyList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerStory", Integer.parseInt(seller_id));
		
		System.out.println("스토리 리스트 : " + storyList);
		return storyList;
	}

	public List<SellerProductReviewVO> getSellerProductReviewList(String seller_code) {
		List<SellerProductReviewVO> reviewList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerProductReviewList", Integer.parseInt(seller_code));
		
		System.out.println("리뷰 리스트 : " + reviewList);
		
		return reviewList;
	}

	public List<GoodsVO> getGoodsList(PagingVO pageVO) {
		List<GoodsVO> goodsList = sqlSessionTemplate.selectList("GoodsDAO.getSellerGoodsList", pageVO);
		return goodsList;
	}

	public List<SellerStoryVO> getStoryList(PagingVO pageVO) {
		List<SellerStoryVO> storyList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerStoryList", pageVO);
		return storyList;
	}

	public List<UserSellerVO> pagingSellerList(PagingVO pageVO) {
		List<UserSellerVO> sellerList = sqlSessionTemplate.selectList("SellerCheckDAO.getSellerList", pageVO);
		return sellerList;
	}
		
	public List<UserSellerVO> getSellerListForIndex() {
		return sqlSessionTemplate.selectList("SellerCheckDAO.getSellerListForIndex");
	}

	public List<SellerStoryVO> getStoryList() {
		return sqlSessionTemplate.selectList("SellerCheckDAO.getStoryListForIndex");
	}
}
