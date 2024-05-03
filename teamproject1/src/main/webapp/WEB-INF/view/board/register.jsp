<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../include/mainPage2.jsp"%>
<link href="../resources/css/list.css" rel="stylesheet" type="text/css">

<br/>
<div class="container" >
	<div id="r1"><br/>
		<div class="row">
			<h1 class="page-header">게시글 작성</h1><br/><br/>
		</div>

			<form role="form" action="/board/register" method="post">
				<div class="form-group">
					<label>제목</label> <input class="form-control" name='title'>
				</div><br/>

				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="7" name='content'></textarea>
				</div><br/>
				
				<div class="form-group">
					<label>이름</label> <input class="form-control" name='writer'>
				</div><br/>
				
				<div class="form-group">
					<label>닉네임</label> <br/><input class="form-control" name='nickname'>
				</div><br/>

<!-- 									<div class="form-group"> -->
<!-- 										<label>아이디</label> <input class="form-control" name='id'> -->
<!-- 									</div><br/> -->
				
				<div class="form-group">
					<div style=" text-align: center;">
						<input type="file" id="file">
					</div>
				</div>
				
				<div style=" text-align: center;">
				<button type="submit" class="btn btn-default">등록</button>
				<a href="list" >
				<button type="button" class="btn btn-default">취소</button></a>
				</div>
			</form>
		</div>
	</div>
		
</html>