package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CommentDto {
	
	/** 댓글 번호 */
	private int cmmntNo;
	
	/** 상위 댓글 번호 */
	private int upCmmntNo;
		
	/** 게시글 번호 */
	private int brdNo;
	
	/** 댓글 작성 회원 번호 */
	private int wrtMmbrNo;
	
	/** 댓글 내용 */
	private int cmmntContent;
	
	/** 댓글 등록일자 */
	private int cmmntDt;
	
	/** 댓글 삭제 여부 */
	private int cmmntDlYn;
	
	/** 댓글 삭제 일자 */
	private int cmmntDlDt;
	
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
