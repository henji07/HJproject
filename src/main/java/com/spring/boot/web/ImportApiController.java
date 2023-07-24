package com.spring.boot.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import com.spring.boot.model.PayOrderDto;
import com.spring.boot.model.PayPurchaseDto;
import com.spring.boot.model.PayRefundDto;
import com.spring.boot.model.PaymentDto;
import com.spring.boot.service.PaymentService;



@Controller
public class ImportApiController {
	
//	@Autowired
//	private PaymentService paymentService;
	
	private IamportClient api;

	public ImportApiController() {
		System.out.println("=================1111111111111111111111111");
    	// REST API 키와 REST API secret 를 아래처럼 순서대로 입력한다.
		this.api = new IamportClient("7044742056875226","VKH6urD8XiGQZB2ekvhI0xZIn6GaAv6NOo9lS9mZaTS4lhl9TakV0QDxuiA1sUDI30GaPAobOpqpumwN");
	}
	
	/* 결제창 호출 테스트 */
	@GetMapping("/payment")
    public String payForm() {

        return "pay_test";
    }
	
	/* 결제창 호출 테스트 */
	@GetMapping("/payment2")
    public String payForm2() {

        return "pay_test2";
    }
	
	/* api에서 정보 받아오기 - 일반 */
	@ResponseBody
	@RequestMapping(value="/verifyIamport/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(@PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
	{	
		System.out.println("111");
		System.out.println("imp_uid:" + imp_uid);
			return api.paymentByImpUid(imp_uid);
	}
	
	/* api에서 정보 받아오기 */
	@ResponseBody
	@RequestMapping(value="/api/subscribe/payments")
	public IamportResponse<Payment> paymentSub() throws IamportResponseException, IOException {	
		System.out.println("111");
		System.out.println("imp_uid:" + imp_uid);
			return api.paymentByImpUid(imp_uid);
	}
	
	
	/* 서버에 정보 찍어주기 */
	
	
	//1. 어떤 테이블에 넣을 건지 
	//2. 어떤 역할을 할 건지
	//3. 데이터 어떻게 받아올 건지 

//	// 주문 생성 및 결제 처리
//	@PostMapping("/order")
//	public String order(@RequestBody PayOrderDto payOrderDto, 
//	                    @RequestBody PaymentDto paymentDto,
//	                    @RequestBody PayPurchaseDto payPurchaseDto,
//	                    @RequestBody PayRefundDto payRefundDto) {
//
//	    // Step 1: 주문 생성
//	    // 주문 객체 생성 (이 부분은 서비스 로직에서 수행되어야 한다.)
//	    // Database에 주문 정보 저장 (이 부분은 실제 코드에서 데이터베이스 연동이 필요하다)
//
//	    // Step 2: 결제 처리
//	    // 결제 요청 데이터 생성
//	    Map<String, Object> data = new HashMap<>();
//	    data.put("pg", paymentDto.getPg());
//	    data.put("pay_method", paymentDto.getPay_method());
//	    data.put("merchant_uid", paymentDto.getMerchant_uid());
//	    data.put("name", paymentDto.getName());
//	    data.put("amount", paymentDto.getAmount());
//	    data.put("buyer_tel", paymentDto.getBuyer_tel());
//	    data.put("buyer_addr", paymentDto.getBuyer_addr());
//	    data.put("buyer_postcode", paymentDto.getBuyer_postcode());
//	    data.put("buyer_detailAddr", paymentDto.getBuyer_detailAddr());
//
//	    // 결제 요청 (이 부분은 실제 코드에서 아임포트 API 연동이 필요합니다)
//	    // 결제 결과에 따라 주문 상태 업데이트 (이 부분은 실제 코드에서 데이터베이스 연동이 필요합니다)
//
//	    return "redirect:/";
//	}
}
