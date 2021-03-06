package com.study.springboot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.service.IMemberService;

@Controller
public class MyController {
 
	@Autowired
	IMemberService member_service;
	
		@RequestMapping("/")
		public String root1() throws Exception {
			return "main";
		} 
		
		@RequestMapping("home")
		public String home() throws Exception {
			return "main";
		}
//------------------------[  MEMBER  ]-------------------------------------
	
		@RequestMapping("login")
		public String login() throws Exception {
			return "member/login";
		}
		@RequestMapping("id_Search")
		public String id_Search() throws Exception {
			return "member/id_Search";
		}
		@RequestMapping("pw_Search")
		public String pw_Search() throws Exception {
			return "member/pw_Search";
		}
		
		@RequestMapping("join_agree")
		public String join_agree() throws Exception {
			return "member/join_agree";
		}
		@RequestMapping("join")
		public String join() throws Exception {
			return "member/join";
		}
		@RequestMapping("MemberLogoutAction")
		public String MemberLogoutAction(HttpServletRequest req, Model model) throws Exception {
			int nResult = member_service.logout();
			
			if(nResult > 0) {
				System.out.println("로그아웃 성공");
				HttpSession session = req.getSession();
				session.invalidate();
				model.addAttribute("msg","정상적으로 로그아웃하셨습니다");
				model.addAttribute("url","/");
			}
			return "redirect";
		}
		
		@RequestMapping(value = "/MemberJoinAction", method = RequestMethod.POST)
		public String MemberJoinAction(HttpServletRequest req, Model model) throws Exception {
			req.setCharacterEncoding("UTF-8");

			int nResult = member_service.insertMember(req);
			if (nResult <= 0) {
				System.out.println("회원가입 실패");

				model.addAttribute("msg", "회원가입 실패");
				model.addAttribute("url", "/");
			} else {
				System.out.println("회원가입 성공");
				model.addAttribute("msg", "회원가입 성공");
				model.addAttribute("url", "/");
			}
			return "redirect";
		}
		@RequestMapping(value = "/IdCheckAction", method = RequestMethod.GET)
		public @ResponseBody String IdCheckAction(HttpServletRequest req, Model model) {

			int nResult = member_service.idCheck(req.getParameter("id"));

			if (nResult <= 0) {
				System.out.println("중복된 아이디 없음");
			} else {
				System.out.println("중복된 아이디 있음");
			}

			return String.valueOf(nResult);
		}
		@RequestMapping(value = "/MemberLoginAction", method = RequestMethod.POST)
		public String MemberLoginAction(HttpServletRequest req, Model model) {
			
			String id = req.getParameter("id");
			String pw = req.getParameter("password");

			int nResult = member_service.loginCheck(id, pw);

			if (nResult <= 0) {
				System.out.println("로그인 실패");
				model.addAttribute("msg","아이디 또는 비밀번호가 틀렸습니다.");
				model.addAttribute("url","login");
			}
			else {
				HttpSession session = req.getSession();
				session.setAttribute("sessionID", id);
				System.out.println(id);
				System.out.println("로그인 성공");
				model.addAttribute("msg","로그인 성공");
				model.addAttribute("url","/");
			}
			return "redirect";
		}
	 
//------------------------[  BOARD  ]----------------------------------
		
		@RequestMapping("fruit_view")
		public String fruit_view() throws Exception {
			return "board/fruit_view";
		}
		@RequestMapping("buy")
		public String buy() throws Exception {
			return "board/buy";
		}
		@RequestMapping("shipping_destination")
		public String shipping_destination() throws Exception {
			return "board/shipping_destination";
		}
		@RequestMapping("basket")
		public String basket() throws Exception {
			return "board/basket";
		}
		@RequestMapping("write")
		public String write() throws Exception {
			return "board/write";
		}
		@RequestMapping("service_content_view")
		public String service_content_view() throws Exception {
			return "board/service_content_view";
		}
		@RequestMapping("onetoone_content_view")
		public String onetoone_content_view() throws Exception {
			return "board/onetoone_content_view";
		}
		@RequestMapping("onetoone_update")
		public String onetoone_update() throws Exception {
			return "board/onetoone_content_view";
		}
		@RequestMapping("onetoone_view_delete")
		public String onetoone_view_delete() throws Exception {
			return "nav/onetoone_question";
		}
		@RequestMapping("onetoone_modify")
		public String onetoone_modify() throws Exception {
			return "board/onetoone_modify";
		}
		@RequestMapping("onetoone_delete")
		public String onetoone_delete() throws Exception {
			return "nav/onetoone_question";
		}
		@RequestMapping("membership")
		public String membership() throws Exception {
			return "board/membership";
		}
		@RequestMapping("/notice_onetoone_write")
		public String notice_onetoone_write() throws Exception {
			return "board/notice_onetoone_write";
		}
		@RequestMapping("/add_destination")
		public String add_destination() throws Exception {
			return "board/add_destination";
		}
		@RequestMapping("/destination_edit")
		public String destination_edit() throws Exception {
			return "board/destination_edit";
		}
		@RequestMapping("/destination_update")
		public String destination_update() throws Exception {
			return "board/shipping_destination";
		}
		@RequestMapping("/destination_delete")
		public String destination_delete() throws Exception {
			return "board/shipping_destination";
		}
		@RequestMapping("/place")
		public String place() throws Exception {
			return "board/place";
		}
		@RequestMapping("/place_update")
		public String place_update() throws Exception {
			return "board/buy";
		}
		@RequestMapping("/place_delete")
		public String place_delete() throws Exception {
			return "board/buy";
		}
		@RequestMapping("/write_review")
		public String write_review() throws Exception {
			return "board/write";
		}
		@RequestMapping("/write_question")
		public String write_question() throws Exception {
			return "board/write";
		}
		@RequestMapping("/review_writeAction")
		public String review_writeAction() throws Exception {
			return "board/fruit_view";
		}
		@RequestMapping("/select_review")
		public String select_review() throws Exception {
			return "board/select_review";
		}
		@RequestMapping("/payment")
		public String payment() throws Exception {
			return "board/payment";
		}
		@RequestMapping("/address_edit")
		public String address_edit() throws Exception {
			return "board/address_edit";
		}
		
//----------------------[  NAV  ]---------------------------------------
	
