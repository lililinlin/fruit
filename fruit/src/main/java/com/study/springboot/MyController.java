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
	
	@RequestMapping("join_agree")
	public String join() throws Exception {
		return "member/join_agree";
	}
	
	@RequestMapping("MemberLogoutAction")
	public String MemberLogoutAction() throws Exception {
		return "main";
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
