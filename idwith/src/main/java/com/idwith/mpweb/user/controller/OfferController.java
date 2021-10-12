package com.idwith.mpweb.user.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.idwith.mpweb.user.ClassRegVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.GoodsApplyVO;
import com.idwith.mpweb.user.S3Service;
import com.idwith.mpweb.user.service.ClassRegService;
import com.idwith.mpweb.user.service.SellerViewService;
import com.idwith.mpweb.user.service.WatingService;

@Controller
public class OfferController {

	@Autowired
	private WatingService watingService;
	
	@Autowired
	private ClassRegService classRegService;
	
	@Autowired
	private SellerViewService sellerViewService;
	
	@Autowired
	private S3Service s3Service;
	
	@GetMapping("/offer_product.do")
	public String offerProduct() {
		return "offer_product";
	}
	
	@GetMapping("/offer_class.do")
	public String offerClass(HttpSession session, Model model) {
		
		try {
			//작가가 등록되어 있는지 확인
			Object sel_code = session.getAttribute("sellerCheck");
			String seller_code = sel_code.toString();
			
			
			if(seller_code.equals("")) {
				UserSellerVO sellerInfo = sellerViewService.getSellerProfile(seller_code);
				model.addAttribute("sellerInfo", sellerInfo);
			}
		}catch(NullPointerException e) {
			return "offer_class";
		}
		return "offer_class";
	}
	
		
	//작품 입점신청 컨트롤러
	@RequestMapping(value = "offer_success.do", method = RequestMethod.POST)
	public String offerSuccess(GoodsApplyVO goodsApplyVO, HttpSession session, MultipartFile file) throws IOException {
		System.out.println("작품 입점 신청 컨트롤러 실행");
		
		//작가가 등록되어 있는지 확인
//		String seller_code = (String) session.getAttribute("sellerCheck");
//		
//		if(seller_code != null) {
//			goodsApplyVO.setGoods_apply_id(seller_code);
//		}
		
		
		
		 InputStream is = file.getInputStream();
         String uploadKey = file.getOriginalFilename();
         String contentType = file.getContentType();
         long contentLength = file.getSize();

         String bucket = "idwith/user/goodsApply";
         s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
         String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/user/goodsApply/" + uploadKey;
         
         String[] photo = new String[1]; 
         
         photo[0]  = filePath;
         
         goodsApplyVO.setGoods_apply_photo(photo);
		
		watingService.insertWating(goodsApplyVO);
		
		return "offer_success";
	}
	
	//클래스 입점신청 컨트롤러
	@RequestMapping(value = "offer_class_success.do", method = RequestMethod.POST)
	public String offerClassSuccess(ClassRegVO regVO, HttpSession session) {
		System.out.println("클래스 입점 신청 컨트롤러 실행");
		
		System.out.println("유저 아이디 : " + regVO.getUser_id());
		System.out.println("정보 : " + regVO.getClass_category());
		System.out.println("정보 : " + regVO.getClass_difficult());
		System.out.println("정보 : " + regVO.getStore_name());
		System.out.println("사업자 등록 번호 : " + regVO.getSeller_sellno());
		
		//작가가 등록되어 있는지 확인
		Object sel_code = session.getAttribute("sellerCheck");
		String seller_code = sel_code.toString();
		
		if(regVO != null) {
			if(seller_code.equals("")) {
				regVO.setClass_seller(Integer.parseInt(seller_code));
			}
			classRegService.insertClassReg(regVO);
		}
		
		return "offer_success";
	}
}
