<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자유게시판</title>
<link href="../vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="../vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

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
							<h3>자유게시판</h3><div class="vr"></div><h5>게시물수정</h5>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-12">
						<form>
							<div class="row mb-3">
								<label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3">
								</div>
							</div>
							<div class="row mb-3">
								<label for="exampleFormControlTextarea1" class="col-sm-2 col-form-label">내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
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
							<button type="button" class="btn btn-sm btn-danger">삭제</button>
							<button type="button" class="btn btn-sm btn-primary">수정</button>
						</div>

					</div>
				</div>
			</div>
		</div>
		
	  <!-- copyright section start -->
	  <jsp:include page="./footer.jsp"></jsp:include>
      <!-- copyright section end -->


	<script type="text/javascript" src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../vendor/jquery/jquery.min.js"></script>
</body>
</html>