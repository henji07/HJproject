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
	          pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력하면 기본 PG사가 띄워짐)
	          pay_method: "card", //지불 방법
	          merchant_uid: 'merchant_' + new Date().getTime(), //가맹점 주문번호-임의의 값, 주문 식별자이기 때문에 중복되지 않는 값으로 
	          name: "언어 영역", //결제창에 노출될 상품명
	          amount: 1,
	          buyer_email: "gildong@gmail.com",
	          buyer_name: "홍길동",
	          buyer_tel: "010-4242-4242",
	          buyer_addr: "서울특별시 강남구 신사동",
	          buyer_postcode: "01181",
	          //m_redirect_url : '{모바일에서 결제 완료 후 리디렉션 될 URL}' // 예: https://www.my-service.com/payments/complete/mobile
	      }, function(rsp) {
	    	  console.log(rsp);
	    	  console.log(rsp.merchant_uid)
	          // 결제검증
	          $.ajax({
	              type : "POST",
	              url : "/verifyIamport/" + rsp.imp_uid,
	          }).done(function(data) {

	              if(rsp.paid_amount == data.response.amount){
	                  alert("결제 및 결제검증완료");

	                  //결제 성공 시 비즈니스 로직

	              } else {
	                  alert("결제 실패");
	              }
	          });
	      });
	  }
	    function requestKcpPay() {
	        // IMP.request_pay(param, callback) 결제창 호출
	        IMP.request_pay({ // param
	            pg: "html5_inicis", //pg사명 or pg사명.CID (잘못 입력하면 기본 PG사가 띄워짐)
	            pay_method: "card", //지불 방법
	            merchant_uid: "iamport_test_id8", //가맹점 주문번호-임의의 값, 주문 식별자이기 때문에 중복되지 않는 값으로 
	            name: "언어 영역", //결제창에 노출될 상품명
	            amount: 1,
	            buyer_email: "gildong@gmail.com",
	            buyer_name: "홍길동",
	            buyer_tel: "010-4242-4242",
	            buyer_addr: "서울특별시 강남구 신사동",
	            buyer_postcode: "01181"
	            //m_redirect_url : '{모바일에서 결제 완료 후 리디렉션 될 URL}' // 예: https://www.my-service.com/payments/complete/mobile
	        }, function (rsp) { // callback
	        	console.log(rsp);
	            if (rsp.success) {
	          	  var msg = '결제가 완료되었습니다.';
	  		        msg += '고유ID : ' + rsp.imp_uid;
	  		        msg += '상점 거래ID : ' + rsp.merchant_uid;
	  		        msg += '결제 금액 : ' + rsp.paid_amount;
	  		        msg += '카드 승인번호 : ' + rsp.apply_num;
	            } else {
	                // 결제 실패 시 로직
	          	  var msg = '결제에 실패하였습니다.';
	  		      msg += '에러내용 : ' + rsp.error_msg;
	            }
	            alert(msg);
	        });
	      }
	   
	</script>


