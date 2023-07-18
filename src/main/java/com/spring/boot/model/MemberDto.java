package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class MemberDto {
	
	/** 회원 번호 */
	private int mmbrNo;
	
	/** 회원 아이디 */
	private String mmbrId;
	
	/** 회원 비밀번호 */
	private String mmbrPw;
	
	/** 회원 전화번호 */
	private String mmbrNum;
	
	/** 회원 닉네임 */
	private String mmbrNm;
	
	/** 회원 가입일 */
	private String mmbrJoinDt;
	
	/** 탈퇴 여부 */
	private String scdYn;
	
	/** 탈퇴 일자 */
	private String scdDt;
	
	/** 관리자 여부 */
	private String admYn;
	
	/** 등록자 식별자 */
	private String regrId;
	
	/** 등록 일자 */
	private String regrDt;
	
	/** 수정자 식별자 */
	private String udtrId;
	
	/** 수정 일자 */
	private String udtrDt;
	

}
