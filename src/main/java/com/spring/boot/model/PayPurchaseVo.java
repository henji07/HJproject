package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class PayPurchaseVo {
	
	/** 환불 요청 번호 */
	private int refundNo;
	
	/** 사용자 번호 */
	private int mmbrNO;
	
	/** 결제내역 번호 */
	private int payNO;
	
	/** 환불 요청 날짜 */
	private String refundDt;
	
	/** 환불 사유 */
	private String refundRe;
	
	/** 환불 상태 */
	private int refundSt;

}
