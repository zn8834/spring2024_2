<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

   <title>BZO</title>

	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link href="/resources/css/mainPage.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/join.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		
</head>
<body style="background-color: rgb(243,243,243);">




    <div class="header">
        <nav class="shadow p-2 border-bottom">
		    <div class="d-flex justify-content-start bg-body-tertiary">
			    <div class="d-flex ps-5">
			    	<a href="../main/mainPage" class="d-flex align-items-center mb-2 mb-lg-0 text-warning text-decoration-none">
			            <span class="fs-4 fw-bold"><b>BZO</b></span>
		        	</a>
			    </div>
		    </div>
 		 </nav>
    </div>

    <div class="content_body">    
		<div class="shadow d-flex flex-column flex-shrink-0 p-3 float-start bg-body-tertiary " style="width: 280px;">
        <div class="content_left_bar">

            <div class="cl_user_info">
<!--             로그인 하지 않은 상태 -->
				<c:if test = "${member == null }">
				 <span class="fs-4">Login</span>
		         <hr>
		         	<div class="d-flex justify-content-center flex-column">
<!-- 				        <p>ID : <input type="text" name="ID" size="15" required></p> -->
<!-- 				        <p>PW : <input type="password" name="psw" size="15" placeholder="비밀번호" required></p> -->
						<form id="login_form" method="post">
							<div class="login_wrap">
								<div class="id_wrap">
									<div class="id_input_box">
										<input class="id_input" name="memberId">
									</div>
								</div>
								<div class="pw_wrap">
									<div class="pw_input_box">
										<input class="pw_iput" name="memberPw">
									</div>
								</div>
								<c:if test = "${result == 0 }">
									<div class = "login_warn">사용자의 ID 또는 비밀번호가 잘못 입력되었습니다.</div>
								</c:if>
								<div class="login_button_wrap">
									<input type="button" class="login_button btn btn-success btn-sm" value="Log in">
						       		<button type="button" class="btn btn-info btn-sm fs-6" style="height:30px;">
						       			<a href="../member/join" class="text-decoration-none text-light">Sign up</a>
						       		</button>
								</div>
							</div>
						</form>
			        </div>
			        <hr>
		        </c:if>
		        <!-- 로그인 한 상태 -->
		        <c:if test="${ member != null }">
		        <span class="fs-4">member</span>
		         <hr>
		        	<div class = "login_success_area">
		        		<span>닉네임 : ${member.memberNick}</span>
		        		<span>모의전 금액 : <fmt:formatNumber value="${member.money}" pattern="\#,###,###"/></span>
		        	</div>
			   		<hr>
			   		<div class="btn btn-danger btn-sm"><a href="/member/logout.do">로그아웃</a></div>
		        </c:if>
            </div>
		
            <div class="cl_nav_bar">
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
            </div>
            
        </div>
       </div>
<!--  nav_bar,side_bar end -->
