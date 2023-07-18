package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class BoardVo {

	/** 게시글 번호 */
	private int brdNo;
	
	/** 상위 게시글 번호 */
	private int upBrdNo;
	
	/** 글 작성 회원 번호 */
	private int wrtMmbrNo;
	
	/** 게시글 제목 */
	private String brdTitle;
	
	/** 게시글 내용 */
	private String brdContent;
	
	/** 게시글 등록일 */
	private String brdDt;
	
	/** 게시글 조회수 */
	private int brdCnt;
	
	/** 게시글 좋아요 수 */
	private int brdLikeCnt;
	
	/** 글 삭제 여부 */
	private String brdDlYn;
	
	/** 글 삭제 일자 */
	private String brdDlDt;
	
	/** 삭제자 회원 번호 */
	private int dlMmbrNo;
	
	/** 등록자 식별자 */
	private String regrId;
	
	/** 등록 일자 */
	private String regrDt;
	
	/** 수정자 식별자 */
	private String udtrId;
	
	/** 수정 일자 */
	private String udtrDt;
}
