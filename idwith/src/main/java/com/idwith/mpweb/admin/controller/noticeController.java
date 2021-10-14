package com.idwith.mpweb.admin.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.admin.S3Service;
import com.idwith.mpweb.admin.board.AdminEventBoardVO;

import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.admin.board.service.AdminBoardService;
import com.idwith.mpweb.admin.board.service.AdminNoticeService;
import com.idwith.mpweb.common.PagingVO;


@Controller
public class noticeController {
	@Autowired
	AdminBoardService adminBoardService;
	
	@Autowired
	AdminNoticeService adminNoticeService;
	
	@Autowired
	 S3Service s3Service;
	
	/**관리자 공지사항 페이지 출력*/
	@GetMapping("/adminNotice.mdo")
	public String adminNoticeList(PagingVO pagination, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		System.out.println("湲� 紐⑸줉 �슂泥� 泥섎━");
		
		int adminNoticeTotal = adminNoticeService.countAdminNotice();
		
		System.out.println("湲� �닔:"+adminNoticeTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pagination = new PagingVO(adminNoticeTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagination);
		model.addAttribute("NoticeViewAll", adminNoticeService.getNoticeList(pagination));
		
		return "adminNotice";
	}
	
	/**관리자 공지사항 입력 폼*/
	@RequestMapping("/adminInsertNotice.mdo")
	public String adminInsertNotice() {
		return "adminInsertNotice";
	}
	
	/**관리자 공지사항 입력 기능
	 * @throws IOException */
	@RequestMapping("/insertNotice.mdo")
	public String insertNotice(AdminNoticeBoardVO adminNotice, MultipartFile[] file, HttpSession session) throws IOException {
		System.out.println("공지사항 입력창");
		System.out.println("content : " + adminNotice.getAmdinBoardContent());
		System.out.println("file.length=========>" + file.length);
	    String[] photo = new String[file.length];
	      
	      for (int i = 0; i < file.length; i++) {
	            if (!file[i].getOriginalFilename().equals("")) {
	               System.out.println("================== file start ==================");
	               System.out.println("파일 이름: " + file[i].getName());
	               System.out.println("파일 실제 이름: " + file[i].getOriginalFilename());
	               System.out.println("파일 크기: " + file[i].getSize());
	               System.out.println("content type: " + file[i].getContentType());
	               System.out.println("================== file   END ==================");

	               InputStream is = file[i].getInputStream();
	               String uploadKey = file[i].getOriginalFilename();
	               String contentType = file[i].getContentType();
	               long contentLength = file[i].getSize();

	               String bucket = "idwith/admin/notice/"+adminNotice.getAdminBoardTitle();
	               s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	               String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/admin/notice/"+ adminNotice.getAdminBoardTitle() +"/" + uploadKey;
	               
	               photo[i] = filePath;
	            }
	         }
	      adminNotice.setAdminBoardId((String) session.getAttribute("admin_name"));
	      adminNotice.setAdminBoardFilePath(photo);
	      adminNoticeService.insertAdminNotice(adminNotice);
	      
		return "redirect:/adminNotice.mdo";
	}
	
	/**관리자 공지사항 상세보기 기능 */
	@RequestMapping("/detailAdminNotice.mdo")
	public String detailAdminNotice(AdminNoticeBoardVO adminNotice, Model model) {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �긽�꽭蹂닿린 泥섎━ Seq : " + adminNotice.getAdminBoardSeq());
		AdminNoticeBoardVO result = adminNoticeService.getAdminNotice(adminNotice);
		model.addAttribute("adminNotice", result);
		
		String[] noticePhoto = result.getAdminBoardFilePath();
		if(noticePhoto == null) {
	    	  noticePhoto = new String[0];
	      }
		
	    String[] photoFileNameList = new String[noticePhoto.length];
	      
	      for(int i=0; i< noticePhoto.length; i++) {
	         if(noticePhoto[i] == null) {  
	         } else {
	            String[] photoFileSplit = noticePhoto[i].split("/");
	            photoFileNameList[i] = photoFileSplit[photoFileSplit.length-1];
	            System.out.println(photoFileNameList[i]);
	            System.out.println(noticePhoto[i]);
	         }
	      }
	      System.out.println(noticePhoto.length);
	      model.addAttribute("fileName", photoFileNameList);
	      model.addAttribute("fileLength", noticePhoto.length);
		
		return "detailAdminNotice";
	}
	
	@RequestMapping("/adminNoticeContent.mdo")
	public String adminNoticeContent(AdminNoticeBoardVO adminNotice, Model model) {
		System.out.println("글 상세내용 조회");
		System.out.println("내용 조회 seq : " + adminNotice.getAdminBoardSeq());
		
		AdminNoticeBoardVO result = adminNoticeService.getAdminNotice(adminNotice);
		
		model.addAttribute("adminNotice", result);
		System.out.println(result);
		
	      String[] noticePhoto = result.getAdminBoardFilePath();
	      if(noticePhoto == null) {
	    	  noticePhoto = new String[0];
	      }
	      String[] photoFileNameList = new String[noticePhoto.length];
	      
	      for(int i=0; i< noticePhoto.length; i++) {
	         if(noticePhoto[i] == null) {   
	         } else {
	            String[] photoFileSplit = noticePhoto[i].split("/");
	            photoFileNameList[i] = photoFileSplit[photoFileSplit.length-1];
	            System.out.println(photoFileNameList[i]);
	            System.out.println(noticePhoto[i]);
	         }
	      }
	      System.out.println(noticePhoto.length);
	      model.addAttribute("fileName", photoFileNameList);
	      model.addAttribute("fileLength", noticePhoto.length);
		
		return "adminNoticeContent";
	}
	
	/**관리자 공지사항 수정 기능
	 * @throws IOException */
	@RequestMapping("/updateAdminNotice.mdo")
	public String updateAdminNotice(AdminNoticeBoardVO adminNotice, HttpServletRequest request, MultipartFile[] file) throws IOException {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �닔�젙 泥섎━");
		System.out.println("seq : " + adminNotice.getAdminBoardSeq());
		
		adminNoticeService.updateAdminNotice(adminNotice);
		
		String[] uploadedFileList = adminNotice.getUploadedFileList();
		String[] uploadFileList = adminNotice.getUploadFileList();
		
	      if(uploadFileList == null) {
	         uploadFileList = new String[0];
	      }
	      if(uploadedFileList == null) {
	         uploadedFileList = new String[0];
	      }
	      
	      String[] photo = new String[file.length+uploadFileList.length];
	      System.out.println("기존 파일에서 삭제되는 파일의수"+(uploadedFileList.length-uploadFileList.length));
	      System.out.println("기존 파일에 남아있는 파일의수"+uploadFileList.length);
	      System.out.println("업로드되어야하는 파일의 수"+file.length);
	      for (int i=0;i<uploadedFileList.length; i++) {
	         for (int j = 0; j < uploadFileList.length; j++) {
	            if(uploadedFileList[i].equals(uploadFileList[j])) {
	               uploadedFileList[i] = "";
	            }
	         }
	      }
	      
	      for (int i=0;i<uploadedFileList.length; i++) {
	         if(!uploadedFileList[i].equals("")) {
	            String[] key = uploadedFileList[i].split("/");
	            s3Service.delete("admin/notice/"+ adminNotice.getAdminBoardTitle() + "/" +key[key.length-1]);
	         }
	      }
	      for (int i = 0; i < photo.length; i++) {
	         if (i<uploadFileList.length) {
	            photo[i] = uploadFileList[i];
	         } else {
	            int nfLength = i-uploadFileList.length;
	               if (!file[nfLength].getOriginalFilename().equals("")) {
	                  InputStream is = file[nfLength].getInputStream();
	                  String uploadKey = file[nfLength].getOriginalFilename();
	                  String contentType = file[nfLength].getContentType();
	                  long contentLength = file[nfLength].getSize();
	   
	                  String bucket = "idwith/admin/notice/"+adminNotice.getAdminBoardTitle();
		               s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
		               String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/admin/notice/"+ adminNotice.getAdminBoardTitle() +"/" + uploadKey;
	                  
	                  photo[i] = filePath;
	               }
	         }
	         }
	            
	      adminNotice.setAdminBoardFilePath(photo);
	      adminNoticeService.updateAdminNotice(adminNotice);
		
		return "redirect:/adminNotice.mdo";
	}
	
	/**관리자 공지사항 삭제 기능*/
	@RequestMapping("/deleteAdminNotice.mdo")
	public String deleteAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("愿�由ъ옄 怨듭��궗�빆 �궘�젣 泥섎━");
		adminNoticeService.deleteAdminNoitce(adminNotice);
		return "redirect:/adminNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping("/userNotice.mdo")
	public String userNotice(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,

//			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, @RequestParam(value="set", required=false) String set) {
//		 int countEventNotice = adminBoardService.countEventNotice(); 

			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value="set", required=false) String set) {
		 int countEventNotice = adminBoardService.countEventNotice(); // ��ü �� ��
		 System.out.println("��ü�� ��: "+ countEventNotice);
		 System.out.println("ī�װ�: "+set);
		 
		 if (nowPage == null && cntPerPage == null) { 
			 nowPage = "1";
			 cntPerPage = "10"; 
		 } else { 
			 cntPerPage = "10"; 
		 }
		 
		 System.out.println("nowpage: " + nowPage + "cntPerpage: " + cntPerPage);
		 if(set == null) {
				set = "구분";
		 }
		 
		 pageVO = new PagingVO(countEventNotice, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set); 
		 model.addAttribute("paging", pageVO);
		 model.addAttribute("noticeList",adminBoardService.getEventNoticeList(pageVO));
		return "userNotice";
	}
	
