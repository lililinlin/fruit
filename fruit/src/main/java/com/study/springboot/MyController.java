package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
 
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
		public String MemberLogoutAction() throws Exception {
			return "main";
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
			return "mypage/update_check";
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

}
