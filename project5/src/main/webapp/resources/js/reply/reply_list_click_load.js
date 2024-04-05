console.log("Reply List Click -> Modal  window Load.........");

$(function() {
	
	var modal = $(".modal");
	
	var modalInputReply = modal.find("input[name='reply']");
	var modalInputReplyer = modal.find("input[name='reply']");
	var modalInputReplyerDate = modal.find("input[name='replyerDate']");

	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalRegisterBtn = $("#modalRegisterBtn");
	
	//댓글 조회 클릭 이벤트 처리
	$(".chat").on("click","li",function(e){
		
		var rno = $(this).data("rno");
		
		replyService.get(rno, function(reply){
			
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyerDate.val(replyService.displayTime( reply.replyerDate))
								.attr("readonly","readonly");
			modal.data("rno", reply.rno);
			
			modal.find("button[id !='modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
			
		});
	});
	
	var bnoValue = $("#operForm").find("#bno").val();
	var replyUL = $(".chat");
	
	modalModBtn.on("click", function(e){
		
		var reply = {rno:modal.data("rno"),
					reply: modalInputReply.val(),
					replyer: modalInputReplyer.val()};
		
		replyService.update(reply, function(result){
			
			alert(result);
			modal.modal("hide");
			
//			showList(1);
			replyList.showList(1, bnoValue, replyUL);
			
		});
	});
	
	modalRemoveBtn.on("click", function(e){
		
		var rno = modal.data("rno");
	
		replyService.remove(rno, function(result){
			
			alert(result);
			modal.modal("hide");
//			showList(1);
			replyList.showList(1, bnoValue, replyUL);
		
		});
	});
});