package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class PayOrderVo {
	
	/** 주문 번호 */
	private int orderNo;
	
	/** 사용자 번호 */
	private int mmbrNo;
	
	/** 상품 번호 */
	private int proNo;
	
	/** 추가한 날짜 */
	private String addDt;

}
