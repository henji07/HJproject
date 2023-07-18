package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class SchedulVo {
	
	/** 공연 일자 */
	private String playDt;
	
	/** 일정 순번 */
	private String playSno;
	
	/** 내용 */
	private String content;
	
	/** 작성자 번호 */
	private String wrtMmbrNo;
	
	/** 등록자 식별자 */
	private String regrId;
	
	/** 등록 일자 */
	private String regrDt;
	
	/** 수정자 식별자 */
	private String udtrId;
	
	/** 수정 일자 */
	private String udtrDt;

}
