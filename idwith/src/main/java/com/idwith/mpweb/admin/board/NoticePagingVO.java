package com.idwith.mpweb.admin.board;

public class NoticePagingVO {

	private int nowPage, startPage, endPage, total, countNotice, lastPage, start, end;
	private int cntPage = 5;
	private int cntPerPage = 10;
	private String set;

	public NoticePagingVO() {
	}

	public NoticePagingVO(int total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPage(), getEndPage(), 0);
	}
	
	public NoticePagingVO(int total, int nowPage, int cntPerPage, int countNotice) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		setCountNotice(countNotice);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage(), getEndPage(), getCountNotice());
	}

	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double) total / (double) cntPerPage));
	}

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

	public void setNowPage(int notPage) {
		this.nowPage = notPage;
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

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public String getSet() {
		return set;
	}

	public void setSet(String set) {
		this.set = set;
	}

	@Override
	public String toString() {
		return "NoticePagingVO [nowtPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total="
				+ total + ", countNotice=" + countNotice + ", lastPage=" + lastPage + ", start=" + start + ", end="
				+ end + ", cntPage=" + cntPage + ", cntPerPage=" + cntPerPage + ", set=" + set + "]";
	}

}
