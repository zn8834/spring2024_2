<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
   <title>BZO</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
		
</head>
<body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
	    $('.categoryBtn').click(function() {
	        var category = $(this).data('value');
	        $('#categoryInput').val(category);
	        $('#newsCategory').submit();
	    });
	});


</script>


<!--  topBar -->
	<nav class="shadow p-2 bg-body-tertiary border-bottom">
	    <div class="d-flex justify-content-start">
	       <div class="d-flex ps-5">
	          <a href="main.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-warning text-decoration-none">
	               <span class="fs-4 fw-bold"><b>BZO</b></span>
	           </a>
	       </div>
	    </div>
  	</nav>
<!--  topBar_end -->
<!--  sideBar -->
   <div class="shadow d-flex flex-column flex-shrink-0 p-3 float-start bg-body-tertiary" style="width: 280px; height:860px;">
         <span class="fs-4">Login</span>
         <hr>
         <form>
            <div class="d-flex justify-content-center flex-column">
              <p>ID : <input type="text" name="ID" size="15" required></p>
              <p>PW : <input type="password" name="psw" size="15" placeholder="비밀번호" required></p>
           </div>
           <div class="d-flex justify-content-center">
              <div class="pe-3">
                <input type="submit" class="btn btn-success btn-sm" value="Log in">
                </div>
                <button type="button" class="btn btn-info btn-sm fs-6" style="height:30px;"><a href="#" class="text-decoration-none text-light">Sign up</a></button>
           </div>
       </form>
         
       <hr>
       <ul class="nav nav-pills d-flex flex-column mb-2">
         <li class="nav-item">
           <a href="#" class="nav-link active mb-3" aria-current="page">
         <img src="/resources/svg/building.svg" alt="Bootstrap" width="20" height="20">
             기업정보
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis mb-3">
             <img src="/resources/svg/community.svg" alt="Bootstrap" width="20" height="20">
             이슈게시판
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis mb-3">
             <img src="/resources/svg/newspaper.svg" alt="Bootstrap" width="20" height="20">
             뉴스
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis">
             <img src="/resources/svg/stock.svg" alt="Bootstrap" width="20" height="20">
             
           </a>
         </li>
       </ul>
       <hr>
       <div class="dropdown d-flex flex-column justify-content-end">
         <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
           <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
           <strong>mdo</strong>
         </a>
         <ul class="dropdown-menu text-small shadow">
           <li><a class="dropdown-item" href="#">New project...</a></li>
           <li><a class="dropdown-item" href="#">Settings</a></li>
           <li><a class="dropdown-item" href="#">Profile</a></li>
           <li><hr class="dropdown-divider"></li>
           <li><a class="dropdown-item" href="#">Sign out</a></li>
         </ul>
       </div>
     </div>
