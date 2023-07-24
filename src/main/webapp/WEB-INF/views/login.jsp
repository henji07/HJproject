<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>   
	<!-- header section start -->
	<jsp:include page="./header.jsp"></jsp:include>
	<!-- header section end -->
	
	<div class="container">
		<form id="loginForm" action="/login" method="post">
			<input type="hidden" id="message" value="${message }">
			<h3>로그인</h3>
			<div class="label-wrapper">
				<label for="mmbrId">아이디</label>
			</div>
			<input type="text" id="mmbrId" name="mmbrId" required>
			<div class="label-wrapper">
				<label for="mmbrPw">비밀번호</label>
			</div>
			<input type="password" id="mmbrPw" name="mmbrPw" required>
			<div style="display: block; margin: 20px auto;">
				<button type="button" id="btnLogin">로그인</button>
			</div>
		</form>
	</div>
	
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->
	
	<script type="text/javascript">
	$(document).ready(function() {
		//로그인 처리
		$("#btnLogin").on("click", function(e){
			e.preventDefault();
			login(); 
		});
	});
	
	//로그인 
	function login(){
		
		var mmbrId = $("#mmbrId").val();
		var mmbrPw = $("#mmbrPw").val();
		
		var data = {
		        mmbrId: mmbrId,
		        mmbrPw: mmbrPw
			};

		console.log(data);
		
        $.ajax({
            type: 'POST',
            url: "/login",
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function(result){
                console.log("111", result);
                if (result.flag == "success") {
                	
                	console.log("222" + result);
                    alert("로그인 성공");
                    location.href = '/';
                } else if (result.flag == "idNotExist") {
                    alert("아이디가 존재하지 않습니다.");
                    location.href = '/login';
                } else if (result.flag == "fail") {
                    alert("아아디 혹은 비밀번호를 확인하세요.");
                    location.href = '/login';
                }else {
                    alert("로그인 실패");
                    location.href = '/login';
                }
            },
            error: function(error){
                console.log(error);
            }
        });

	}

	</script>