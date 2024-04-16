<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
   <title>main</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<!--  topBar -->
<nav class="shadow p-2 bg-body-tertiary border-bottom">
    <div class="d-flex justify-content-between">
       <div class="d-flex ps-5">
          <a href="main.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-warning text-decoration-none">
               <span class="fs-4 fw-bold"><b>BZO</b></span>
           </a>
       </div>
       <div class="d-flex">
          <ul class="nav me-auto ">
                     <li class="nav-item"><a class="nav-link text-dark" href="#">My Page</a></li>
                     <li class="nav-item"><a class="nav-link text-dark" href="#">Help</a></li>
                     <li class="nav-item"><a class="nav-link text-dark" href="#">Rules</a></li>
          </ul>
       </div>
<!--  topBar_end -->
<!--  sideBar -->
       <div class="d-flex pe-5">
          <button type="button" class="btn btn-info btn-sm fs-6" style="height:30px;"><a href="#" class="text-decoration-none text-light">Sign up</a></button>
       </div>
    </div>
  </nav>
   <div class="shadow d-flex flex-column flex-shrink-0 p-3 float-start" style="width: 280px; height:860px;">
         <span class="fs-4">Login</span>
         <hr>
         <form>
            <div class="d-flex justify-content-center flex-column">
              <p>ID : <input type="text" name="ID" size="15" required></p>
              <p>PW : <input type="password" name="psw" size="15" placeholder="비밀번호" required></p>
           </div>
           <div class="d-flex justify-content-center">
                <input type="submit" class="btn btn-success btn-sm " value="Log in">
           </div>
       </form>
         
       <hr>
       <ul class="nav nav-pills d-flex flex-column mb-2">
         <li class="nav-item">
           <a href="#" class="nav-link active mb-3" aria-current="page">
         <img src="/resources/svg/building.svg" alt="Bootstrap" width="20" height="20">
             기업정보
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis mb-3">
             <img src="/resources/svg/community.svg" alt="Bootstrap" width="20" height="20">
             이슈게시판
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis mb-3">
             <img src="/resources/svg/newspaper.svg" alt="Bootstrap" width="20" height="20">
             뉴스
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis">
             <img src="/resources/svg/stock.svg" alt="Bootstrap" width="20" height="20">
             모의전
           </a>
         </li>
       </ul>
       <hr>
       <div class="dropdown d-flex flex-column justify-content-end">
         <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
           <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
           <strong>mdo</strong>
         </a>
         <ul class="dropdown-menu text-small shadow">
           <li><a class="dropdown-item" href="#">New project...</a></li>
           <li><a class="dropdown-item" href="#">Settings</a></li>
           <li><a class="dropdown-item" href="#">Profile</a></li>
           <li><hr class="dropdown-divider"></li>
           <li><a class="dropdown-item" href="#">Sign out</a></li>
         </ul>
       </div>
     </div>
<!--  sideBar_end -->

<!-- 자유게시판 -->
<div class="container-fluid">

		<!-- Page Heading -->
		<h3 class="h3 mb-2  text-gray-800">자유게시판</h3>
		<br><br><br>
<!-- 		햄버거 메뉴바 -->
		<div class="collapse" id="navbarToggleExternalContent">
		  <div class="bg-green p-4">
		    <h5 class="text-white h4">Collapsed content</h5>
		    <span class="text-muted">Toggleable via the navbar brand.</span>
		  		<a href="./board?sb_cate=1">정치게시판</a>
				<a href="./board?sb_cate=2">경제게시판</a>
				<a href="./board?sb_cate=3">사회게시판</a>
				<a href="./board?sb_cate=4">이슈게시판</a>
		    
		  </div>
		</div>
		<nav class="navbar navbar-dark bg-dark">
		  <div class="container-fluid">
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		  </div>
		</nav>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				
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