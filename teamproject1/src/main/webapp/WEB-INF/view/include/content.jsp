<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main Content -->
<div>

<link href="/resources/css/list.css" rel="stylesheet" type="text/css">
	<div class="row">
		<div id='title'>
			자유게시판
		</div>
		<form action="/posts" method="get"><br/>
			<select name="category" id="category">
				<option value="">게시판 카테고리</option>
				<option value="카테고리1">정치</option>
				<option value="카테고리2">경제</option>
				<option value="카테고리3">사회</option>
				<option value="카테고리3">이슈</option>
			</select>
			<button type="submit" id="b1">적용</button>
		</form>
		
		<div class='row' id='s1'>
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
									<c:out value="${pageMaker.cri.type eq 'TW'?'select':''}"/>>제목
									or 내용</option>
								<option value="TWC"
									<c:out value="${pageMaker.cri.type eq 'TWC'?'select':''}"/>>제목
									or 내용 or 작성자</option>
							</select> <input type='text' name='keyword'
								value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
								type='hidden' name='amount'
								value='<c:out value="${pageMaker.cri.amount}"/>' />
							<button class='btn btn-default'>Search</button>
						</form><br/>
					</div>
				</div>


		<div class="row" id="content">
			<div class="col-md-11">
				<div class="table-responsive">
<!-- 					<table class="table table-bordered" width="120%" cellspacing="0"> -->
						<table class="table table-hover" width="120%" cellspacing="0">
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th>내용</th>
								<th>닉네임</th>
								<th>작성일</th>
								<th>조회</th>
							</tr>
						</thead>
						<c:forEach items="${list}" var="board">
							<tr>
								<td><c:out value="${board.bno}" /></td>

								<td>
<%-- 									<a href='/board/get?bno=<c:out value="${board.bno}"/>'> --%>
<%-- 										<c:out value="${board.title}" /></a> --%>
										
									<a class='move' href='<c:out value="${board.bno}"/>'> 
									<c:out value="${board.title}" />
									</a>
								</td>

								<td><c:out value="${board.content}" /></td>
								<td><c:out value="${board.nickname}" /></td>
								<td><c:out value="${board.hit}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
							</tr>
						</c:forEach>
					</table>

					<div class="d-flex justify-content-end">
						<a href="/board/register" class="btnn">글쓰기</a>
					</div><br/>
					<div class="d-flex justify-content-end">
						<a href="list" class="btnn">전체글보기</a>
					</div>
					<script>
					//글조회
					function fn_view(code){
					    
					    var form = document.getElementById("boardForm");
					    var url = "<c:url value='/board/hit.do'/>";
					    url = url + "?hit=" + code;
					    
					    form.action = url;    
					    form.submit(); 
					}
					</script>
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
				    
				    <input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type}"/>'>
				    <input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword}"/>'>
			   </form>

				</div>
			</div>

		</div>
	<!-- /.container-fluid -->
	</div>
</div>
<%-- <%@include file="../include/sidebar2.jsp"%> --%>
<!-- End of Main Content -->