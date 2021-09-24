package com.idwith.mpweb.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.board.AdminEventBoardVO;
import com.idwith.mpweb.admin.board.AdminQnABoardDAO;
import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.common.PagingVO;

@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService {
   @Autowired
   private AdminQnABoardDAO adminBoardDAO;

   // QnA 부분-------------------------------------------------------------
   // 페이징 처리
   @Override
   public int countQnA() {
      return adminBoardDAO.countQnA(); // 총 게시글 수
   }

   @Override
   public List<AdminQnABoardVO> selectQnA(PagingVO pageVO) {
      return adminBoardDAO.selectQnA(pageVO);
   }

   @Override
   public AdminQnABoardVO getQnA(AdminQnABoardVO adminQnA) {
      return adminBoardDAO.getQnA(adminQnA);
   }

   @Override
   public void updateAnswer(AdminQnABoardVO adminQnA) {
      System.out.println("num: " + adminQnA.getSeq());
      System.out.println("answer: " + adminQnA.getBoard_answer());
      adminBoardDAO.updateAnswer(adminQnA);
   }

   @Override
   public List<AdminQnABoardVO> getQnAList(PagingVO pageVO) {
      return adminBoardDAO.getQnAList(pageVO);
   }

   @Override
   public int countNotice() {
      return adminBoardDAO.countNotice();
   }

   @Override
   public void updateFAQ(AdminQnABoardVO adminQnA) {
      System.out.println("num: "+adminQnA.getSeq());
      System.out.println("content: "+adminQnA.getBoard_content());
      adminBoardDAO.updateFAQ(adminQnA);
   }

   @Override
   public void deleteFAQ(AdminQnABoardVO adminQnA) {
      System.out.println("num: "+adminQnA.getSeq());
      adminBoardDAO.deleteFAQ(adminQnA);
   }

   @Override
   public void insertFAQ(AdminQnABoardVO adminQnA) {
      System.out.println("title: "+adminQnA.getBoard_title());
      System.out.println("content: "+adminQnA.getBoard_content());
      adminBoardDAO.insertFAQ(adminQnA);
   }
   
   //----사용자 공지사항 부분-------------------------------------------------------------------
   
   @Override
   public void userInsertNotice(AdminEventBoardVO adminEventVO) {
      adminBoardDAO.userInsertNotice(adminEventVO);
   }

   @Override
   public int countEventNotice() {
      return adminBoardDAO.countEventNotice();
   }

   @Override
   public List<AdminEventBoardVO> getEventNoticeList(PagingVO pageVO) {
      return adminBoardDAO.getEventNoticeList(pageVO);
   }

   @Override
   public AdminEventBoardVO getEventNotice(AdminEventBoardVO adminEventVO) {
      return adminBoardDAO.getEventNotice(adminEventVO);
   }

}