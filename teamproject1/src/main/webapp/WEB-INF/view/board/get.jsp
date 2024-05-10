<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<<<<<<< HEAD
<%@ include file="../include/topsidebar.jsp"  %>
<link href="/resources/css/list.css" rel="stylesheet" type="text/css">
<!-- <body class="bg-gradient-primary"> -->
=======
<%@include file="../include/header.jsp"%>

<body class="bg-gradient-primary">
>>>>>>> refs/remotes/origin/master

	<script type="text/javascript">

		$(function(){
			
			var operForm = $("#operForm");
			
			$("button[data-oper='modify']").on("click", function(e) {
				
				operForm.attr("action","/board/modify").submit();
			});
			
			$("button[data-oper='list']").on("click", function(e) {
				
				operForm.find("#bno").remove();
				operForm.attr("action", "/board/list")
				operForm.submit();
			});
		});
	</script>
	<br/><br/><br/><br/>
	<div class="container">
<<<<<<< HEAD
		<div id="g1">
			<div class="row">
				<h1 class="page-header">게시글 1개 조회</h1>
			</div><br/>
			
				<div class="form-group">
					<label>Bno</label> <input class="form-control" name='bno'
						value='<c:out value="${board.bno }"/>' readonly="readonly">
				</div><br/>
=======
>>>>>>> refs/remotes/origin/master

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-5">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">게시글 1개 조회</h1>
					</div>
					<!-- 					/.col-lg-12 -->
				</div>
				<!-- 				/.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Board Read Page</div>
							<!-- 							/.panel-heading -->
							<div class="panel-body">

								<div class="form-group">
									<label>Bno</label> <input class="form-control" name='bno'
										value='<c:out value="${board.bno }"/>' readonly="readonly">
								</div>

								<div class="form-group">
									<label>Title</label> <input class="form-control" name='title'
										value='<c:out value="${board.title }"/>' readonly="readonly">
								</div>

								<div class="form-group">
									<label>Text area</label>
									<textarea class="form-control" rows="3" name='control'
										readonly="readonly"><c:out value="${board.content}" /></textarea>
								</div>

								<div class="form-group">
									<lable>Writer</lable>
									<input class="form-control" name='writer'
										value='<c:out value="${board.writer }"/>' readonly="readonly">
								</div>

								<!-- 								<button data-oper='modify' class="btn btn-default">modify</button> -->
								<!-- 								<button data-oper='list' class="btn btn-info">List</button> -->

								<!-- 								<button data-oper='modify' class="btn btn-default"> -->
								<%-- 									<a href="/board/modify?bno=<c:out value="${board.bno}"/>">Modify</a> --%>
								<!-- 								</button> -->
								<!-- 								<button data-oper='remove' class="btn btn-danger"> -->
								<%-- 									<a href="/board/remove?bno=<c:out value="${board.bno}"/>">Remove</a> --%>
								<!-- 								</button> -->
								<!-- 								<button data-oper='list' class="btn btn-info"> -->
								<!-- 									<a href="/board/list">List</a> -->
								<!-- 								</button> -->

<!-- 								<button type="submit" data-oper='modify' class="btn btn-default">Modify</button> -->
<!-- 								<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button> -->
<!-- 								<button type="submit" data-oper='list' class="btn btn-info">List</button> -->
<<<<<<< HEAD
				<div style=" text-align: center;">
				<button data-oper='modify' class="btn btn-dark mt-3">수정</button>
				</div>
				<div style=" text-align: center;">
				<button data-oper='list' class="btn btn-dark mt-4">목록</button><br/><br/>
				</div>
				
				<form id='operForm' action="/board/modify" method="get"><!-- get방식, 수정창 띄우는 거니깐 -->
					<input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
					<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}" />'>
	    			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
	    			<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
				</form>

				<p/> <br/><br/>
				
				
			<!-- 댓글조회	 -->
				<div class="card mb-2">
					<div class="card-header bg-light">
			        	<i class="fa fa-comment fa"></i> 댓글목록
					</div>
					<div class="card-body-2">
						<ul class="list-group list-group-flush"></ul>
					    	<li class="list-group-item">
					 		<ul class="chat"></ul>
					 		<div class="panel-footer"></div>
	  				 </div>
	  				 
	  				 
   			 <!-- 댓글작성	 -->
					<div class="card mb-2">
						<form method="post" action="/replies/new">
	   						<div class="card-header bg-light">
				        		<i class="fa fa-comment fa"></i> 댓글쓰기
							</div>
					        <p><br/>
					           	<label>닉네임: </label> <input type="text" name="nickname">
					        </p>
					        <p>
					            <label>내용 : </label><textarea rows="5" cols="50" name="reply"></textarea>
					        </p>
					        <p>
					        	<input type="hidden" name="bno" value="${get.bno}">
					        </p>
					         
<!-- 							<button type="button" class="btn btn-dark mt-3" onClick="javascript:addReplyBtn();">post reply</button> -->
						<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
							</form>
					</div>
					
				
		
		</div>
	</div>		
							
					
				
				
=======

								<button data-oper='modify' class="btn btn-default">Modify</button>		
								<button data-oper='list' class="btn btn-info">List</button>
								
								<form id='operForm' action="/board/modify" method="get"><!-- get방식, 수정창 띄우는 거니깐 -->
									<input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
									<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}" />'>
<%-- 									<inputc type='hidden' name='amount' value='<c:out value="${cri.amount}" />'> --%>
					    			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
					    			<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
								</form>

							</div>
							<!-- 							end panel-body -->
						</div>
						<!-- 						end panel-body -->
					</div>
					<!-- 					end panel -->
				</div>
				<!-- 				/.row -->
				
				<p/> 
				
				<div class='row'>
					<div class="col-lg-12">
<!-- 						/.panel -->
						<div class="panel panel-default">
						
							<div class="panel-heading">
								<i class="fa fa-comments fa-fw"></i>
								Reply
								<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
							</div>
							
							<div class="panel-body">
								<ul class="chat">
								</ul>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
>>>>>>> refs/remotes/origin/master
				<!-- ./end row -->
<<<<<<< HEAD
<%-- 			<%@include file="../reply/reply_modal_ui.jsp" %> --%>
<%-- 			<%@include file="../reply/reply.jsp"%> --%>
=======
			</div>
			<%@include file="../reply/reply_modal_ui.jsp" %>
>>>>>>> refs/remotes/origin/master
			
			<script type="text/javascript" src="/resources/js/reply/reply_new_btn_load.js"></script>
				
			<script type="text/javascript" src="/resources/js/reply/reply_ajax.js"></script>
			
			<script type="text/javascript" src="/resources/js/reply/reply_list.js"></script>
			
			<script type="text/javascript" src="/resources/js/reply/reply_list_load.js"></script>

			<script type="text/javascript" src="/resources/js/reply/reply_list_click_load.js"></script>

			<script type="text/javascript" src="/resources/js/reply/reply_page_click_load.js"></script>
				
			
<<<<<<< HEAD
				<%@include file="../reply/reply_ajax_test.jsp"%>
			
=======
<%-- 				<%@include file="../reply/reply_ajax_test.jsp"%> --%>
				
				
			</div>
		</div>
	</div>
</body>

>>>>>>> refs/remotes/origin/master
</html>