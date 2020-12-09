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
//------------------[   member   ]------------------
	
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
	
//------------------[   board    ]-------------------
	@RequestMapping("fruit_view")
	public String fruit_view() throws Exception {
		return "board/fruit_view";
	}
	
	@RequestMapping("buy")
	public String buy() throws Exception {
		return "board/buy";
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
	
//------------------[   nav    ]--------------------
	
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
//------------------[  footer  ]--------------------	
	
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
	
	
}
