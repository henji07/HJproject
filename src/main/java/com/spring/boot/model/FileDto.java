package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class FileDto {
	
	/** 파일 번호 */
	private int fileNo;
	
	/** 게시글 번호 */
	private int brdNo;
	
	/** 물리 파일명 */
	private String fileStoreNm;
	
	/** 파일 원래 이름 */
	private String fileOriginNm;
	
	/** 파일 종류 */
	private int fileCate;
	
	/** 파일 사이즈 */
	private int fileSize;
	
	/** 파일 확장자 */
	private String fileExt;
	
	/** 등록자 식별자 */
	private String regrId;
	
	/** 등록 일자 */
	private String regrDt;
	
	/** 수정자 식별자 */
	private String udtrId;
	
	/** 수정 일자 */
	private String udtrDt;

}
