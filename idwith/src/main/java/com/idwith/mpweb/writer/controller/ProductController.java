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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.common.CodeGenerationWriter;
import com.idwith.mpweb.writer.common.S3Service;
import com.idwith.mpweb.writer.goods.GoodsCategoryVO;
import com.idwith.mpweb.writer.goods.GoodsOptionVO;
import com.idwith.mpweb.writer.goods.WriterGoodsVO;
import com.idwith.mpweb.writer.goods.service.GoodsService;

@Controller
public class ProductController {	
	
	@Autowired
	GoodsService goodsService;

	@Autowired
	S3Service s3Service;
	
	// 작품 목록
	@RequestMapping("/productManagement.wdo")
	public String productManagement(PagingVO pageVO, Model model, HttpSession session,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage,
			@RequestParam(value = "set", required = false) String set) {
		System.out.println("작품 리스트 목록처리");
		int goodsSeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int goodsTotal = goodsService.countGoods(goodsSeller);
		
		System.out.println("작품 수 : " + goodsTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(goodsTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), goodsSeller);
		model.addAttribute("total", goodsTotal);
		model.addAttribute("paging", pageVO);
		model.addAttribute("ProductViewAll", goodsService.getGoodsList(pageVO));
		
		return "productManagement";
	}
	
	// 작품 등록 화면
	@RequestMapping("/insertGoods.wdo")
		public String insertgoods() {
			return "insertGoods";		
		}
	
	
	@GetMapping("productCreate.wdo")
	public String productCreate(HttpServletRequest request, HttpSession session, Model model) {
		List<GoodsCategoryVO> goodsCategoryList = goodsService.goodsCategoryFind();
		model.addAttribute("goodsCategoryList",goodsCategoryList);
		return "productCreate";
	}
	
	// 작품 등록 기능
	@RequestMapping(value="/productRegist.wdo", method=RequestMethod.POST)
	public String productCreate(WriterGoodsVO goodsVO, HttpServletRequest request, HttpSession session, Model model, MultipartFile[] file) throws IOException, PSQLException, IllegalStateException {
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());		
		System.out.println("file.length=========>" + file.length);
		goodsVO.setSeller_code(sellerCode);
		String goodsName = goodsVO.getGoods_name();
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

	            String bucket = "idwith/writer/" + sellerCode +"/goods/"+goodsName;
	            s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	            String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/writer/"+ sellerCode + "/goods/" + goodsName +"/" + uploadKey;
	            
	            photo[i] = filePath;
	         }
	      }
		goodsVO.setGoods_photo(photo);
		
		CodeGenerationWriter cgw = new CodeGenerationWriter();
		cgw.setCertNumLength(6);
		String cateCode = goodsVO.getGoods_category();
		String goodsCode = cateCode + cgw.excuteGenerate();
		goodsVO.setGoods_code(goodsCode);
		List<GoodsOptionVO> options = goodsVO.getOptions();
		for(GoodsOptionVO option : options) {
			if (option.getGoodsOp1Name().equals(null) || option.getGoodsOp1Name().equals("")) {
				
			} else {
				option.setGoodsCode(goodsCode);
				goodsService.optionInsert(option);
			}
		}
		goodsService.productCreate(goodsVO);
		return "redirect:/productManagement.wdo";
	}
	
	// 상세보기
	@RequestMapping("/productModify.wdo")
	public String productModify(HttpServletRequest request, Model model, HttpSession session) {
		int classOpenSeq = Integer.parseInt(request.getParameter("goods_seq").toString());
		WriterGoodsVO writerGoodsVO = goodsService.getWriterGoods(classOpenSeq);
		List<GoodsOptionVO> goodsOptionList = goodsService.getGoodsOptionList(writerGoodsVO.getGoods_code());
		writerGoodsVO.setGoods_seq(classOpenSeq);
		GoodsCategoryVO goodsCategory = goodsService.getGoodsCategoryName(writerGoodsVO.getGoods_category());
		String[] goodsPhoto = writerGoodsVO.getGoods_photo();
		String[] photoFileNameList = new String[goodsPhoto.length];
		for(int i=0; i< goodsPhoto.length; i++) {
			if(goodsPhoto[i] == null) {	
			} else {
				String[] photoFileSplit = goodsPhoto[i].split("/");
				photoFileNameList[i] = photoFileSplit[photoFileSplit.length-1];
				System.out.println(photoFileNameList[i]);
			}
		}
		System.out.println(goodsPhoto.length);
		model.addAttribute("fileName", photoFileNameList); //goods에 등록한 사진이름
		model.addAttribute("fileLength", goodsPhoto.length); // goods에 등록한 사진 길이
		model.addAttribute("goods", writerGoodsVO); // seq로 가져온 goods
		model.addAttribute("goodsOptionList", goodsOptionList); //옵션 목록
		model.addAttribute("goodsCategory", goodsCategory);
		return "productModify";
	}
	
	// 작품 삭제
	@RequestMapping("/deleteGoods.wdo")
	public String deleteGoods(WriterGoodsVO goods, HttpSession session) {
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		System.out.println("작품 삭제처리");
		goodsService.deleteGoods(goods);
		goodsService.deleteOptions(goods.getGoods_code());
		String[] uploadedFileList = goods.getUploadedFileList();
		for(int i=0; i<uploadedFileList.length; i++) {
			String[] key = uploadedFileList[i].split("/");
			s3Service.delete("writer/"+sellerCode+"/goods/"+goods.getGoods_name()+"/"+key[key.length-1]);
		}
		return "redirect:/productManagement.wdo";
	}
	
	// 주문 상세
	@GetMapping("/productDetails.wdo")
	public String productDetails() {
		return "productDetails";
	}


}
