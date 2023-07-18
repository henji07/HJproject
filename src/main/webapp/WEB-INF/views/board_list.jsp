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
	
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="/resource/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="resource/css/responsive.css">
<!-- font css -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">  
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="resource/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

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
						<div class="col-12">
							<h3>자유게시판</h3>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-12">
						<div class="table-responsive">
							<table class="table text-center">
								<thead class="table-primary">
									<tr>
										<th scope="col">번호</th>
										<th scope="col">제목</th>
										<th scope="col">조회수</th>
										<th scope="col">작성자</th>
										<th scope="col">작성일시</th>
									</tr>
								</thead>
								<tbody>

									<c:choose>
										<c:when test="${not empty dataList }">
											<c:forEach items="${dataList}" var="row">

												<tr>
													<th scope="row" class="text-end">${row.brdNo}</th>
													<td class="text-start">${row.brdTitle}  <!-- <span
														class="badge text-bg-warning">NEW</span> -->  </td>
													<td class="text-end">${row.brdCnt}</td>
													<td>${row.wrtMmbrNo}</td>
													<td>${row.regrDt}</td>
												</tr>

											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="5">조회결과가 없습니다.</td>
											</tr>

										</c:otherwise>
									</c:choose>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-2"></div>
					<div class="col-8">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#"><i class="bi bi-chevron-left"></i></a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#"><i
										class="bi bi-chevron-right"></i></a></li>
							</ul>
						</nav>
					</div>
					<div class="col-2 text-end">
						<button type="button" class="btn btn-sm btn-outline-primary" id="btnWrite">글작성</button>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->


	<script type="text/javascript"
		src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="/resource/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		
		$('#btnWrite').click(function(){
			location.href = "<c:url value='/board/write'/>";
		});
	});
	</script>
</body>
</html>