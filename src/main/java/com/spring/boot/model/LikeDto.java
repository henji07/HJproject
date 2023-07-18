package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class LikeDto {
	
	/** 게시글 번호 */
	private int brdNo;
	
	/** 회원 번호 */
	private int mmbrNo;
	
	/** 등록자 식별자 */
	private String regrId;
	
	/** 등록 일자 */
	private String regrDt;

}
