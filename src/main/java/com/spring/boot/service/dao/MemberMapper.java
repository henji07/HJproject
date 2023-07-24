package com.spring.boot.service.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.spring.boot.model.MemberDto;
import com.spring.boot.model.MemberVo;

@Mapper
public interface MemberMapper {

	/* 회원가입 */
	public void joinMember(MemberDto dto);
	
	/* 회원 정보 얻기 */
	public MemberDto getMemberInfo(MemberDto dto);
	
	/* 로그인 */
	public MemberDto login(@Param("mmbrId") String mmbrId, @Param("mmbrPw") String mmbrPw);
	
	/* 아이디 존재 유무 체크 */
	public int idCheck(String mmbrId);

	/* 닉네임 존재 유무 체크 */
	public int nmCheck(String mmbrNm);

}