	@GetMapping("/userInsertNotice.mdo")
	public String userInsertNotice() {
		return "userInsertNotice";
	}
	
	@RequestMapping("/insertUserNotice.mdo")
	public String insertUserNotice(AdminEventBoardVO adminEventVO, HttpSession session) {
		 System.out.println("content: "+adminEventVO.getUser_event_board_content());
		 adminEventVO.setUser_event_board_id((String) session.getAttribute("admin_name"));
		 adminBoardService.userInsertNotice(adminEventVO);

		return "redirect:/userNotice.mdo";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent(AdminEventBoardVO adminEventVO, Model model) {
		
		System.out.println("num: "+adminEventVO.getUser_event_board_seq()); 
		model.addAttribute("adminEventVO", adminBoardService.getEventNotice(adminEventVO));
		 
		return "userNoticeContent";
	}
	
	@RequestMapping("/updateEventNotice.mdo")
	public String updateEventNotice(AdminEventBoardVO adminEventVO) {
		adminBoardService.updateEventNotice(adminEventVO);
		return "redirect:/userNotice.mdo";
	}
	
	@RequestMapping("/deleteEventNotice.mdo")
	public String deleteEventNotice(HttpServletRequest req) {
		AdminEventBoardVO adminEventVO = new AdminEventBoardVO();
		int user_event_board_seq = Integer.parseInt(req.getParameter("user_event_board_seq"));
		adminEventVO.setUser_event_board_seq(user_event_board_seq);
		adminBoardService.deleteEventNotice(adminEventVO);

		return "redirect:/userNotice.mdo";
	}
	
	//--------------------------------------------
	
	@GetMapping(value="/qna.mdo")
	public String qnaList(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, 
			@RequestParam(value="set", required=false) String set) {
		int total = adminBoardService.countQnA(); // ��ü �� �� ��ȸ 
		System.out.println("��ü qna ��: " + total);
		System.out.println("ī�װ�: "+set);

		if (nowPage == null && cntPerPage == null) { 
			nowPage = "1"; 
			cntPerPage = "10"; 
		} else {
			cntPerPage = "10";
		}

		System.out.println("nowpage: " + nowPage + ", cntPerpage: " + cntPerPage);
		if(set == null) { 
			System.out.println("set 占쏙옙占쏙옙");
			set = "구분"; 
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), set); 
		System.out.println(pageVO.getSet());
		model.addAttribute("paging", pageVO); 

		model.addAttribute("adminQnAList", adminBoardService.selectQnA(pageVO)); 

		return "qna";
	}

	
	@RequestMapping("/answer.mdo")
	public String answer(AdminQnABoardVO adminQnA, Model model) {
		
		System.out.println("num: "+adminQnA.getSeq());
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "answer";
	}
	