		@RequestMapping("/aboard_fruit")
		public String aboard_fruit() throws Exception {
			return "nav/aboard_fruit";
		}
		
		@RequestMapping("/event")
		public String event() throws Exception {
			return "nav/event";
		}
		
		@RequestMapping("/hot_fruit")
		public String hot_fruit() throws Exception {
			return "nav/hot_fruit";
		}
		
		@RequestMapping("/season_fruit")
		public String season_fruit() throws Exception {
			return "nav/season_fruit";
		}
		
		@RequestMapping("/service_center")
		public String service_center() throws Exception {
			return "nav/service_center";
		}
		@RequestMapping("/common_question")
		public String common_question() throws Exception {
			return "nav/common_question";
		}
		@RequestMapping("/onetoone_question")
		public String onetoone_question() throws Exception {
			return "nav/onetoone_question";
		}
		
//------------------------[  MYPAGE  ]--------------------------------------
		
		@RequestMapping("/mypage")
		public String mypage() throws Exception {
			return "mypage/mypage_order";
		}
		
		@RequestMapping("/mypage_update_check")
		public String mypage_update_check() throws Exception {
			return "mypage/update_check";
		}
		
		@RequestMapping("/MypagePasswordAction")
		public String update() throws Exception {
			return "mypage/update";
		}
		
		@RequestMapping("/mypage_order")
		public String mypage_order() throws Exception {
			return "mypage/mypage_order";
		}
		
		@RequestMapping("/mypage_basket")
		public String mypage_basket() throws Exception {
			return "mypage/mypage_basket";
		}
		
		@RequestMapping("/mypage_orderlist")
		public String mypage_orderlist() throws Exception {
			return "mypage/mypage_orderlist";
		}
		
		@RequestMapping("/goods_review")
		public String goods_review() throws Exception {
			return "mypage/goods_review";
		}

		@RequestMapping("/select_review_view")
		public String select_review_view() throws Exception {
			return "fruit_view";
		}

		@RequestMapping("/mypage_reivewaction")
		public String mypage_reivewaction() throws Exception {
			return "mypage/mypage_order";
		}
		
		@RequestMapping("/onetoone_writeAction")
		public String onetoone_writeAction() throws Exception {
			return "mypage/mypage_order";
		}

		@RequestMapping("/mypage_exchange")
		public String mypage_exchange() throws Exception {
			return "mypage/mypage_exchange";
		}
		
		@RequestMapping("/exchange_finish")
		public String exchange_finish() throws Exception {
			return "mypage/exchange_finish";
		}
		
//------------------------[  FOOTER  ]----------------------------------------	
	
		@RequestMapping("/footer_fruit")
		public String footer_fruit() throws Exception {
			return "footer/footer_fruit";
		}
		
		@RequestMapping("/footer_terms")
		public String footer_terms() throws Exception {
			return "footer/footer_terms";
		}
		
