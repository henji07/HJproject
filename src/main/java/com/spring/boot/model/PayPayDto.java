package com.spring.boot.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class PayPayDto {
	
	/** 결제 번호 */
	private int payNo;
	
	/** 사용자 번호 */
	private int mmbrNO;
	
	/** 구매내역 번호 */
	private int prchsNO;
	
	/** 결제 날짜 */
	private String payDt;
	
	/** 결제 방법 */
	private String payMethod;
	
	/** 결제 금액 */
	private int payAmount;

}
