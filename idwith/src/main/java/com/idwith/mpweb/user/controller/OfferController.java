package com.idwith.mpweb.user.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

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
import com.idwith.mpweb.user.classUser.ClassCategoryVO;
import com.idwith.mpweb.user.classUser.service.ClassService;
import com.idwith.mpweb.user.common.S3Service;
import com.idwith.mpweb.user.GoodsApplyVO;
import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.service.ClassRegService;
import com.idwith.mpweb.user.service.GoodsService;
import com.idwith.mpweb.user.service.SellerViewService;
import com.idwith.mpweb.user.service.WatingService;

@Controller
public class OfferController {

	@Autowired
	private WatingService watingService;
	
	@Autowired
	private ClassRegService classRegService;
	
	@Autowired
	private ClassService classService;
	
	@Autowired
	private SellerViewService sellerViewService;
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private S3Service s3Service;
	
	@GetMapping("/offer_product.do")
	public String offerProduct(Model model) {
		List<GoodsCategoryVO> goodsCategoryVO = goodsService.getClassCategory();
		
		model.addAttribute("goodsCategoryList", goodsCategoryVO);
		return "offer_product";
	}
	
	@GetMapping("/offer_class.do")
	public String offerClass(HttpSession session, Model model) {
		//세션에 저장된 값으로 작가로 등록되어 있는지 확인
		//sellerCheck type : int --> 바로 String으로 가져올 시 오류 발생
		String seller_code = String.valueOf(session.getAttribute("sellerCheck"));

		//작가 등록이 되어있을 경우 작가 정보를 VO에 담고 model로 세팅
		if(seller_code != null) {
			UserSellerVO sellerInfo = sellerViewService.getSellerProfile(seller_code);
			model.addAttribute("sellerInfo", sellerInfo);
		}
        
		//등록된 카테고리 중 1개를 선택할 수 있게 카테고리DB를 가져옴
		List<ClassCategoryVO> categoryVO = classService.getClassCategory();
		model.addAttribute("categoryList", categoryVO);

		return "offer_class";
	}
	
		
	//작품 입점신청 컨트롤러
	@RequestMapping(value = "offer_success.do", method = RequestMethod.POST)
	public String offerSuccess(GoodsApplyVO goodsApplyVO, HttpSession session) {
		System.out.println("작품 입점 신청 컨트롤러 실행");
		
		//작가가 등록되어 있는지 확인
//		String seller_code = (String) session.getAttribute("sellerCheck");
//		
//		if(seller_code != null) {
//			goodsApplyVO.setGoods_apply_id(seller_code);
//		}
		watingService.insertWating(goodsApplyVO);
		
		
		return "offer_success";
	}
	
	//클래스 입점신청 성공화면 컨트롤러
	@RequestMapping(value = "offer_class_success.do", method = RequestMethod.POST)
	public String offerClassSuccess(ClassRegVO regVO, HttpSession session,  MultipartFile file) throws IOException {
		System.out.println("클래스 입점 신청 컨트롤러 실행");
		
		System.out.println("유저 아이디 : " + regVO.getUser_id());
		System.out.println("정보 : " + regVO.getClass_category());
		System.out.println("정보 : " + regVO.getClass_difficult());
		System.out.println("정보 : " + regVO.getStore_name());
		System.out.println("사업자 등록 번호 : " + regVO.getSeller_sellno());
		
		//세션에 저장된 값으로 작가로 등록되어 있는지 확인
		//sellerCheck type : int --> 바로 String으로 가져올 시 오류 발생
		String seller_code = String.valueOf(session.getAttribute("sellerCheck"));
		
		if(regVO != null) {
			if(seller_code != null) {
				regVO.setClass_seller(Integer.parseInt(seller_code));
			}
			
			
			String user_id = (String) session.getAttribute("email");

			InputStream is = file.getInputStream();
	        String uploadKey = file.getOriginalFilename();
	        String contentType = file.getContentType();
	        long contentLength = file.getSize();

	        String className = regVO.getClass_name();
	        
	        String bucket = "idwith/user/" + user_id +"/offerClass/"+ className; //s3경로 지정
	        s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
	        String filePath = "https://idwith.s3.ap-northeast-2.amazonaws.com/user/"+ user_id + "/offerClass/" + className +"/" + uploadKey;
			
	        String[] classImg = new String[1];
	        classImg[0] = filePath;
	        
			regVO.setClass_photo(classImg);
	        
			classRegService.insertClassReg(regVO);
		}
		return "offer_success";
	}
}
