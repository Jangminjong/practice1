package com.idwith.mpweb.admin.board.service;

import java.util.List;

import com.idwith.mpweb.admin.board.AdminNoitceBoardVO;


public interface AdminNoticeService {
	
	 /**
     * 게시물 리스트 조회
     * @param AdminNoitceBoardVO
     * @return
     * @throws Exception
     */
    public List<AdminNoitceBoardVO> selectBoardList(AdminNoitceBoardVO adminNoticeVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param AdminNoitceBoardVO
     * @throws Exception
     */
    public void insertBoard(AdminNoitceBoardVO adminNoticeVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param AdminNoitceBoardVO
     * @throws Exception
     */
    public void updateBoard(AdminNoitceBoardVO adminNoticeVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param AdminNoitceBoardVO
     * @throws Exception
     */
    public void deleteBoard(AdminNoitceBoardVO adminNoticeVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param AdminNoitceBoardVO
     * @return
     * @throws Exception
     */
    public AdminNoitceBoardVO selectBoardByCode(AdminNoitceBoardVO vo) throws Exception;

}
