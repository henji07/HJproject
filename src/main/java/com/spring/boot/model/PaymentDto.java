package com.spring.boot.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDto {
	
	/** 결제 처리할 PG사 */
	private String pg;
	
	/** 결제 수단 */
	private String pay_method;
	
	/** 상점에서 관리하는 주문 번호 */
	private String imp_uid;
	
	/** 결제를 처리할 PG사 */
	private String merchant_uid;
	
	/** 결제 창에서 보여질 상품 이름 */
	private String name;
	
	/** 결제 금액 */
	private int amount;
	
	/** 구매자의 주소 */
	private String buyer_tel;
	
	/** 구매자의 주소 */
	private String buyer_addr;
	
	/** 구매자의 우편번호 */
	private String buyer_postcode;
	
	/** 구매자의 상세 주소 */
	private String buyer_detailAddr;
	
	/** 구매하는 상품의 ID 목록 */
	private List<Long> productId;
	
	/** 각 상품의 구매 수량 */
	private List<Integer> quantity;

}
