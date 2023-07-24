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
							<h3>구만에게</h3>
							<div class="vr"></div>
							<h5>게시물조회</h5>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-12">
						<h4>${boardData.brdTitle }</h4>
					</div>
				</div>
				<div class="row">
					<div class="col-12 text-end fw-light">등록일: ${boardData.brdDt} /
						작성자: ${boardData.mmbrNm} / 조회수: ${boardData.brdCnt}</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-12">${boardData.brdContent}</div>
				</div>

		<div class="row mt-5">
			<div class="col-6">
				<button type="button" class="btn btn-sm btn-secondary" onclick="location.href='/board/list'">목록</button>
			</div>
			<div class="col-6 text-end">
				<button type="button" class="btn btn-sm btn-primary">답글작성</button>
				<c:if test="${loginMmbrNm eq boardData.mmbrNm}">
				    <button type="button" class="btn btn-sm btn-outline-primary" onclick="updateBoard(${boardData.brdNo})">수정</button>
				</c:if>
			</div>

		</div>
	</div>
	</div>
	</div>
	
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->

	<script type="text/javascript">
		function updateBoard(brdNo) {
		    window.location.href = "/board/" + brdNo + "/update";
		}
	</script>
</body>
</html>