<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../include/header.jsp"%>

<body class="bg-gradient-primary">

	<script type="text/javascript">
		$(function() {
			
			const formObj = $("form");

			$('button').on("click",
					function(e)
					{
						e.preventDefault();

						const operation = $(this).data("oper");

						console.log(operation);
	
						if (operation === 'remove')
						{
							formObj.attr("action", "/board/remove");
						}
						else if (operation === 'list')
						{
// 							self.location="/board/list";
							formObj.attr("action", "/board/list").attr("method","get");
							
							var pageNumTag = $("input[name='pageNum']").clone();
							var amountTag = $("input[name='amount']").clone();
							var keywordTag = $("input[name='keyword']").clone();
							var typeTag = $("input[name='type']").clone();
							
							formObj.empty();
							
							formObj.append(pageNumTag);
							formObj.append(amountTag);
							formObj.append(keywordTag);
							formObj.append(typeTag);
							
// 							return;
						}
						
						formObj.submit();
					});
		});
	</script>

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-5">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">게시글 수정</h1>
					</div>
					<!-- 					/.col-lg-12 -->
				</div>
				<!-- 				/.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">

							<div class="panel-heading">Board Modify</div>
							<!-- 							/.panel-heading -->
							<div class="panel-body">
								<form role="form" action="/board/modify" method="post">
								
									<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }" />'>
									<input type='hidden' name='amount' value='<c:out value="${cri.amount }" />'>
					    			<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
					    			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
					    			
									<div class="form-group">
										<label>Bno</label> <input class="form-control" name='bno'
											value='<c:out value="${board.bno }"/>' readonly="readonly">
									</div>

									<div class="form-group">
										<label>Title</label> <input class="form-control" name='title'
											value='<c:out value="${board.title }"/>'>
									</div>

									<div class="form-group">
										<label>Text area</label>
										<textarea class="form-control" rows="3" name='content'><c:out
												value="${board.content}" /></textarea>
									</div>

									<div class="form-group">
										<lable>Writer</lable>
										<input class="form-control" 
											name='writer' value='<c:out value="${board.writer }"/>' 
											readonly="readonly">
									</div>

									<div class="form-group">
										<label>RegDate</label>
										<input class="form-control"
												name='regDate'
												value='<fmt:formatDate pattern = "yyyy/mm/dd" value="${board.regdate}" />'
												 readonly="readonly">
									</div>
									
									<div class="form-group">
										<label>Update Date</label>
										<input class="form-control"
												name='updateDate'
												value='<fmt:formatDate pattern = "yyyy/mm/dd" value="${board.updateDate}" />'
												 readonly="readonly">
									</div>
									
									<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
									<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
									<button type="submit" data-oper='list' class="btn btn-info">List</button>
								</form>
								
							</div>
							<!-- end panel-body -->
						
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
				<!--/.row -->
				
			</div>
		</div>
	</div>
</body>

</html>