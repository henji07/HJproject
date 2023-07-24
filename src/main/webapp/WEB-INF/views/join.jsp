<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<!-- header section start -->
	<jsp:include page="./header.jsp"></jsp:include>
	<!-- header section end -->
	
	<div class="container">
		<form id="joinForm" action="/join" method="post">
			<input type="hidden" id="joinMsg" value="${joinMsg }">
			<h3>회원가입</h3>
			<div class="label-wrapper">
				<label for="mmbrId">아이디</label>
			</div>
			<div>
				<input type="text" id="mmbrId" name="mmbrId" required style="width: auto;">
				<button type="button" id="btnIdCheck" style="width: 70px">중복체크</button>
			</div>
			<div class="label-wrapper">
				<label for="mmbrPw">비밀번호</label>
			</div>
			<input type="password" id="mmbrPw" name="mmbrPw" required>
			<p id="pwValidation" style="color: red; font-size: 0.8rem;">
				비밀번호는 영문자, 숫자, 특수문자 조합의 9자리 이상으로 설정해주세요.
			</p>
			<div class="label-wrapper">
				<label for="mmbrPwCheck">비밀번호 확인</label>
			</div>
			<input type="password" id="mmbrPwCheck" name="mmbrPwCheck" required>
			<p id="pwCheckResult" style="font-size: 0.8rem;"></p>
			
			<div class="label-wrapper">
				<label for="mmbrNm">닉네임</label>
			</div>
			<input type="text" id=mmbrNm name="mmbrNm" required>
			<button type="button" id="btnNmCheck" style="width: 70px">중복체크</button>
			
			<div class="label-wrapper">
				<label for="mmbrNum">전화번호</label>
			</div>
			<input type="text" id="mmbrNum" name="mmbrNum" placeholder="숫자만 입력하세요.">
			
			<div style="display: block; margin: 20px auto;">
				<button type="submit">회원가입</button>
			</div>
		</form>
	</div>
	
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->
	
 	<script>
		$(function() {
			$("#pwValidation").hide();
			$("#pwCheckResult").hide();
			
			//joinForm 서브밋될 때 유효성검사해줄 변수들
			//id중복체크 여부
			let checkId = false;
			//닉네임 중복 체크 여부
			let checkNm = false;
			//비밀번호 유효성 검사 여부
			let pwValidation = false;
			//비밀번호 일치 여부
			let checkPw = false;
			
			//id 중복체크
			$("#btnIdCheck").on("click", () => {
				if($("#mmbrId").val() === "") {
					alert("아이디를 입력하세요.");
					$("#mmbrId").focus();
					return;
				}
				
				$.ajax({
					url: "/idCheck",
					type: "post",
					data: $("#joinForm").serialize(),
					success: (obj) => {
						console.log(obj);
						//JSON.parse(): json String을 json 데이터로 변환
						console.log(JSON.parse(obj));
						const jsonObj = JSON.parse(obj);
						
						if(jsonObj.msg === "duplicatedId") {
							checkId = false;
							alert("중복된 아이디입니다.");
							$("#mmbrId").focus();
						} else {
							if(confirm("사용가능한 아이디입니다. " + $("#mmbrId").val() 
									+ "를(을) 사용하시겠습니까?")) {
								checkId = true;
								$("#btnIdCheck").attr("disabled", true);
							}
						}
					},
					error: (error) => {
						console.log(error);
					}
				});
			});
			
			//중복체크 이후 아이디 변경했을 때 다시 중복체크되도록
			$("#mmbrId").on("change", () => {
				checkId = false;
				$("#btnIdCheck").attr("disabled", false);
			});
			
			//닉네임 중복체크
			$("#btnNmCheck").on("click", () => {
				if($("#mmbrNm").val() === "") {
					alert("닉네임을 입력하세요.");
					$("#mmbrNm").focus();
					return;
				}
				
				$.ajax({
					url: "/nmCheck",
					type: "post",
					data: $("#joinForm").serialize(),
					success: (obj) => {
						console.log(obj);
						//JSON.parse(): json String을 json 데이터로 변환
						console.log(JSON.parse(obj));
						const jsonObj = JSON.parse(obj);
						
						if(jsonObj.msg === "duplicatedId") {
							checkNm = false;
							alert("중복된 닉네임입니다.");
							$("#mmbrNm").focus();
						} else {
							if(confirm("사용가능한 닉네임입니다. " + $("#mmbrNm").val() 
									+ "를(을) 사용하시겠습니까?")) {
								checkNm = true;
								$("#btnNmCheck").attr("disabled", true);
							}
						}
					},
					error: (error) => {
						console.log(error);
					}
				});
			});
			
			//중복체크 이후 닉네임 변경했을 때 다시 중복체크되도록
			$("#mmbrNm").on("change", () => {
				checkNm = false;
				$("#btnNmCheck").attr("disabled", false);
			});
			
			
			//비밀번호 유효성검사 정규식
			 const validatePassword = (character) => {
				return /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*+=-])(?=.*[0-9]).{9,}$/.test(character);
			}
			
			//비밀번호 변경시 유효성 검사
			 $("#mmbrPw").on("change", () => {
				if(validatePassword($("#mmbrPw").val())) {
					pwValidation = true;
					$("#pwValidation").hide();
				} else {
					pwValidation = false;
					$("#pwValidation").show();
					$("#mmbrPw").focus();
				}
				
				//비밀번호 확인까지 완료후 다시 비밀번호 재설정 할 때
				if($("#mmbrPw").val() === $("#mmbrPwCheck").val()) {
					checkPw = true;
					$("#pwCheckResult").css("color", "#28A0FF");
					$("#pwCheckResult").text("비밀번호가 일치합니다.");
				} else {
					checkPw = false;
					$("#pwCheckResult").css("color", "#FF5A5A");
					$("#pwCheckResult").text("비밀번호가 일치하지 않습니다.");
				} 
			});
			
			 //비밀번호 확인과 비밀번호가 일치하는 지 여부 검사
			 $("#mmbrPwCheck").on("change", () => {
				$("#pwCheckResult").show();
				
				if($("#mmbrPw").val() === $("#mmbrPwCheck").val()) {
					checkPw = true;
					$("#pwCheckResult").css("color", "#28A0FF");
					$("#pwCheckResult").text("비밀번호가 일치합니다.");
				} else {
					checkPw = false;
					$("#pwCheckResult").css("color", "#FF5A5A");
					$("#pwCheckResult").text("비밀번호가 일치하지 않습니다.");
				}
			}); 
			
			//joinForm 서브밋될 때 유효성 검사
			 $("#joinForm").on("submit", (e) => {
				 
				//id 중복체크가 되지 않았거나 중복된 아이디를 사용했을 때
				 if(!checkId) {
					e.preventDefault();
					alert("아이디 중복체크를 진행하세요.");
					$("#mmbrId").focus();
					return;
				} 
				
				//닉네임 중복체크가 되지 않았거나 중복된 닉네임 사용했을 때
				 if(!checkNm) {
					e.preventDefault();
					alert("닉네임 중복체크를 진행하세요.");
					$("#mmbrNm").focus();
					return;
				}
					
				
				//비밀번호 유효성 검사가 맞지 않을 때
				if(!pwValidation) {
					e.preventDefault();
					alert("비밀번호는 영문자, 숫자, 특수문자 조합의 9자리 이상으로 설정하세요.");
					$("#userPw").focus();
					return;
				}
				
				//비밀번호가 일치하지 않을 때
				if(!checkPw) {
					e.preventDefault();
					alert("비밀번호가 일치하지 않습니다.");
					$("#userPwCheck").focus();
					return;
				}
			}); 
		});
	</script>