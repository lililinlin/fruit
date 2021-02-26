package com.study.springboot.service;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IMemberDao;

import com.study.springboot.dto.MemberDto;

@Service
public class MemberService implements IMemberService{
	@Autowired
	IMemberDao memberDao;
	@Autowired
	MemberDto memberDto;
	@Override
	public int insertMember(HttpServletRequest req) {
		// TODO Auto-generated method stub
		memberDto.setM_id(req.getParameter("id")); //아이디
		memberDto.setM_password(req.getParameter("password")); //비밀번호
		memberDto.setM_name(req.getParameter("name")); //이름
		memberDto.setM_phone(req.getParameter("phone")); //전화번호
		
		//생년월일
		String year = req.getParameter("birth_year");
		String month = req.getParameter("birth_month");
		String day = req.getParameter("birth_day");
		
		int yearInt = Integer.parseInt(year);
		int monthInt = Integer.parseInt(month);
		int dayInt = Integer.parseInt(day);
		
		Date date = new Date(yearInt,monthInt,dayInt);
		memberDto.setM_birth(date);
		
		//주소
		String add1 = req.getParameter("add1");
		String add2 = req.getParameter("add2");
		String add3 = req.getParameter("add3");
		String add4 = req.getParameter("add4");
		
		String address = add1 + add2 + add3 + add4;
		memberDto.setM_address(address);
		
		//가입일
		memberDto.setM_join(new Date());//현재시간
		/*
		 * SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일");
		 * 
		 * Date time = new Date();
		 * 
		 * String time1 = format.format(time);
		 * 
		 * String piece1 = time1.substring(0,4); String piece2 = time1.substring(6,8);
		 * String piece3 = time1.substring(10,12);
		 * 
		 * int pieceInt1 = Integer.parseInt(piece1); int pieceInt2 =
		 * Integer.parseInt(piece2); int pieceInt3 = Integer.parseInt(piece3);
		 * 
		 * Date currentTime = new Date(pieceInt1,pieceInt2,pieceInt3);
		 * memberDto.setM_join(currentTime);
		 */
		//적립금
		int point = 0;
		memberDto.setM_point(point);
		int nResult = memberDao.insertMemberDao(memberDto);
		return nResult;
	}

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		int nResult = memberDao.idCheckDao(id);
		return nResult;
	}

	@Override
	public int loginCheck(String id, String pw) {
		// TODO Auto-generated method stub
		int nResult = memberDao.loginCheckDao(id, pw);
		return nResult;
	}

	@Override
	public int logout() {
		// TODO Auto-generated method stub
		return 1;
	}

}
