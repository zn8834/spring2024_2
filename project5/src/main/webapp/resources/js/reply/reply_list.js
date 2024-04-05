console.log("Reply List Module.....");

var replyList = (function() {
	
	function showList(page, bnoValue, replyUL ){
		
		console.log("show list()  page: " + page);
		
		replyService.getList({bno:bnoValue,page: page|| 1 },
							function(replyCnt, list)
		 {
			console.log("replyCnt: " + replyCnt);
			console.log("list: " + list);
			console.log(list);
			
			if(page == -1) {
				pageNum = Math.ceil(replyCnt/10.0);
				showList(pageNum, bnoValue, replyUL);
				return;
			}
			
			var str="";
			if(list == null || list.length == 0){
				
			replyUL.html("");
				
			return;
		}
			for (var i = 0, len = list.length || 0; i <len; i++){
				 str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
				 str +="	<div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>";
				 str +="		<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replyerDate)+"</small></div>";
				 str +="		<p>"+list[i].reply+"</p></div></li>";
			 }
			 
			replyUL.html(str);
		
		});//end function
	}//end showList;
	
	function showReplyPage(replyCnt, pageNum, pageUI) {
		
		var endNum = Math.ceil(pageNum / 10.0) * 10;
		var startNum = endNum - 9;
		
		var prev = startNum !=1;
		var next = false;
		
		if (endNum * 10 >= replyCnt) {
			endNum = Math.ceil(replyCnt / 10.0);
		}
		
		if (endNum * 10 >= replyCnt) {
			next = true;
		}
		
		var str = "";
		
		str +="<nav aria-label='Page navigation example justify-content-center'>";
	 	str +="<ul class='pagination'>";
		 	 
		if(prev)
		{
			str +="		<li class='page-item'>";
			str +="			<a class='page-link' href='#'>Previous</a>";
			str +="		</li>";
		} 	 
    	
    	for (var i = startNum; i =< endNum; i++)
    	{
			str +="		<li class='page-item'>";
		 	str +="			<a class='page-link' href='#'>1</a>";
			str +="		</li>";
		}
		
		if (next) {
			str +="	    <li class='page-item'>";
	    	str +="			<a class='page-link' href='#'>Next</a>";
	    	str +="		</li>";
			
		}
		
	 	str +="</ul>";
		str +="</nav>";
		
		console.log(str);
		
		pageUI.html(str);
	}
	
	return {
			showList : showList,
			showReplyPage : showReplyPage
			};
	
})();
	
	
