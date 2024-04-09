<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../include/header.jsp"%>

<body class="bg-gradient-primary">

	<script type="text/javascript">
// 		$(function() {

// 			let formObj = $("#operForm"); //id 라서 #을 붙인다. role아님!

// 			$('button').on("click", function(e) {
// 				e.preventDefault();

// 				const operation = $(this).data("oper");

// 				console.log(operation);

// 				if (operation === 'remove') 
// 				{
// 					formObj.attr("action", "/board/remove");
// 				}
// 				else if (operation === 'list') 
// 				{
// // 					self.location = "/board/list";
// 					formObj.attr("action","/board/list").attr("method", "get");
// 					formObj.empty();
// 				}

// 				formObj.submit();
// 			});
// 		});
	
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
			
// 			var bnoValue = $("#operForm").find("#bno").val();
// 			var replyUL = $(".chat");
			
// 			replyList.showList(1, bnoValue, replyUL);
			
		});
	</script>
	
	<div class="container">

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
				<!-- ./end row -->
			</div>
			<%@include file="../reply/reply_modal_ui.jsp" %>
			
			<script type="text/javascript" src="/resources/js/reply/reply_new_btn_load.js"></script>
				
			<script type="text/javascript" src="/resources/js/reply/reply_ajax.js"></script>
			
			<script type="text/javascript" src="/resources/js/reply/reply_list.js"></script>
			
			<script type="text/javascript" src="/resources/js/reply/reply_list_load.js"></script>

			<script type="text/javascript" src="/resources/js/reply/reply_list_click_load.js"></script>

			<script type="text/javascript" src="/resources/js/reply/reply_list_click_load.js"></script>
				
			
<%-- 				<%@include file="../reply/reply_ajax_test.jsp"%> --%>
				
				
			</div>
		</div>
	</div>
</body>

</html>