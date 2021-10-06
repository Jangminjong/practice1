package com.idwith.mpweb.common;

import java.util.List;

public class PagingVO {
	// 현재페이지, 시작페이지, 끝페이지, 게시글 총 갯수, 페이지당 글 갯수, 마지막페이지, SQL쿼리에 쓸 start, end
	private int nowPage, startPage, endPage, total, lastPage, start, end;
	private int countNotice;  //countNotice가 포함된 생성자를 사용 시 mapper.xml 에서 알아서 잘 #{countNotice}로 사용하세요.
	private int cntPage = 5;
	private int cntPerPage = 20;
	private String set;
	private String searchCondition;
	private String searchKeyword;
	
	private int max; // 작품 카테고리 페이지에서 가격 범위 설정하여 세팅할 때 사용
	private int min;

	public PagingVO() {
	}
	
	public PagingVO(int total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(),0);
	}
	
	public PagingVO(int total, int nowPage, int cntPerPage, String set) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		setSet(set);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(),0);
	}
	
	public PagingVO(int total, int nowPage, int cntPerPage, String searchCondition, String searchKeyword) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		setSearchCondition(searchCondition);
		setSearchKeyword(searchKeyword);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(),0);
	}
	
	/*
	 * set : seller_code 사용
	 */
	public PagingVO(int total, int nowPage, int cntPerPage, int countNotice) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		setCountNotice(countNotice);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);		
		if(countNotice > 99999) {
			calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(),0);
		}else {
			calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(), getCountNotice());
		}
	}
	
	// 작품 카테고리 페이지에서 가격 범위 설정할 때 사용
	public PagingVO(int total, int nowPage, int cntPerPage, String goods_category, String set, int min, int max) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		setSearchCondition(goods_category);
		setSearchKeyword(set);
		setMax(max);
		setMin(min);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(),0);
	}

	// 제일 마지막 페이지 계산
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double) total / (double) cntPerPage));
	}

	// DB 쿼리에서 사용할 start, end값 계산
	public void calcStartEndPage(int nowPage, int cntPage) {
		setEndPage(((int) Math.ceil((double) nowPage / (double) cntPage)) * cntPage);
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}

	// DB �������� ����� start, end�� ���
	public void calcStartEnd(int nowPage, int cntPerPage, int endPage, int countNotice) {
		setEnd(nowPage * cntPerPage);
		setStart(getEnd() - cntPerPage + 1);
		if(nowPage==endPage) {
			setStart(getStart()-countNotice);
		}
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCountNotice() {
		return countNotice;
	}

	public void setCountNotice(int countNotice) {
		this.countNotice = countNotice;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getCntPage() {
		return cntPage;
	}

	public void setCntPage(int cntPage) {
		this.cntPage = cntPage;
	}

	public String getSet() {
		return set;
	}

	public void setSet(String set) {
		this.set = set;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}


	public int getMax() {
		return max;
	}

	public void setMax(int max) {
		this.max = max;
	}
	

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}

	@Override
	public String toString() {
		return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
				+ ", countNotice=" + countNotice + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
				+ ", cntPage=" + cntPage + ", cntPerPage=" + cntPerPage + ", set=" + set + ", searchCondition="
				+ searchCondition + ", searchKeyword=" + searchKeyword + "]";
	}
	

	
	
}
