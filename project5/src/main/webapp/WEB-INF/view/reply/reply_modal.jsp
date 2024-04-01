<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- <MODAL> -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModallabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="madal-title" id="myModalLable">REPLY MODAL</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Relpy</label> 
					<input class="form-control" name='reply' value='New Reply!'>
				</div>
				<div class="form-group">
					<label>Replyer</label> 
					<input class="form-control" name='replyer' value='replyer'>
				</div>
				<div class="form-group">
					<label>Relpy Date</label>
					<input class="form-control" name='replyDate' value='2024-03-27 04:04'>
				</div>
			</div>
			<div class="modal-footer">
				<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
				<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
				<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
				<button id='modalCloseBtn' type="button" class="btn btn-dafault">Close</button>
			</div>
		</div>
		<!--/.madal-content -->
	</div>
	<!--/.modal-dialog -->
</div>
<!-- /.modal -->

<script>

$(function () {
	
	var modal = $(".modal");
	
	var modalInputReply = modal.find("input[name='reply']");
	var modalInputReplyer = modal.find("input[name='reply']");
	var modalInputReplyDate = modal.find("input[name='replyDate']");

	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalRegisterBtn = $("#modalRegisterBtn");
	
	$("#addReplyBtn").on("click", function(e){
		
		modal.find("input").val("");
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id !='modalCloseBtn']").hide();
		
		modalRegisterBtn.show();
		
		$(".modal").modal("show");
	});
	
	$("#modalCloseBtn").on("click", function(e){
		
		modal.modal('hide');
	});
	
	var bnoValue = '<c:out value="${board.bno}"/>';
	
	modalRegisterBno.on("click",function(e){
		
		var reply = {
						reply: modalInputReply.val(),
						replyer:modalInputReplyer.val(),
						bno:bnoValue
					};
		replyService.add(reply, function(result){
			
			alert(result);
			
			modal.find("input").val("");
			modal.modal("hide");
			
			showList(1);
			//showList(-1);
			
		});
	});
	
	//댓글 조회 클릭 이벤트 처리
	$(".chat").on("click","li",function(e){
		
		var rno = $(this).data("rno");
		
		replyService.get(rno, function(reply){
			
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(replyService.displayTime( reply.replyDate))
								.attr("readonly","readonly");
			modal.find("button[id !='modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
			
		});
	});
	
	
});

</script>