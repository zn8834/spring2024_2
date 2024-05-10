<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<body style="background-color: rgb(243,243,243);">
<%@ include file="../include/topsidebar.jsp"  %>
<script type="text/javascript">
	
	/* $(document).ready(function() {
	    $.ajax({
	        type: "GET",
	        url: "/main/news?text=ㅇㅇ",
	        success: function(response) {
	            console.log("서버응답 성공 : " + response);
	            
	            // 서버 응답에서 뉴스 제목과 내용을 배열로 저장
	            var newsTitles = [];
	            var newsContents = [];
	            $(response).find('.carousel-item').each(function(index, element) {
	                var title = $(element).find('#newsTitle').text();
	                var content = $(element).find('#newsContent').text();
	                newsTitles.push(title);
	                newsContents.push(content);
	            });
	            
	            // 가져온 뉴스 제목과 내용을 출력
	            for (var i = 0; i < newsTitles.length; i++) {
	                var newsItem = $('#newsPage');
	                newsItem.append('<h3>' + newsTitles[i] + '</h3>');
	                newsItem.append('<p>' + newsContents[i] + '</p>');
	                $('.col-lg-8').append(newsItem);
	            }
	        },
	        error: function(xhr, status, error) {
	            console.error("Error:", error);
	        }
	    });
	}); */
	
	
</script>

   <div class="content_main mx-5">
<!--  content  4menu  탑 바 밑 4개 메뉴  -->
		<div class="mb-3 ms-3 d-flex">
			 <div class="shadow d-flex align-items-center menu_box" style="height:65px; width:300px;">         
	            	<img src="/resources/svg/building.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
	            	<h5 style="text-align: center; margin-left:40px;">Company<br>Information</h5>
	          </div>
	          <div class="shadow ms-3 d-flex align-items-center menu_box" style="height:65px; width:300px;">         
	            	<img src="/resources/svg/community.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
	            	<h5 style="text-align: center; margin-left:40px;">Issue Community</h5>
	          </div>
	          <div class="shadow ms-3 d-flex align-items-center menu_box" style="height:65px; width:300px;">         
	            	<img src="/resources/svg/stock.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
	            	<h5 style="text-align: center; margin-left:40px;">Stock Simulator</h5>
	          </div>
	          <div class="shadow ms-3 d-flex align-items-center menu_box" style="height:65px; width:300px;">         
	            	<img src="/resources/svg/person-lines-fill.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
	            	<h5 style="text-align: center; margin-left:40px;">My Page</h5>
	          </div>
		</div>
<!--  content  4menu end-->

<!-- 	content main 첫번째 줄 차트,챗 -->


	<div class="mb-3 ms-3 d-flex">
		 <div class="shadow p-3" style="width:615px; height:360px;">
            <%@include file="chart.jsp" %>        
          </div>
          
          
          <div class="shadow ms-3 p-3" style="width:615px; height:360px;">
            <div class="card-head"> 
             <h5>Chat</h5>
             <hr style="width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
	                 
                    
                 </div>
          </div>
	</div>

		<div class="mb-3 ms-3 d-flex">
			 <div class="shadow p-3 menu_box" style="width:615px; height:360px;">
	            <div class="card-head"> 
	             <h5>Chart</h5>
	             <hr style="width:100%; ">
	            </div>
	                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
		                 
	                    
	                 </div>
	          </div>
	          <div class="shadow ms-3 p-3 menu_box" style="width:615px; height:360px;">
	            <div class="card-head"> 
	             <h5>Chat</h5>
	             <hr style="width:100%; ">
	            </div>
	                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
		                 
	                    
	                 </div>
	          </div>
		</div>

   
   <!-- 	content main 두번째 줄 뉴스,핫이슈 -->
   
	   <div class="mb-3 ms-3 d-flex">
			 <div id="newsPage" class="shadow p-3 menu_box" style="width:615px; height:360px;">
	
	            <%@include file="news.jsp" %>
	            		           
	         </div>
	         
	          <div class="shadow ms-3 p-3 menu_box" style="width:615px; height:360px;">
	            <div class="card-head"> 
	             <h5>Chat</h5>
	             <hr style="width:100%; ">
	            </div>
	                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
		                 
	                    
	                 </div>
	          </div>
		</div>   
	</div>
   	<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
    	 $("#login_form").attr("action", "/main/mainPage");
         $("#login_form").submit()
        
    });
 
</script>
   
  

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>