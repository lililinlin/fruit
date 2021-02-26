package com.study.springboot.service;

import javax.servlet.http.HttpServletRequest;

public interface IMemberService {
	public int insertMember(HttpServletRequest req);
	public int idCheck(String id);
	public int loginCheck(String id, String pw);
	public int logout();
}
