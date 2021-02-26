package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.study.springboot.dto.MemberDto;
@Mapper
public interface IMemberDao {
	public int insertMemberDao(MemberDto member); //새 회원 등록
	public int idCheckDao(@Param("id") String id);//아이디 중복 확인
	public int loginCheckDao(@Param("id") String id, @Param("pw") String pw);//로그인 확인
}
