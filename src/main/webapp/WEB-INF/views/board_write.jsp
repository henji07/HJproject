<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자유게시판</title>
<link href="/resource/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="/resource/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.css" rel="stylesheet">


</head>
<body>

	<!-- header section start -->
	<jsp:include page="./header.jsp"></jsp:include>
	<!-- header section end -->    

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-10">
				<div class="container">
					<div class="row mt-5">
						<div class="col-12 hstack gap-3">
							<h3>자유게시판</h3><div class="vr"></div><h5>새글작성</h5>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-12">
						<form id="inputForm">
							<div class="row mb-3">
								<label for="brdTitle" class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="brdTitle" name="brdTitle">
								</div>
							</div>
							<div class="row mb-3">
								<label for="brdContent" class="col-sm-2 col-form-label">내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" id="brdContent" name="brdContent" rows="5"></textarea>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-10 offset-sm-2">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="gridRadios"
											id="appl_htm_tag_yn" value="Y"> <label
											class="form-check-label" for="appl_htm_tag_yn"> 내용태그적용여부</label>
									</div>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-10 offset-sm-2">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											name="gridRadios" id="appl_htm_tag_yn" value="Y">
										<label class="form-check-label" for="appl_htm_tag_yn">
											답글이 등록되면 알람을 받으시겠습니까?</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="E" checked>
										<label class="form-check-label" for="inlineRadio1">이메일</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="S">
										<label class="form-check-label" for="inlineRadio2">문자</label>
									</div>
								</div>
							</div>
						</form>
					</div>
					</div>
					<div class="row mt-3">
						<div class="col-6">
							<button type="button" class="btn btn-sm btn-secondary">취소</button>
						</div>
						<div class="col-6 text-end">
							<button type="button" class="btn btn-sm btn-outline-secondary">초기화</button>
							<button type="button" class="btn btn-sm btn-primary" id="btnRegist">등록</button>
						</div>

					</div>
				</div>
			</div>
		</div>
		
	  <!-- copyright section start -->
	  <jsp:include page="./footer.jsp"></jsp:include>
      <!-- copyright section end -->
	
	<script type="text/javascript" src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="/resource/vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/resource/js/nthb-functions.js"></script>
    
    <!-- Summernote Lite JS -->
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		
      	  $('#brdContent').summernote({
      	    height: 300,                 // 높이 설정
      	    minHeight: null,             // 최소 높이
      	    maxHeight: null,             // 최대 높이
      	    focus: true,                  // 포커스 설정
      	    lang: 'ko-KR',                // 언어 설정
     	    	toolbar: [
		       			    // [groupName, [list of button]]
		       			    ['fontname', ['fontname']],
		       			    ['fontsize', ['fontsize']],
		       			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		       			    ['color', ['forecolor','color']],
		       			    ['table', ['table']],
		       			    ['para', ['ul', 'ol', 'paragraph']],
		       			    ['height', ['height']],
		       			    ['insert',['picture','link','video']],
		       			    ['view', ['fullscreen', 'help']]
		       			  ],
     			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
     			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
     			placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
				callbacks: {	//여기 부분이 이미지를 첨부하는 부분
					onImageUpload : function(files) {
						uploadSummernoteImageFile(files[0],this);
					},
					onPaste: function (e) {
						var clipboardData = e.originalEvent.clipboardData;
						if (clipboardData && clipboardData.items && clipboardData.items.length) {
							var item = clipboardData.items[0];
							if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
								e.preventDefault();
							}
						}
					}
				}
      	  });
		
		$("#btnRegist").click(function() {
			rgtNoticeProc();
		});
	});
		
	function rgtNoticeProc(){
			
		var obj = $("#inputForm").serializeObject();
		obj.brdContent = $('#brdContent').summernote('code');
		
		console.log(obj);
		
		$.ajax({
			type : "POST",
			url : "<c:url value='/board/writeProc'/>",
			dataType : "json",
			data : JSON.stringify(obj),
			contentType : 'application/json'
		})
		.done(function(data) {
			location.href = "<c:url value='/board/list'/>";
		})
		.fail(function(data, textStatus, errorThrown) {

		});
	}
	</script>
</body>
</html>