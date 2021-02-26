package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDto {
	private String m_id; //회원아이디ㅇ
	private String m_name; //회원이름ㅇ
	private String m_password; //비밀번호ㅇ
	private String m_phone; //전화번호ㅇ
	private String m_address; //주소ㅇ
	private Date m_birth; //생년월일ㅇ
	private Date m_join; //가입일ㅇ
	private int m_point; //적립금
}
