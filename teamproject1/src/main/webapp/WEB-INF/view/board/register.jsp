<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../include/sidebar.jsp"%>
<link href="../resources/css/list.css" rel="stylesheet" type="text/css">

<br/>
<div class="container" >

		<div class="card o-hidden border-0 shadow-lg my-5" id="r1">
			<div class="card-body p-5">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div classs="col-lg-12">
						<h1 class="page-header">게시글 작성</h1>
					</div>
					<!--  /.col-lg-12 -->
				</div>
				<!--   /.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
<!-- 							<div class="panel-heading">게시글 쓰기</div> -->
							<!-- /.panel-heading -->
							<div class="panel-body">
								<form role="form" action="/board/register" method="post">
									<div class="form-group">
										<label>제목</label> <input class="form-control" name='title'>
									</div><br/>

									<div class="form-group">
										<label>이름</label> <input class="form-control" name='name'>
									</div><br/>

									<div class="form-group">
										<label>내용</label>
										<textarea class="form-control" rows="7" name='content'></textarea>
									</div><br/>
									
									<div class="form-group">
										<label>닉네임</label> <br/><input class="form-control" name='writer'>
									</div><br/>

									<div class="form-group">
										<label>아이디</label> <input class="form-control" name='id'>
									</div><br/>
									
									<div class="form-group">
										<div style=" text-align: center;">
											<input type="file" id="file">
										</div>
									</div>
									
									<div style=" text-align: center;">
									<button type="submit" class="btn btn-default">등록</button>
									</div>
									<div style=" text-align: center;">
									<a href="list" >
									<button type="button" class="btn btn-default">취소</button></a>
									</div>
								</form>
							</div>
							<!-- end panel-body -->

						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
				</div>
			</div>
		</div>
	</div>
	<%@include file="../include/sidebar2.jsp"%>

</html>