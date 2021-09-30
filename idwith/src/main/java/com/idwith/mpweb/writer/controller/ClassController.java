package com.idwith.mpweb.writer.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.writer.common.S3Service;
import com.idwith.mpweb.writer.service.ClassApplyService;


import com.idwith.mpweb.writer.WriterClassApplyVO;

@Controller
public class ClassController {
	@Autowired
	S3Service s3Service;
	
	@Autowired
	ClassApplyService classApplyService;
	
	
	@GetMapping("/classManagement.wdo")
	public String classManagement(HttpServletRequest request, Model model, HttpSession session) {
		classApplyService.getWriterClassApplyList(session.getAttribute("sellerCheck").toString());
		return "classManagement";
	}
	
	@GetMapping("/classModify.wdo")
	public String classModify() {
		return "classModify";
	}
	
	@GetMapping("/classCreate.wdo")
	public String classCreate() {
		return "classCreate";
	}
	
	@GetMapping("/classOpen.wdo")
	public String classOpen() {
		return "classOpen";
	}
	
	@RequestMapping(value="/classInsertApply.wdo", method=RequestMethod.POST)
	public String classInsertApply(WriterClassApplyVO writerClassApplyVO, HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session)  throws IOException, PSQLException, IllegalStateException {
		
		String writerId = session.getAttribute("email").toString();
		String sellerCode = session.getAttribute("sellerCheck").toString();		
		System.out.println("file.length=========>" + file.length);
		writerClassApplyVO.setClassApplyId(writerId);
		writerClassApplyVO.setClassApplySeller(sellerCode);
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

	            String bucket = "idwith/writer/" + writerId + "/" + writerClassApplyVO.getClassApplyName();
	            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ writerId + "/" + uploadKey;
	            photo[i] = filePath;
	         }
	      }
		writerClassApplyVO.setClassApplyPhoto(photo);
		classApplyService.classApplyInsert(writerClassApplyVO);
		return "redirect:/classManagement.wdo";
	}
	
}