		@RequestMapping("/footer_personal")
		public String footer_personal() throws Exception {
			return "footer/footer_personal";
		}
	
//------------------------[  MANAGER  ]-----------------------------------------
// 관리자메인 
		@RequestMapping("/manager_main")
		public String manager_main() throws Exception {
			return "manager/manager_main";
		}
		@RequestMapping("/manager_info") // 관리자 정보
		public String manager_info() throws Exception {
			return "manager/manager_info";
		}
		@RequestMapping("/manager_modify") // 관리자 정보 수정
		public String manager_modify() throws Exception {
			return "manager/manager_modify";
		}
		@RequestMapping("/manager_orderlist") // 최근 주문내역 - 주문서
		public String manager_orderlist() throws Exception {
			return "manager/manager_orderlist";
		}
		@RequestMapping("/review_management") // 사용자 후기
		public String review_management() throws Exception {
			return "manager/review_management";
		}
		@RequestMapping("/review_content_view")
		public String review_content_view() throws Exception {
			return "manager/review_content_view";
		}
	
// 회원관리 - [회원 목록]
		@RequestMapping("/manager_member")
		public String manager_member() throws Exception {
			return "manager/manager_member";
		}
		@RequestMapping("/SecessionAction") //탈퇴
		public String SecessionAction() throws Exception {
			return "manager/manager_member";
		}
		@RequestMapping("/OptionsearchAction") //검색
		public String OptionsearchAction() throws Exception {
			return "manager/manager_member";
		}
		
// 회원관리 - [탈퇴 회원]
		@RequestMapping("/manager_secession")
		public String manager_secession() throws Exception {
			return "manager/manager_secession";
		}
// 주문 관리
		@RequestMapping("/order_management")
		public String order_management() throws Exception {
			return "manager/order_management";
		}
// 주문 관리 - [사용자 주문 상세 정보]
		@RequestMapping("/order_info")
		public String order_info() throws Exception {
			return "manager/order_info";
		}
// 상품관리 - [상품 목록]
		@RequestMapping("/goods_list")
		public String goods_list() throws Exception {
			return "manager/goods_list";
		}
		@RequestMapping("/GoodsDeleteAction")
		public String GoodsDeleteAction() throws Exception {
			return "manager/goods_list";
		}
		@RequestMapping("/GoodsSearchAction")
		public String GoodsSearchAction() throws Exception {
			return "manager/goods_list";
		}
		@RequestMapping("/goods_modifyAction")
		public String goods_modifyAction() throws Exception {
			return "manager/goods_contentview";
		}
		@RequestMapping("/goods_contentview")
		public String goods_contentview() throws Exception {
			return "manager/goods_contentview";
		}
		
// 상품관리- [상품 등록] 
		@RequestMapping("/goods_register")
		public String goods_register() throws Exception {
			return "manager/goods_register";
		}
		@RequestMapping("/registerAction")
		public String registerAction() throws Exception {
			return "manager/goods_list";
		}
		@RequestMapping("/goods_modify")
		public String goods_modify() throws Exception {
			return "manager/goods_modify";
		}
		
// 게시판관리 - [공지사항]
		@RequestMapping("/notice_management")
		public String notice_management() throws Exception {
			return "manager/notice_management";
		}
		@RequestMapping("/notice_management_modify")
		public String notice_management_modify() throws Exception {
			return "manager/notice_management_modify";
		}
		@RequestMapping("/notice_management_writeAction")
		public String notice_management_writeAction() throws Exception {
			return "manager/notice_management";
		}
		@RequestMapping("/notice_management_write")
		public String notice_management_write() throws Exception {
			return "manager/notice_management_write";
		}
		@RequestMapping("/manager_notice_view")
		public String manager_notice_view() throws Exception {
			return "manager/manager_notice_view";
		}
		@RequestMapping("/notice_management_deleteAction")
		public String notice_management_deleteAction() throws Exception {
			return "manager/notice_management";
		}
		
// 게시판관리 - [자주 묻는 질문]
		@RequestMapping("/manager_common_deleteAction")
		public String manager_common_deleteAction() throws Exception {
			return "manager/notice_common_question";
		}
		@RequestMapping("/notice_common_question")
		public String notice_common_question() throws Exception {
			return "manager/notice_common_question";
		}
		@RequestMapping("/manager_common_modify")
		public String manager_common_modify() throws Exception {
			return "manager/manager_common_modify";
		}
		@RequestMapping("/notice_common_writeAction") 
		public String notice_common_writeAction() throws Exception {
			return "manager/manager_common_question";
		}
		@RequestMapping("/notice_common_modifyAction")
		public String notice_common_modifyAction() throws Exception {
			return "manager/manager_common_question";
		}
		
// 게시판관리 - [1:1문의]
		@RequestMapping("/notice_onetoone_question")
		public String notice_onetoone_question() throws Exception {
			return "manager/notice_onetoone_question";
		}
		@RequestMapping("/notice_onetoone_view")
		public String notice_onetoone_view() throws Exception {
			return "manager/notice_onetoone_view";
		}
		@RequestMapping("/notice_onetoone_noanser")
		public String notice_onetoone_noanser() throws Exception {
			return "manager/notice_onetoone_question";
		}
		@RequestMapping("/manager_common_write")
		public String manager_common_write() throws Exception {
			return "manager/manager_common_write";
		}
// 게시판관리 - [ 교환 환불 ]
		@RequestMapping("/exchange_refund")
		public String exchange_refund() throws Exception {
			return "manager/exchange_refund";
		}
		@RequestMapping("/exchange_refund_content")
		public String exchange_refund_content() throws Exception {
			return "manager/exchange_refund_content";
		}
}
