<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

	<!-- header section start -->
	<jsp:include page="./header.jsp"></jsp:include>
	<!-- header section end -->
 	
 	<div class="container">
		<button onclick="requestKakaoPay()">카카오 페이</button>
		<button onclick="requestKcpPay()">kcp</button>
	</div>
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->
	 
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script type="text/javascript">
		var IMP = window.IMP;
		IMP.init("imp31057650"); // 예: imp00000000
		
		function requestKakaoPay() {
		      // IMP.request_pay(param, callback) 결제창 호출
		      IMP.request_pay({ // param
		          pg: "kakaopay.TCSUBSCRIP", //pg사명 or pg사명.CID (잘못 입력하면 기본 PG사가 띄워짐)
		          pay_method: "card", //지불 방법
		          merchant_uid: 'merchant_' + new Date().getTime(), //가맹점 주문번호-임의의 값, 주문 식별자이기 때문에 중복되지 않는 값으로 
		          name: "언어 영역", //결제창에 노출될 상품명
		          amount: 1,
		          customer_uid: 'your-customer-unique-id', // 필수 입력.
		          buyer_email: "gildong@gmail.com",
		          buyer_name: "홍길동",
		          buyer_tel: "010-4242-4242",
		          buyer_addr: "서울특별시 강남구 신사동",
		          buyer_postcode: "01181",
		          //m_redirect_url : '{모바일에서 결제 완료 후 리디렉션 될 URL}' // 예: https://www.my-service.com/payments/complete/mobile
		      }, function(rsp) {
		    	  console.log(rsp);
		        	if (rsp.success) {
		                alert('빌링키 발급 성공');
		            } else {
		                alert('빌링키 발급 실패');
		            }
		      });
		  }
		
	    function requestKcpPay() {
	        // IMP.request_pay(param, callback) 결제창 호출
	        IMP.request_pay({ // param
	        	pg: 'kcp_billing',
	            pay_method: 'card', // 'card'만 지원됩니다.
	            merchant_uid: "order_monthly_0001", // 상점에서 관리하는 주문 번호
	            name: '최초인증결제',
	            amount: 1, // 결제창에 표시될 금액. 실제 승인이 이뤄지지는 않습니다. (PC에서는 가격이 표시되지 않음)
	            customer_uid: 'your-customer-unique-id', // 필수 입력.
	            buyer_email: 'iamport@siot.do',
	            buyer_name: '아임포트',
	            buyer_tel: '02-1234-1234',
	            m_redirect_url: '{모바일에서 결제 완료 후 리디렉션 될 URL}' // 예: https://www.my-service.com/payments/complete/mobile
	        }, function (rsp) { // callback
	        	console.log(rsp);
	        	if (rsp.success) {
	                alert('빌링키 발급 성공');
	            } else {
	                alert('빌링키 발급 실패');
	            }
	        });
	      }
	   
	</script>