<!--  sideBar_end -->
<!--  sideBar_end -->


   
	<div class="row">
	
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center; height:70px;">         
            	<img src="/resources/svg/building.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
            	<h5 style="text-align: center; margin-left:40px;">Company Information</h5>
          </div>
          
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center;">         
            	<img src="/resources/svg/community.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
            	<h5 style="text-align: center; margin-left:40px;">Issue Community</h5>
          </div>
          
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center;">         
            	<img src="/resources/svg/stock.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
            	<h5 style="text-align: center; margin-left:40px;">Stock Simulator</h5>
          </div>
          
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center;">         
            	<img src="/resources/svg/person-lines-fill.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
            	<h5 style="text-align: center; margin-left:40px;">My Page</h5>
          </div>
        
     </div>
     
   <div class="row">
       
         <div class="col-lg-8 shadow mb-4" style=" margin:0px 30px; width:1130px; height:400px;">
            <div class="card-head" style="margin: 10px 0px 0px 0px;"> 
             <h5>Chart</h5>
             <hr style="border: solid 2px; width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
	                 
                    
                 </div>
          </div>
          
          <div class="col-lg-8 shadow mb-4" style="margin:0px 20px; width:390px; height:400px;">
            <div class="card-head" style="margin: 10px 0px 0px 0px;"> 
             <h5>Chat</h5>
             <hr style="width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
	                 
                    
                 </div>
          </div>

   </div>
   
   <div class="row">
       
         <div class="col-lg-8 shadow mb-4" style="margin:0px 30px; width:1130px; height:350px;">
         
         	
         
            <div class="card-head" style="margin: 10px 0px 0px 0px; display:flex; flex-direction:row"> 
	             
	             <h5>News</h5>
	             
	             
	             <form method="get" id="newsCategory" action="/main/mainPage">
	             
				    <input type="hidden" id="categoryInput" name="text" value="default">
				    
				    <button type="button" class="btn btn-outline-warning categoryBtn" data-value="정치" style="margin-left: 300px;">
				        <img src="/resources/svg/politics.png" alt="Bootstrap" width="20" height="20">
				        정치
				    </button>
				
				    <button type="button" class="btn btn-outline-warning categoryBtn" data-value="경제" style="margin-left: 30px;">
				        <img src="/resources/svg/economic.png" alt="Bootstrap" width="20" height="20">
				        경제
				    </button>
				
				    <button type="button" class="btn btn-outline-warning categoryBtn" data-value="사회" style="margin-left: 30px;">
				        <img src="/resources/svg/social.png" alt="Bootstrap" width="20" height="20">
				        사회
				    </button>
				
				    <button type="button" class="btn btn-outline-warning categoryBtn" data-value="이슈" style="margin-left: 30px;">
				        <img src="/resources/svg/issue.png" alt="Bootstrap" width="20" height="20">
				        이슈
				    </button>
				</form>
	             
	             
	             
            </div>
            
            <hr style="border: solid 2px; width:100%; ">
            		
            <div id="carouselExampleIndicators" class="carousel slide">
			    <div class="carousel-indicators" >
			        <c:forEach items="${news}" var="article" varStatus="status">
			            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="${status.index}" class="${status.first ? 'active' : ''}" aria-label="Slide ${status.index + 1}" aria-current="${status.first ? 'true' : 'false'}"></button>
			        </c:forEach>
			    </div>
			    
			    <div class="carousel-inner">
				    <c:forEach items="${news}" var="article" varStatus="status">
				        <div class="carousel-item ${status.first ? 'active' : ''}">
				            <svg
				                class="d-none bd-placeholder-img bd-placeholder-img-lg d-block w-100"
				                width="800"
				                height="260"
				                xmlns="http://www.w3.org/2000/svg"
				                role="img"
				                aria-label="Placeholder: First slide"
				                preserveAspectRatio="xMidYMid slice"
				                focusable="false"
				             
				            >
				                <title></title>
				                
				                <div class="d-flex flex-column">
				                	<br>
					                <div class="d-flex justify-content-center">
					                <text x="50%" y="17%" fill="#555" dy=".3em" style="font-size: 30px;">
					                    <tspan x="50%" dy="1.2em">${article.title.replaceAll("\\<.*?\\>","")}</tspan>
					                </text>
					                </div>
					                <br><br><br>
					                <div class="d-flex justify-content-center">
					                <text x="50%" y="50%" fill="#555" dy=".3em" style="font-size: 15px; width:70%;">
									    <tspan x="50%" dy="1.2em">${article.description.replaceAll("\\<.*?\\>","")}</tspan>
									</text>
									</div>
								</div>
				                
				            </svg>
				        </div>
				    </c:forEach>
				</div>
			    
		    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		        <span class="bg-warning carousel-control-prev-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Previous</span>
		    </button>
		    
		    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		        <span class="bg-warning carousel-control-next-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Next</span>
		    </button>
		</div>
            
            		           
         </div>
          
          <div class="col-lg-8 shadow mb-4" style="margin:0px 20px; width:390px; height:350px;">
            <div class="card-head" style="margin: 10px 0px 0px 0px;"> 
             <h5>HOT ISSUE</h5>
             <hr style="width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 270px; overflow:auto;"> 
	                 
                    
                 </div>
          </div>

   </div>       
          
   
   
  

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>