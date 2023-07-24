package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class PayRefundVo {
	
	/** 구매내역 번호 */
	private int No;
	
	/** 사용자 번호 */
	private int mmbrNo;
	
	/** 상품 번호 */
	private int proNo;
	
	/** 구매 날짜 */
	private String addDt;
	
	/** 결제 방법 */
	private String payMethod;
	
	/** 결제 금액 */
	private int payAmount;
	
	/** 정기 구독 여부 */
	private String subYn;

}
