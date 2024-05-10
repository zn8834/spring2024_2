<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script>

	console.log("==============");
	console.log("AJAX TEST");
	
	var bnoValue = '<c:out value="${board.bno}"/>';
	
	1. 댓글 목록 테스트
	replyService.getList(
							{bno:bnoValue, page:1}
							,
							function(list){
								
								for(var i = 0, len = list.length||0; i < len; i++ ) {
									console.log(list[i]);
								}
							}
	);
	
	//new - 1. 댓글 목록 테스트
	replyService.getList(
							{bno:bnoValue, page:1}
							,
							function(replycnt, list){
								
								console.log("replyCnt: " + replyCnt);
								
								for(var i = 0, len = list.length||0; i < len; i++ ) {
									console.log(list[i]);
								}
							}
	);
	
	//2. 댓글 입력 테스트
	replyService.add(
						{reply:"댓글 테스트1", replyer:"replyer1", bno:bnoValue}
						,
						function(result){
							alert("RESULT: " + result);
						}
		);
	
// 	//3. 댓글 수정 테스트
	replyService.update(
						{rno : 500, bno: bnoValue, reply : "수정테스트!!!"}		
						,
						function(result) {
							alert("수정완료..");
						}
	);
	
// 	//5. 댓글 삭제 테스트
// 	replyService.remove(
// 						9
// 						,
// 						function(count) {
// 							console.log(count);
// 							if(count ==="success") {
// 								alert("REMOVED");
// 							}
// 						}
// 						,
// 						function(err) {
// 							alert('ERROR...');
// 						}
// 	);
	
// 	//5. 댓글1개 조회 테스트
// 	relpyService.get(
			
// 	)
</script>