	@RequestMapping("/updateAnswer.mdo")
	public String updateAnswer(AdminQnABoardVO adminQnA) {
		
		System.out.println("seq: "+ adminQnA.getSeq());
		System.out.println("answer: "+ adminQnA.getBoard_answer());
		adminBoardService.updateAnswer(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/userInsertFAQ.mdo")
	public String userInsertFAQ() {
		return "userInsertFAQ";
	}
	
	@RequestMapping("/insertFAQ.mdo")
	public String insertFAQ(AdminQnABoardVO adminQnA) {
		
		System.out.println("content: "+adminQnA.getBoard_content());
		adminBoardService.insertFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/detailFAQ.mdo")
	public String detailFAQ(AdminQnABoardVO adminQnA, Model model,
			@RequestParam(value = "seq")int seq) {
		System.out.println("num: "+adminQnA.getSeq());
		adminQnA.setSeq(seq);
		model.addAttribute("adminQnA", adminBoardService.getQnA(adminQnA));
		return "detailFAQ";
	}
	
	@RequestMapping("/updateFAQ.mdo")
	public String updateFAQ(AdminQnABoardVO adminQnA) {
		
		adminBoardService.updateFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}
	
	@RequestMapping("/deleteFAQ.mdo")
	public String deleteFAQ(AdminQnABoardVO adminQnA) {
		
		adminBoardService.deleteFAQ(adminQnA);
		return "redirect:/qna.mdo";
	}

}
