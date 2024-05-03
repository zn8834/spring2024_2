<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../include/mainPage2.jsp"%>
<link href="../resources/css/list.css" rel="stylesheet" type="text/css">
<!-- <body class="bg-gradient-primary"> -->

	<script type="text/javascript">
// 		$(function() {
//
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
		<div id="g1"><br/>
			<div class="row">
				<h1 class="page-header">게시글 1개 조회</h1>
			</div><br/>
			
				<div class="form-group">
					<label>Bno</label> <input class="form-control" name='bno'
						value='<c:out value="${board.bno }"/>' readonly="readonly">
				</div><br/>

				<div class="form-group">
					<label>Title</label> <input class="form-control" name='title'
						value='<c:out value="${board.title }"/>' readonly="readonly">
				</div><br/>

				<div class="form-group">
					<label>Text area</label>
					<textarea class="form-control" rows="3" name='control'
						readonly="readonly"><c:out value="${board.content}" /></textarea>
				</div><br/>

				<div class="form-group">
					<lable>Writer</lable>
					<input class="form-control" name='writer'
						value='<c:out value="${board.writer }"/>' readonly="readonly">
				</div><br/>
				
				<div class="form-group">
					<lable>Nickname</lable>
					<input class="form-control" name='nickname'
						value='<c:out value="${board.nickname }"/>' readonly="readonly">
				</div><br/>

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
								<div style=" text-align: center;">
								<button data-oper='modify' class="btn btn-default">수정</button>
								</div>	<br/>
								<div style=" text-align: center;">
								<button data-oper='list' class="btn btn-info">목록</button>
								</div>
								
								<form id='operForm' action="/board/modify" method="get"><!-- get방식, 수정창 띄우는 거니깐 -->
									<input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
									<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}" />'>
<%-- 									<inputc type='hidden' name='amount' value='<c:out value="${cri.amount}" />'> --%>
					    			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
					    			<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
								</form>

				<p/> 
				
<!-- 			<div class='row' > -->
<!-- 					<div class="col-lg-12"> -->
<!-- 						<div class="panel panel-default"> -->
						
<!-- 							<div class="panel-heading"> -->
<!-- 							<i class="fa fa-comments fa-fw"></i>Reply -->
<!-- 							<button id='addReplyBtn' -->
<!-- 								 class='btn btn-primary btn-xs pull-right'>New Reply</button> -->
<!-- 							</div> -->
							
<!-- 							<div class="panel-body"> -->
<!-- 								<ul class="chat"> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="panel-footer"></div> -->
<!-- 						</div> -->
<!-- 					</div> -->
					
					
					<div style="text-align: center;" id="Reply" >
								<button data-oper='modify' class="btn btn-default">Reply</button>
								</div>	<br/>
								<div style=" text-align: center;">
								<button id='addReplyBtn' 
								 class='btn btn-primary btn-xs pull-right'>New Reply</button>
								</div>
								</div>
					
					</div>
				</div>
				
				<!-- ./end row -->
			<%@include file="../reply/reply_modal_ui.jsp" %>
			
			<script type="text/javascript" src="/resources/js/reply/reply_new_btn_load.js"></script>
				
			<script type="text/javascript" src="/resources/js/reply/reply_ajax.js"></script>
			
			<script type="text/javascript" src="/resources/js/reply/reply_list.js"></script>
			
			<script type="text/javascript" src="/resources/js/reply/reply_list_load.js"></script>

			<script type="text/javascript" src="/resources/js/reply/reply_list_click_load.js"></script>

			<script type="text/javascript" src="/resources/js/reply/reply_page_click_load.js"></script>
				
			
<%-- 				<%@include file="../reply/reply_ajax_test.jsp"%> --%>
				
				
</body>

</html>