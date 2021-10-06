package com.idwith.mpweb.writer.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.writer.common.S3Service;
import com.idwith.mpweb.writer.service.ClassOpenService;
import com.idwith.mpweb.writer.service.ClassRegService;


import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassOpenVO;
import com.idwith.mpweb.writer.WriterClassRegVO;

@Controller
public class ClassController {
	@Autowired
	S3Service s3Service;
	
	@Autowired
	ClassRegService classRegService;
	
	@Autowired
	ClassOpenService classOpenService;
	
	@GetMapping("/classManagement.wdo")
	public String classManagement(HttpServletRequest request, Model model, HttpSession session, PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int classSeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int total = classRegService.countClassReg(classSeller);		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else{
			cntPerPage = "10";
		}
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), classSeller);
		model.addAttribute("paging", pageVO);
		model.addAttribute("classRegList", classRegService.getWriterClassRegList(pageVO));
		return "classManagement";
	}
	
	@RequestMapping("/classRegDetail.wdo")
	public String classModify(HttpServletRequest request, Model model,HttpSession session) {
		int classRegSeq = Integer.parseInt(request.getParameter("classRegSeq").toString());
		WriterClassRegVO regVO = classRegService.getWriterClassReg(classRegSeq);
		regVO.setClassRegSeq(classRegSeq);
		model.addAttribute("classReg", regVO);
		String[] classRegPhoto = regVO.getClassPhoto();
		String[] photoFileNameList = new String[classRegPhoto.length];
		for(int i=0; i< classRegPhoto.length; i++) {
			if(classRegPhoto[i] == null) {	
			} else {
				String[] photoFileSplit = classRegPhoto[i].split("/");
				photoFileNameList[i] = photoFileSplit[photoFileSplit.length-1];
				System.out.println(photoFileNameList[i]);
			}
		}
		System.out.println(classRegPhoto.length);
		model.addAttribute("fileName", photoFileNameList);
		model.addAttribute("fileLength", classRegPhoto.length);
		return "classModify";
	}
	
	@RequestMapping("/classCreate.wdo")
	public String classCreate(HttpServletRequest request, Model model,HttpSession session) {		
		return "classCreate";
	}
	
	@GetMapping("/classOpen.wdo")
	public String classOpen() {
		return "classOpen";
	}
	
	@GetMapping("/classOpenReg.wdo")
	public String classOpenReg() {
		return "classOpenReg";
	}
	
	@RequestMapping(value = "classTimeCheck.wdo", method = RequestMethod.POST)
	@ResponseBody
	public String classTimeCheck(WriterClassOpenVO writerClassOpenVO, HttpServletRequest request, Model model,HttpSession session) throws ParseException {

		
//		classOpenService.classTimeCheck();
		return "오류없음";
	}
	
	@RequestMapping("classOpenInsert.wdo")
	public String classOpenInsert(HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session) {
		
		return "redirect:/classOpen.wdo";
	}
	
	@RequestMapping(value="/classRegInsert.wdo", method=RequestMethod.POST)
	public String classInsertApply(WriterClassRegVO writerClassRegVO, HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session)  throws IOException, PSQLException, IllegalStateException {
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());		
		System.out.println("file.length=========>" + file.length);
		writerClassRegVO.setClassSeller(sellerCode);
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

	            String bucket = "idwith/writer/" + sellerCode;
	            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/" + uploadKey;
	            
	            photo[i] = filePath;
	         }
	      }
		writerClassRegVO.setClassPhoto(photo);
		classRegService.classRegInsert(writerClassRegVO);
		return "redirect:/classManagement.wdo";
	}
	
	@RequestMapping("/classRegDelete.wdo")
	public String classRegDelete(HttpServletRequest request, Model model,HttpSession session) {
		classRegService.classRegDelete(Integer.parseInt(request.getParameter("classRegSeq").toString()));
		System.out.println(Integer.parseInt(request.getParameter("classRegSeq").toString()));
		return "redirect:/classManagement.wdo";
	}
	
	@RequestMapping("/classRegModify.wdo")
	public String classRegModify(WriterClassRegVO writerClassRegVO, HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session) throws IOException, PSQLException, IllegalStateException {
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());		
		System.out.println("file.length=========>" + file.length);
		writerClassRegVO.setClassSeller(sellerCode);
		String[] uploadedFileList = writerClassRegVO.getUploadedFileList();
		String[] uploadFileList = writerClassRegVO.getUploadFileList();
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
				s3Service.delete("writer/"+sellerCode+"/"+key[key.length-1]);
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
	
		            String bucket = "idwith/writer/" + sellerCode;
		            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
		            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/" + uploadKey;
		            
		            photo[i] = filePath;
		         }
			}
	      }
		
		
		writerClassRegVO.setClassPhoto(photo);
		classRegService.classRegUpdate(writerClassRegVO);
		return "redirect:/classManagement.wdo";
	}
}