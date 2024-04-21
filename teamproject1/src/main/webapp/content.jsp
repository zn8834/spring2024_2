<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main Content -->
<div id="content">
	<%@include file="sidebar.jsp"%>
	
<div class="row">
	<div style="text-align:center; style=color:#F5ECCE; background-color:#F5ECCE; font-size:50px;">자유게시판
</div>
<form action="/posts" method="get">
   	<select name="category" id="category">
       <option value="">게시판 카테고리</option>
       <option value="카테고리1">정치</option>
       <option value="카테고리2">경제</option>
       <option value="카테고리3">사회</option>
       <option value="카테고리3">이슈</option>
   	</select>
 	<button type="submit">적용</button>
</form>
	


  
<%-- 	<%@include file="sidebar2.jsp"%> --%>

		
	<div class="row">
	  <div class="col-md-9">
		<div class="table-responsive">
			<table class="table table-bordered"  width="120%" cellspacing="0">
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
								<a href='/board/get?bno=<c:out value="${board.bno}"/>'>
								<c:out value="${board.title}" /> 
								</a>
								
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
	<!-- /.container-fluid -->

</div>
	<div class="card col-lg-8 shadow mb-4" style="position:absolute; right:0px; bottom:0px; top:170px; 
												  margin:0px 20px; width:390px; height:400px;">
            <div class="card-head" style="margin: 10px 0px 0px 0px;"> 
             <h5>Chat</h5>
             <hr style="width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
                    
                    
                 </div>
          </div>

    
  	<div class="card col-lg-8 shadow mb-4" style="position:absolute; right:0px; bottom:0px; top:600px;
  													margin:0px 20px; width:390px; height:350px; float: right;">
            <div class="card-head" style="margin: 10px 0px 0px 0px;">
             <h5>HOT ISSUE</h5>
             <hr style="width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 270px; overflow:auto;"> 
                    
                    
                 </div>
          </div>
<!-- End of Main Content -->