package com.idwith.mpweb.writer.controller;

import java.io.IOException;
import java.io.InputStream;

import java.text.ParseException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.writer.common.S3Service;
import com.idwith.mpweb.writer.service.ClassOpenService;
import com.idwith.mpweb.writer.service.ClassOrderService;
import com.idwith.mpweb.writer.service.ClassRegService;


import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassCategoryVO;
import com.idwith.mpweb.writer.WriterClassOpenVO;
import com.idwith.mpweb.writer.WriterClassOrderVO;
import com.idwith.mpweb.writer.WriterClassRegVO;

@Controller
public class ClassController {
	@Autowired
	S3Service s3Service;
	
	@Autowired
	ClassRegService classRegService;
	
	@Autowired
	ClassOpenService classOpenService;
	
	@Autowired
	ClassOrderService classOrderService;
	
	@GetMapping("/classOpen.wdo")
	public String classOpen(HttpServletRequest request, Model model, HttpSession session, PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int classOpenSeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int total = classOpenService.countClassOpen(classOpenSeller);
		System.out.println("작가 글 개수");
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else{
			cntPerPage = "10";
		}
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), classOpenSeller);
		List<WriterClassOpenVO> openList =  classOpenService.getWriterClassOpenList(pageVO);
		System.out.println("페이징 처리되는 글 개수" + openList.size());
		model.addAttribute("total", total);
		model.addAttribute("paging", pageVO);
		model.addAttribute("classOpenList", openList);
		
		return "classOpen";
	}
	
	@GetMapping("/classOpenReg.wdo")
	public String classOpenReg(HttpServletRequest request, Model model, HttpSession session) {
		// 클래스 오픈 등록페이지로 이동
		int classSeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		List<WriterClassRegVO> regListAll = classRegService.getWriterClassRegListAll(classSeller);
		List<WriterClassCategoryVO> classCategoryList = classRegService.classCategoryFind();
		model.addAttribute("regListAll",regListAll);
		model.addAttribute("classCategoryList", classCategoryList);
		return "classOpenReg";
	}
	
	@RequestMapping(value = "classTimeCheck.wdo", method = RequestMethod.POST)
	@ResponseBody
	public String classTimeCheck(WriterClassOpenVO writerClassOpenVO, HttpServletRequest request, Model model,HttpSession session) throws ParseException {	
		// 클래스 오픈 시간 체크
		String result = classOpenService.classTimeCheck(writerClassOpenVO);
		return result;
	}

	@RequestMapping("classOpenInsert.wdo")
	public String classOpenInsert(WriterClassOpenVO writerClassOpenVO, HttpServletRequest request, MultipartFile[] file, Model model,HttpSession session) throws IOException, PSQLException, IllegalStateException {
		//클래스 오픈 등록
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		writerClassOpenVO.setClassOpenSeller(sellerCode);
		String[] photo = new String[file.length];
		String classCode = writerClassOpenVO.getClassOpenClassCode();
		String className = classRegService.getRegClassName(classCode);
		writerClassOpenVO.setClassName(className);
		for (int i = 0; i < file.length; i++) {
	         if (!file[i].getOriginalFilename().equals("")) {
	        	 	InputStream is = file[i].getInputStream();
		            String uploadKey = file[i].getOriginalFilename();
		            String contentType = file[i].getContentType();
		            long contentLength = file[i].getSize();

		            String bucket = "idwith/writer/" + sellerCode +"/classOpen/"+className;
		            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
		            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/classOpen/" + className +"/" + uploadKey;
		            
		            photo[i] = filePath;
		       }
		}
		writerClassOpenVO.setClassOpenPhoto(photo);
		classOpenService.classOpenInsert(writerClassOpenVO);
		return "redirect:/classOpen.wdo";
	}
	
	@RequestMapping("/classOpenDetail.wdo")
	public String classOpenDetail(HttpServletRequest request,  Model model,HttpSession session) {
		// 클래스 오픈 상세페이지 이동
		int classOpenSeq = Integer.parseInt(request.getParameter("classOpenSeq").toString());
		WriterClassOpenVO openVO = classOpenService.getWriterClassOpen(classOpenSeq);
		
		openVO.setClassOpenSeq(classOpenSeq);
		model.addAttribute("classOpen", openVO);
		String[] classOpenPhoto = openVO.getClassOpenPhoto();
		String[] photoFileNameList = new String[classOpenPhoto.length];
		for(int i=0; i< classOpenPhoto.length; i++) {
			if(classOpenPhoto[i] == null) {	
			} else {
				String[] photoFileSplit = classOpenPhoto[i].split("/");
				photoFileNameList[i] = photoFileSplit[photoFileSplit.length-1];
				System.out.println(photoFileNameList[i]);
			}
		}
		System.out.println(classOpenPhoto.length);
		model.addAttribute("fileName", photoFileNameList);
		model.addAttribute("fileLength", classOpenPhoto.length);
		return "classOpenDetail";
	}
	
	@RequestMapping("classOpenModify.wdo")
	public String classOpenModify(WriterClassOpenVO writerClassOpenVO, HttpServletRequest request, MultipartFile[] file, Model model,HttpSession session) throws IOException, PSQLException, IllegalStateException {
		// 클래스 등록 수정
				int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());		
				System.out.println("file.length=========>" + file.length);
				writerClassOpenVO.setClassOpenSeller(sellerCode);
				String className = writerClassOpenVO.getClassName();
				String[] uploadedFileList = writerClassOpenVO.getUploadedFileList();
				String[] uploadFileList = writerClassOpenVO.getUploadFileList();
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
						s3Service.delete("writer/"+sellerCode+"/classOpen/"+className+"/"+key[key.length-1]);
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
			
				            String bucket = "idwith/writer/" + sellerCode + "/classOpen/" + className;
				            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
				            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/classOpen/" + className +"/" + uploadKey;
				            
				            photo[i] = filePath;
				         }
					}
			      }
						
				writerClassOpenVO.setClassOpenPhoto(photo);
				classOpenService.classOpenUpdate(writerClassOpenVO);
		return "redirect:/classOpen.wdo";
	}
	
	@RequestMapping("classOpenDelete.wdo")
	@ResponseBody
	public String classOpenDelete(WriterClassOpenVO writerClassOpenVO, HttpServletRequest request, MultipartFile[] file, Model model,HttpSession session) throws IOException, PSQLException, IllegalStateException{
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		writerClassOpenVO.setClassOpenSeller(sellerCode);
		String className = writerClassOpenVO.getClassName();
		String[] uploadedFileList = writerClassOpenVO.getUploadedFileList();
		if(uploadedFileList == null) {
			uploadedFileList = new String[0];
		}
		for (int i=0;i<uploadedFileList.length; i++) {
			if(!uploadedFileList[i].equals("")) {
				String[] key = uploadedFileList[i].split("/");
				s3Service.delete("writer/"+sellerCode+"/classOpen/"+className+"/"+key[key.length-1]);
			}
		}
		classOpenService.classOpenDelete(writerClassOpenVO);
		return "success";
	}
	
	//클래스 등록 ---------------------------------------------------------------------------------
	
	
	@RequestMapping("/classCreate.wdo")
	public String classCreate(HttpServletRequest request, Model model,HttpSession session) {
		// 클래스 등록페이지 이동
		List<WriterClassCategoryVO> classCategoryList = classRegService.classCategoryFind();
		model.addAttribute("classCategoryList", classCategoryList);
		
		return "classCreate";
	}
	
	@RequestMapping(value="/classRegInsert.wdo", method=RequestMethod.POST)
	public String classInsertApply(WriterClassRegVO writerClassRegVO, HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session)  throws IOException, PSQLException, IllegalStateException {
		//클래스 등록
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());		
		System.out.println("file.length=========>" + file.length);
		writerClassRegVO.setClassSeller(sellerCode);
		String className = writerClassRegVO.getClassName();
		String[] photo = new String[file.length];
		String sellerStoreName = classRegService.getSellerStoreName(sellerCode);
		writerClassRegVO.setStoreName(sellerStoreName);
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

	            String bucket = "idwith/writer/" + sellerCode +"/classReg/"+className;
	            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/classReg/" + className +"/" + uploadKey;
	            
	            photo[i] = filePath;
	         }
	      }
		writerClassRegVO.setClassPhoto(photo);
		classRegService.classRegInsert(writerClassRegVO);
		return "redirect:/classManagement.wdo";
	}
	
	@GetMapping("/classManagement.wdo")
	public String classManagement(HttpServletRequest request, Model model, HttpSession session, PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage, @RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		// 클래스 등록 목록
		int classSeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int total = classRegService.countClassReg(classSeller);
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else{
			cntPerPage = "10";
		}
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), classSeller);
		List<WriterClassRegVO> regList =  classRegService.getWriterClassRegList(pageVO);
		model.addAttribute("total", total);
		model.addAttribute("paging", pageVO);
		model.addAttribute("classRegList", regList);

		return "classManagement";
	}
	
	@RequestMapping("/classRegDetail.wdo")
	public String classModify(HttpServletRequest request, Model model,HttpSession session) {
		// 클래스 등록 상세
		int classRegSeq = Integer.parseInt(request.getParameter("classRegSeq").toString());
		WriterClassRegVO regVO = classRegService.getWriterClassReg(classRegSeq);
		List<WriterClassCategoryVO> classCategoryList = classRegService.classCategoryFind();
		
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
		model.addAttribute("classCategoryList", classCategoryList);
		return "classModify";
	}
	
	@RequestMapping("/classRegDelete.wdo")
	public String classRegDelete(HttpServletRequest request, Model model,HttpSession session) {
		// 클래스 등록 삭제
		classRegService.classRegDelete(Integer.parseInt(request.getParameter("classRegSeq").toString()));
		System.out.println(Integer.parseInt(request.getParameter("classRegSeq").toString()));
		return "redirect:/classManagement.wdo";
	}
	
	@RequestMapping("/classRegModify.wdo")
	public String classRegModify(WriterClassRegVO writerClassRegVO, HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session) throws IOException, PSQLException, IllegalStateException {
		// 클래스 등록 수정
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());		
		System.out.println("file.length=========>" + file.length);
		writerClassRegVO.setClassSeller(sellerCode);
		String className = writerClassRegVO.getClassName();
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
				s3Service.delete("writer/"+sellerCode+"/classReg/"+className+"/"+key[key.length-1]);
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
	
		            String bucket = "idwith/writer/" + sellerCode + "/classReg/" + className;
		            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
		            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/classReg/" + className +"/" + uploadKey;
		            
		            photo[i] = filePath;
		         }
			}
	      }
				
		writerClassRegVO.setClassPhoto(photo);
		classRegService.classRegUpdate(writerClassRegVO);
		return "redirect:/classManagement.wdo";
	}
//  주문 상세 ----------------------------------------------------------------------------------------------------------
	@GetMapping("/orderClass.wdo")
	public String orderClass(PagingVO pageVO, Model model, HttpSession session,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage,
			@RequestParam(value="set", required = false)String set) {
		System.out.println("클래스 목록 요청처리");
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int classOrderTotal = classOrderService.countClassOrder(sellerCode);
		
		
		System.out.println("주문 수 : " + classOrderTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(classOrderTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), sellerCode);
		
		model.addAttribute("total", classOrderTotal);
		model.addAttribute("paging", pageVO);
		model.addAttribute("ClassOrderViewAll", classOrderService.getClassOrderList(pageVO) );
		
		return "orderClass";	
	}
	
	@RequestMapping(value="/classDetail.wdo", method=RequestMethod.GET)
	public String classDetail(WriterClassOrderVO writerClassOrder, Model model) {
		System.out.println("클래스 상세보기 : " + writerClassOrder.getClass_order_code());
		System.out.println("클래스 : " + writerClassOrder.getClass_order_id());
		model.addAttribute("writerClassOrder", classOrderService.classDetail(writerClassOrder));
		return "classDetail";
	}
}