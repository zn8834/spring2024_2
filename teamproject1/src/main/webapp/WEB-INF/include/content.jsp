<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main Content -->
<div id="content">

	<%@include file="../include/content_topbar.jsp"%>

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Tables</h1>
		<p class="mb-4">
				자유게시판</a>
		</p>
		<a href="./board?sb_cate=1">정치게시판</a>
		<a href="./board?sb_cate=2">경제게시판</a>
		<a href="./board?sb_cate=3">사회게시판</a>
		<a href="./board?sb_cate=4">이슈게시판</a>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">DataTables
					Example</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered"  width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th>아이디</th>
								<th>내용</th>
								<th>작성일</th>
								<th>조회</th>
							</tr>
						</thead>
						<c:forEach items="${list}" var="board">
							<tr>
								<td><c:out value="${board.bno}" /></td>

								<td>
<%-- 									<a href='/board/get?bno=<c:out value="${board.bno}"/>'> --%>
<%-- 									<c:out value="${board.title}" />  --%>
<!-- 									</a> -->
									
									<a class='move' href='<c:out value="${board.bno}"/>'> 
										<c:out value="${board.title}" />
									</a>
								</td>

								<td><c:out value="${board.writer}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}" /></td>
							</tr>
						</c:forEach>
					</table>
					<div class="d-flex justify-content-end">
						<a href="/board/register"  class="btn btn-primary">글쓰기</a></button>
					</div>
					
					<div class='row'>
						<div class="col-lg-12">
							<form id='searchForm' action="/board/list" method='get'>
								<select name='type'>
									<option value=""
										<c:out value="${pageMaker.cri.type == null?'select':''}"/>>--</option>
									<option value="T"
										<c:out value="${pageMaker.cri.type eq 'T'?'select':''}"/>>제목</option>
									<option value="C"
										<c:out value="${pageMaker.cri.type eq 'C'?'select':''}"/>>내용</option>
									<option value="W"
										<c:out value="${pageMaker.cri.type eq 'W'?'select':''}"/>>작성자</option>
									<option value="TC"
										<c:out value="${pageMaker.cri.type eq 'TC'?'select':''}"/>>내용</option>
									<option value="TW"
										<c:out value="${pageMaker.cri.type eq 'TW'?'select':''}"/>>제목 or 내용</option>
									<option value="TWC"
										<c:out value="${pageMaker.cri.type eq 'TWC'?'select':''}"/>>제목 or 내용 or 작성자</option>
								</select>
								<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' />
								<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
								<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
								<button class='btn btn-default'>Search</button>
							</form>
						</div>
					</div>
					
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">

							<c:if test="${pageMaker.prev}">
								<li class="page-item">
								<a class="page-link" href="${pageMaker.startPage -1}" aria-label="Previous">
								 <span aria-hidden="true">&laquo;</span> <!-- 왼쪽으로 꺽인 괄호<< -->
								</a>
								</li>
							</c:if>

							<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
								<li class="page-item ${pageMaker.cri.pageNum == num ? "active":""}">
									<a class="page-link" href="${num}">${num}</a></li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li class="page-item">
									<a class="page-link" href="${pageMaker.endPage +1}" aria-label="Next"> 
										<span aria-hidden="true">&raquo;</span> <!--  오른쪽으로 꺽인 괄호>> -->
									</a>
								</li>
							</c:if>

						</ul>
					</nav>

					<form id='actionForm' action="/board/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					    <input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
					    
					    <input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
					    <input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
					    
					</form>
					
				</div>
			</div>
		</div>
	</div>
	<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->