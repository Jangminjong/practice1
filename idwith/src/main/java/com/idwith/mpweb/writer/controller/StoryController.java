package com.idwith.mpweb.writer.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.common.S3Service;
import com.idwith.mpweb.writer.storyboard.StoryBoardVO;
import com.idwith.mpweb.writer.storyboard.service.StoryBoardService;

@Controller
public class StoryController {
	
	@Autowired
	S3Service s3Service;
	
	@Autowired
	StoryBoardService storyBoardService;
	
	// 스토리 글 목록 요청
	@GetMapping("/writerStory.wdo")
	public String wirterStory(PagingVO pageVO, Model model, HttpSession session, HttpServletRequest request,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {	
		
		int storySeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int storyBoardTotal = storyBoardService.countStoryBoard(storySeller);
		
		if(nowPage == null && cntPerPage == null ) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(storyBoardTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), storySeller);
		
		model.addAttribute("total",storyBoardTotal);
		model.addAttribute("paging", pageVO);
		model.addAttribute("StoryBoardViewAll", storyBoardService.getStoryList(pageVO));
		
		return "writerStory"; 
	}
	
	// 글 등록 화면 
	@RequestMapping("/insertStory.wdo")
	public String insertstory() {
		return "insertStory";		
	}	
	
	// 스토리 글 등록 기능
	@RequestMapping("/writerInsertStory.wdo")
	public String writerInsertStory(StoryBoardVO storyBoard, HttpSession session, MultipartFile[] file) throws IOException, PSQLException, IllegalStateException  {
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		storyBoard.setStorySellerId(sellerCode);
	      String[] photo = new String[file.length];
	      String storyTitle = storyBoard.getStoryBoardTitle();
	      for (int i = 0; i < file.length; i++) {
	            if (!file[i].getOriginalFilename().equals("")) {
	                  InputStream is = file[i].getInputStream();
	                  String uploadKey = file[i].getOriginalFilename();
	                  String contentType = file[i].getContentType();
	                  long contentLength = file[i].getSize();

	                  String bucket = "idwith/writer/" + sellerCode +"/story/"+storyTitle;
	                  s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	                  String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/story/" + storyTitle +"/" + uploadKey;
	                  
	                  photo[i] = filePath;
	             }
	      }
	      storyBoard.setStoryBoardFilePath(photo);
	      
	      storyBoardService.writerInsertStory(storyBoard);
		
		return "redirect:/writerStory.wdo";
	}
	
	// 스토리 상세보기
	@RequestMapping(value="/storyModify.wdo", method=RequestMethod.GET)
	public String storyModify(@RequestParam("storyBoardSeq") String storyBoard, Model model, HttpServletRequest request) {
		
		  int storyBoardSeq = Integer.parseInt(storyBoard);
	      StoryBoardVO storyBoardVO = storyBoardService.storyModify(storyBoard);
	      
	      storyBoardVO.setStory_tseq(storyBoardSeq);
	      model.addAttribute("storyBoard", storyBoardVO);
	      String[] storyBoardPhoto = storyBoardVO.getStoryBoardFilePath();
	      String[] photoFileNameList = new String[storyBoardPhoto.length];
	      for(int i=0; i< storyBoardPhoto.length; i++) {
	         if(storyBoardPhoto[i] == null) {   
	         } else {
	            String[] photoFileSplit = storyBoardPhoto[i].split("/");
	            photoFileNameList[i] = photoFileSplit[photoFileSplit.length-1];
	            System.out.println(photoFileNameList[i]);
	         }
	      }
	      model.addAttribute("fileName", photoFileNameList);
	      model.addAttribute("fileLength", storyBoardPhoto.length);
		
		model.addAttribute("storyBoard", storyBoardService.storyModify(storyBoard));
		return "storyModify";
	}	
	
	// 스토리 수정
	@RequestMapping("/updateStoryBoard.wdo")
	public String updateStoryBoard(StoryBoardVO storyBoard, MultipartFile[] file, HttpSession session)throws IOException, PSQLException, IllegalStateException {
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		String storyTitle = storyBoard.getStoryBoardTitle();
        String[] uploadedFileList = storyBoard.getUploadedFileList();
        String[] uploadFileList = storyBoard.getUploadFileList();
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
              s3Service.delete("writer/"+sellerCode+"/story/"+storyTitle+"/"+key[key.length-1]);
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
     
                    String bucket = "idwith/writer/" + sellerCode + "/story/" + storyTitle;
                    s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
                    String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/story/" + storyTitle +"/" + uploadKey;
                    
                    photo[i] = filePath;
                 }
           }
           }
              
        storyBoard.setStoryBoardFilePath(photo);
		storyBoardService.updateStoryBoard(storyBoard);
		return "redirect:/writerStory.wdo";		
	}
		
	// 스토리 삭제
	@RequestMapping("/deleteStoryBoard.wdo")
	public String deleteStoryBoard(StoryBoardVO storyBoard) {
		System.out.println("작가 이야기 삭제처리");
		storyBoardService.deleteStoryBoard(storyBoard);
		return "redirect:/writerStory.wdo";		
	}

}
