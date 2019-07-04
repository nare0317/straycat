<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StrayCatAdoptList.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.boostrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"> -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese"	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
div {
	font-family: 'Nanum Gothic Coding', monospace;
	font-family: 'Quicksand', sans-serif;
}
.card {
	margin-top: 30px;
	padding: 30px;
}
.dt1 {
	width: 50%;
	display: inline;
}
.dt2 {
	width: 50%;
	display: inline;
}
th {
	background-color: #F6F6F6;
	width: 30%;
}
.mButton.gCenter {
	position: relative;
	text-align: center;
}
.alignRight {
	margin: 10px 0;
	padding: 0 4px 0 0;
	text-align: right;
}
.card {
	margin-top: 100px;
}

.card-title
{
	font-weight: bold; 
}
.badge{
	font-size: medium;
	font-weight: bold; 
	color: white;
}

span {
	font-size: small;
}
.container2 {
	margin-left: 150px;
	margin-right: 500px;
	margin-top: 60px;
}
a{
	margin-left: 1.5%;
}
</style>

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>


	<div>
		<c:import url="Menu.jsp"></c:import>
		<nav aria-label="breadcrumb">		
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item"><a href="#">입양&실종</a></li>
				<li class="breadcrumb-item active" aria-current="page">입양</li>
			</ol>
		</nav>
		<div class="container2" style="margin-top: 60px;">
			<h1>입양<span style="font-size: medium; font-weight: bold; margin-left:5px;">내가 올린 입양글</span>
			<button class="btn btn-primary" type="submit" style="height:43px; width:95px; font-size: 12.5pt; float:right; margin-right:1%;">입양등록</button></h1>
			<hr>
				
		<div style="overflow-y:scroll; overflow-x:hidden; overflow-y:auto; height: 300px;">
		<div>
			<div class="card-deck">
			  <div class="card mb-3" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				  	 	<span class="badge badge-primary">입양 진행중</span>
				      <img src="img/cat_adopt6.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				        <h4 class="card-title" >야옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 고등태비, 분홍젤리<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				      	 <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			<div class="card mb-3" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				      	<span class="badge badge-warning">신규 등록</span> 
				      <img src="img/cat_adopt2.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				         <h4 class="card-title" >갸옹이</h4>
				        <p class="card-text">성별 : 수컷(♂)<br>나이 : 4개월<br>특징 : 치즈태비, 하얀 마스크<br>지역 : 서울시 마포구 동교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="card-deck">
			  <div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				  	 	<span class="badge badge-secondary">입양 보류</span> 
				      <img src="img/cat_adopt1.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				         <h4 class="card-title" >냐옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 코점, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				     <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				        </p>
				      </div>
				    </div>
				  </div>
				</div>
			<div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				      	<span class="badge badge-success">입양 확정</span> 
				      <img src="img/cat_adopt5.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				        <h4 class="card-title" >댜옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 얼룩이, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				         <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				        <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>	
		</div><br>
		<div>
			<div class="card-deck">
			  <div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				  	 	<span class="badge badge-secondary">입양 보류</span> 
				      <img src="img/cat_adopt1.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				       <h4 class="card-title" >랴옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 코점, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				        <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			<div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				      	<span class="badge badge-success">입양 확정</span> 
				      <img src="img/cat_adopt6.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				        <h4 class="card-title" >먀옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div><br>
	</div>
	<hr>
	<br><br><br>
	<h1>입양<span style="font-size: medium; font-weight: bold;  margin-left:5px;">집사찾기</span></h1>
	<hr>
	<h5>
		<a href="#" style="color:red; ">긴급입양</a>
		<a href="#" style="color:purple;">분실의심</a>
		<a href="#" >수컷</a><a href="#">암컷</a>
		<a href="#">아기묘</a><a href="#">성묘</a>
		<button class="btn btn-primary" type="submit" style="height:40px; width:90px; font-size:12pt; margin-left: 44%">지역검색</button>
 	<button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >구</button>
    <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >동</button>
	  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
	    <a class="dropdown-item" href="#">Action</a>
	    <a class="dropdown-item" href="#">Another action</a>
	    <a class="dropdown-item" href="#">Something else here</a>
	  </div>
	</h5>
			<div class="card-deck">
			  <div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				  	 	<span class="badge badge-primary">입양 진행</span> 
				      <img src="img/cat_adopt1.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				         <h4 class="card-title" >야옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 코점, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			<div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				      	<span class="badge badge-info">입양 확정</span> 
				      <img src="img/cat_adopt4.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				        <h4 class="card-title" >갸옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 치즈, 노란눈<br>지역 : 서울시 강서구 공항동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>	
			<div class="card-deck">
			  <div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				  	 	<span class="badge badge-secondary">입양 보류</span> 
				      <img src="img/cat_adopt2.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				         <h4 class="card-title" >냐옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 코점, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			<div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				      	<span class="badge badge-success">입양 완료</span> 
				      <img src="img/cat_adopt3.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				        <h4 class="card-title" >댜옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 얼룩이, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>	
				<div class="card-deck">
			  <div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				  	 	<span class="badge badge-secondary">입양 보류</span> 
				      <img src="img/cat_adopt1.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				       <h4 class="card-title" >랴옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 코점, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			<div class="card mb-4" style="margin: 30px; padding: 10px; height: 260px;">
				  <div class="row no-gutters">
				    <div class="col-md-5">
				      	<span class="badge badge-success">입양 확정</span> 
				      <img src="img/cat_adopt6.jpg" class="card-img" alt="...">
				    </div>
				    <div class="col-md-6">
				      <div class="card-body">
				        <h4 class="card-title" >먀옹이</h4>
				        <p class="card-text">성별 : 암컷(♀)<br>나이 : 4개월<br>특징 : 고등태비, 하얀 마스크<br>지역 : 서울시 마포구 서교동</p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small><br>
				       <ion-icon name="chatbubbles" size="large"></ion-icon>3&nbsp;
				        <ion-icon name="eye" size="large"></ion-icon>5&nbsp;
				        <ion-icon name="heart" size="large"></ion-icon>9</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		<br><br>
<nav aria-label="Page navigation example">
  <ul class="pagination pagination-lg justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>	
			
		</div>
		</div>



	<br />
	<br />
	<br />
	<br />
	<br />
	<div>
		<c:import url="Footer.jsp"></c:import>
	</div>


</body>
</html>