package com.idwith.mpweb.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.admin.ClassProposeInfoVO;
import com.idwith.mpweb.admin.EmailDTO;
import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.admin.UserListVO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.admin.service.AdminService;
import com.idwith.mpweb.admin.service.ClassSellerService;
import com.idwith.mpweb.admin.service.EmailService;
import com.idwith.mpweb.admin.service.GoodsSellerService;
import com.idwith.mpweb.admin.service.ProposeService;
import com.idwith.mpweb.admin.service.SellerService;
import com.idwith.mpweb.admin.service.UserListService;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.ClassRegVO;
import com.idwith.mpweb.user.GoodsApplyVO;

@Controller
public class managementController {
	@Autowired
	private ProposeService proposeService;

	@Autowired
	private SellerService sellerService;

	@Autowired
	private EmailService emailService;

	@Autowired
	private UserListService userListService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private GoodsSellerService goodsSellerService;
	
	@Autowired
	private ClassSellerService classSellerService;
	
	
	// 회원 
	@RequestMapping("/user.mdo")
	public String getUserContent(UserListVO userList, Model model) {
		System.out.println("사용자 상세보기 출력");
		System.out.println("내용 출력 ID : " + userList.getUserId());
		model.addAttribute("userList", userListService.getUserContent(userList));
		return "user";
	}

