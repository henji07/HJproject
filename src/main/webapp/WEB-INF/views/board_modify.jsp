<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <!-- header section start -->
    <jsp:include page="./header.jsp"></jsp:include>
    <!-- header section end -->

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-10">
				<div class="container">
					<div class="row mt-5">
						<div class="col-12 hstack gap-3">
							<h3>구만에게</h3><div class="vr"></div><h5>게시물수정</h5>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-12">
						<form id="updateForm" action="/board/${boardData.brdNo}/update" method="post">
						<input type="hidden" id="brdNo" value="${boardData.brdNo}">
							<div class="row mb-3">
								<label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="title" name="title" value="${boardData.brdTitle}">
								</div>
							</div>
							<div class="row mb-3">
								<label for="exampleFormControlTextarea1" class="col-sm-2 col-form-label">내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" id="content" name="content" rows="5">${boardData.brdContent}</textarea>
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
							<button type="button" class="btn btn-sm btn-danger" id="btnDelete">삭제</button>
							<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
		
	  <!-- copyright section start -->
	  <jsp:include page="footer.jsp"></jsp:include>
      <!-- copyright section end -->

	
	<script type="text/javascript">
	
	$(document).ready(function() {
		//글 삭제 
		 $("#btnDelete").on("click",function(e){
			 if (window.confirm("정말 삭제하시겠습니까?")) {
				 deleteContens(); 
			 }
		 });
		
		//글 수정 
		 $("#btnUpdate").on("click",function(e){
			 if (window.confirm("수정한 내용을 저장하시겠습니까?")) {
				 updateContens(); 
			 }
		 });
	});
	
	//글 삭제 
   function deleteContens(){
		
	   var data = {brdNo: $("#brdNo").val()};
	   
	   console.log(data);
	   
	   $.ajax({
           url: '/board/delete',
           contentType: 'application/json',
           type: 'POST',
           data: JSON.stringify(data),
           success: function(result){
               console.log(result);
               if (result.flag == "success") {
            	   alert("삭제 성공");
            	   location.href = `/board/list`;
               }
           },
           error: function(error){
               console.log(error);
           }
       });
   }
	
	//글 수정
	function updateContens(){
		
		var brdNo = $("#brdNo").val();
	    var title = $("#title").val();
	    var content = $("#content").val();
	    
	    var data = {
	        brdNo: brdNo,
	        title: title,
	        content: content
	    };
	   
	   console.log(data);
	   
	   $.ajax({
           url: '/board/' + brdNo + '/update',
           contentType: 'application/json',
           type: 'POST',
           data: JSON.stringify(data),
           success: function(result){
               console.log(result);
               if (result.flag == "success") {
            	   alert("수정 성공");
            	   location.href = '/board/' + brdNo;
               }
           },
           error: function(error){
               console.log(error);
           }
       });
   }
	</script>