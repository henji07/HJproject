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
						<div class="col-12">
							<h3>구만에게</h3>
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
													<td class="text-start">
														<a href="/board/${row.brdNo}">${row.brdTitle}</a> 
													<!-- <span
														class="badge text-bg-warning">NEW</span> -->  
													</td>
													<td class="text-end">${row.brdCnt}</td>
													<td>${row.mmbrNm}</td>
													<td>${row.brdDt}</td>
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

	<script type="text/javascript">
	$(document).ready(function() {
		
		$('#btnWrite').click(function(){
			location.href = "<c:url value='/board/write'/>";
		});
	});
	</script>