	@GetMapping("/userList.mdo")
	public String adminUserList(PagingVO pagination, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {

		System.out.println("사용자 리스트 출력");

		int userListTotal = userListService.countUserList();

		System.out.println("userTotal : " + userListTotal);

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		pagination = new PagingVO(userListTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		model.addAttribute("paging", pagination);
		model.addAttribute("UserListAll", userListService.getUserList(pagination));

		return "userList";
	}

	/** 검색 리스트 처리 */
	@GetMapping("/searchUser.mdo")
	public String getSearchUser(PagingVO pagination, Model model, UserListVO userList,
			@RequestParam(required = false, value = "nowPage") String nowPage,
			@RequestParam(required = false, value = "cntPerPage") String cntPerPage) {

		System.out.println(pagination.getSearchCondition());

		int cnt = userListService.getSearchUserCnt(userList.getSearchKeyword());

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		pagination = new PagingVO(cnt, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),
				pagination.getSearchCondition(), pagination.getSearchKeyword());

		List<UserListVO> pagingList = userListService.getSearchUser(pagination);

		model.addAttribute("paging", pagination);
		model.addAttribute("UserListAll", pagingList);
		model.addAttribute("cnt", cnt);

		return "userList";
	}

	// 블락 처리
	@RequestMapping(value = "/blockUpdate.mdo", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String blockUpdate(HttpServletRequest request) {
		String userId = request.getParameter("userId");
		int result = 0;

		result = userListService.blockUpdate(userId);

		return Integer.toString(result);
	}

	// 복원 처리
	@RequestMapping(value = "/blockCancel.mdo", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String blockCancel(HttpServletRequest request) {
		String userId = request.getParameter("userId");
		int result = 0;

		result = userListService.blockCancel(userId);

		return Integer.toString(result);
	}

	// 작가
	@GetMapping("/storePropose.mdo")
	public String storePropose(Model model) {
		List<GoodsApplyVO> goodsApplyList = proposeService.getWatingClient();
		List<ClassRegVO> classRegList = proposeService.getClassRegList();

		model.addAttribute("goodsApplyList", goodsApplyList);
		model.addAttribute("classRegList", classRegList);

		return "storePropose";
	}

	// ��ǰ ���� ���� �޼���
	@RequestMapping(value = "/storeProposeState.mdo", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String storeProposeState(HttpServletRequest request) {
		String seq = request.getParameter("seq");
		String agree = request.getParameter("agree");
		String disagree = request.getParameter("disagree");
		String store = request.getParameter("store");
		int result = 1;


		if(agree != null) { 
			if(store.equals("class")) {
				result = proposeService.updateAgreeStatus(seq);
			}else if(store.equals("goods")) {
				result = proposeService.updateAgree(seq);
			}
		}else if(disagree != null) { 
			if(store.equals("class")) {
				result = proposeService.updateDisagreeStatus(seq);
			}else if(store.equals("goods")) {
				result = proposeService.updateDisagree(seq);
			}
		}

		System.out.println("result 값 : " + result);
		return Integer.toString(result);
	}

	// �۰� ����� ���� �޼���
	@RequestMapping(value = "/sellerInsert.mdo", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String sellerInsert(HttpServletRequest request) {
		System.out.println("작가 등록 컨트롤러 실행");
		
		String user_id = request.getParameter("user_id");
		
		SellerVO vo = new SellerVO();
		ClassRegVO classRegVO = new ClassRegVO();
		
		vo = sellerService.sellerEnCheck(user_id);
		
		if(vo != null) {//작가에 등록이 되어있는 경우
			sellerService.updateSellerStatus(user_id);
			classRegVO.setClass_seller(vo.getSeller_code());
			classRegVO.setStore_name(vo.getSeller_name());
			classRegVO.setSeller_sellno(vo.getSeller_sellno());
			classRegVO.setUser_id(vo.getUser_id());
			proposeService.updateStatus(classRegVO);
		}else if(vo == null) { //작가에 등록이 되어있지 않은 경우
			try {
				int randomCode = (int) (Math.random() * 900000) + 100000;
				SellerVO sellerVO = new SellerVO();
				sellerVO.setSeller_code(randomCode);
				sellerVO.setUser_id(user_id);
				sellerVO.setSeller_name(request.getParameter("seller_name"));
				sellerVO.setSeller_sellno(request.getParameter("seller_sellno"));
				sellerService.insertSeller(sellerVO);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return Integer.toString(1);
	}

	// 입점 승인 후 이메일 보내기
	@RequestMapping(value = "/sendEmail.mdo", method = RequestMethod.GET)
	@ResponseBody
	public String sendEmail(HttpServletRequest request) {
		System.out.println("이메일 전송 컨트롤러 실행");
		EmailDTO dto = new EmailDTO();

		System.out.println("이메일 받는 아이디 : " + request.getParameter("user_id"));
		
		int result = 0;
		String agree = request.getParameter("agree");
		String disagree = request.getParameter("disagree");
		dto.setSenderMail("idwithproject@gmail.com");
		dto.setReceiveMail(request.getParameter("user_id"));
		
		if(agree != null) {//���� ����
			dto.setSubject("Idwith 입점 승인 안내");
			result = 1;
		}else if(disagree != null) {//���� ����
			dto.setSubject("Idwith 입점 거부 안내");
			result = 0;
		}
		
		Object state = request.getParameter("result");
		
		if(state != null) {
			String blockState = state.toString();
			if(Integer.parseInt(blockState) == 2) {
				dto.setSubject("[IDWITH] 계정 BLOCK 처리 안내");
				result = 2;
			}
			
			if(Integer.parseInt(blockState) == 3) {
				dto.setSubject("[IDWITH] 계정 복원 처리 안내");
				result = 3;
			}
		}
		
		emailService.sendMail(dto, result);
		
		
		System.out.println("컨트롤러에서 이메일 보내기 완료");
		
		return Integer.toString(1);
	}

	@GetMapping("/productPropose.mdo")
	public String productPropose(GoodsApplyVO goodsApply, Model model, 
			@RequestParam(value = "goods_apply_seq")int goodsApplySeq) {
		
		model.addAttribute("goodsApplyInfo", proposeService.getproductPropose(goodsApplySeq));
		
		return "productPropose";
	}
	
	/**클래스 입점신청 상세보기*/
	@RequestMapping("/classPropose.mdo")
	public String classPropose(ClassProposeInfoVO classProposeInfo, Model model,
			@RequestParam(value = "class_reg_seq")int classRegseq) {
		System.out.println("클래스 입점신청 상세보기 controller");
		System.out.println("ID : " + classProposeInfo.getClassSeller());
		model.addAttribute("classProposeInfo", proposeService.getClassProposeInfo(classRegseq));
		return "classPropose";
	}
	
	// 관리자 계정 리스트
	@GetMapping("/adminList.mdo")
	public String adminList(PagingVO pagination, Model model, 
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		System.out.println("관리자 계정 리스트 controller");
		
		int adminListTotal = adminService.countAdmin();
		
		System.out.println("관리자 total : " + adminListTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		pagination = new PagingVO(adminListTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagination);
		model.addAttribute("AdminViewAll", adminService.getAdminList(pagination));
		
		return "adminList";
	}
	
	// 관리자 계정 등록 뷰
	@GetMapping("/insertAdmin.mdo")
	public String insertAdmin() {
		return "insertAdmin";
	}
	
	// 관리자 계정 등록 처리
	@RequestMapping("/adminInsertList.mdo")
	public String adminInsertList(AdminVO admin) {
		System.out.println("관리자 계정 등록 controller");
		adminService.insertAdmin(admin);
		return "redirect:/adminList.mdo";
	}
	
	// 관리자 계정 상세보기
	@RequestMapping("/adminContent.mdo") 
	public String adminContent(AdminVO admin, Model model, 
			@RequestParam(value = "admin_id")String adminId) {
		System.out.println("관리자 상세보기 controller");
		model.addAttribute("adminList", adminService.getAdminContent(adminId));
		return "adminContent";
	}
	
	// 관리자 계정 수정
	@RequestMapping("/adminUpdateList.mdo")
	public String adminUpdateList(AdminVO admin, HttpSession session) {
		System.out.println("관리자 계정 수정 controller");
		String adminName = (String)session.getAttribute("admin_name");
		String adminRole = (String)session.getAttribute("admin_role");
		System.out.println("admin pwd : " + admin.getAdmin_pwd());
		System.out.println("받아온 아이디 값 : " + admin.getAdmin_id());
		admin.setAdmin_name(adminName);
		if(adminRole.equals("all")) {
			adminService.updateSuperAdmin(admin);
		} else {
			adminService.updateAdmin(admin);
		}
		
		return "redirect:/adminList.mdo";
	}
	
	// 관리자 계정 삭제
	@RequestMapping("/adminDeleteList.mdo")
	public String adminDeleteList(AdminVO admin) {
		System.out.println("관리자 계정 삭제 controller");
		adminService.deleteAdmin(admin);
		return "redirect:/adminList.mdo";
	}
	
	//작가 리스트 
	@GetMapping("/writerList.mdo")
	public String writerList(Model model,
			@RequestParam(value =  "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		int goodsSellerTotal = goodsSellerService.countGoodsSeller();
		int classSellerTotal = classSellerService.countClassSeller();
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		PagingVO goodsPagination = new PagingVO(goodsSellerTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		PagingVO classPagination = new PagingVO(classSellerTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<WriterVO> goodsSellerList = goodsSellerService.getGoodsSellerList(goodsPagination);
		List<WriterVO> classSellerList = classSellerService.getClassSellerList(classPagination);
		
		model.addAttribute("goodsPagination", goodsPagination);
		model.addAttribute("goodsSellerList", goodsSellerList);
		
		model.addAttribute("classPagination", classPagination);
		model.addAttribute("classSellerList", classSellerList);
		
		return "writerList";
	}

	@GetMapping("/productWriter.mdo")
	public String productWriter(Model model, WriterVO writer,
			@RequestParam(value = "sellerCode")Integer sellerCode) {
		
		model.addAttribute("goodsSeller", goodsSellerService.getSellerContent(sellerCode));
		
		return "productWriter";
	}

	@GetMapping("/classWriter.mdo")
	public String classWriter(Model model, WriterVO writer,
			@RequestParam(value = "sellerCode")Integer sellerCode) {
		
		model.addAttribute("classSeller", classSellerService.getClassSellerContent(sellerCode));
		
		return "classWriter";
	}
	
	@GetMapping("/searchWriter.mdo")
	public String getSearchWriter(Model model, WriterVO writer, PagingVO pagination,
			@RequestParam(required = false, value = "nowPage") String nowPage,
			@RequestParam(required = false, value = "cntPerPage") String cntPerPage) {
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		int countGoodsSearchCnt = goodsSellerService.getGoodsSearchCnt(writer.getSearchKeyword());
		int countClassSearchCnt = classSellerService.getClassSearchCnt(writer.getSearchKeyword());
		
		PagingVO goodsSearchPagination = new PagingVO(countGoodsSearchCnt, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), pagination.getSearchCondition(), pagination.getSearchKeyword());
		PagingVO classSearchPagination = new PagingVO(countClassSearchCnt, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), pagination.getSearchCondition(), pagination.getSearchKeyword());
		
		List<WriterVO> goodsPagingList = goodsSellerService.getSearchGoodsWriter(goodsSearchPagination);
		List<WriterVO> classPagingList = classSellerService.getSearchClassWriter(classSearchPagination);
		
		model.addAttribute("goodsSearchPagination", goodsSearchPagination);
		model.addAttribute("goodsPagingList", goodsPagingList);
		model.addAttribute("countGoodsSearchCnt", countGoodsSearchCnt);
		
		model.addAttribute("classSearchPagination", classSearchPagination);
		model.addAttribute("classPagingList", classPagingList);
		model.addAttribute("countClassSearchCnt", countClassSearchCnt);
				
		return "writerList";
		
	}
	
}
