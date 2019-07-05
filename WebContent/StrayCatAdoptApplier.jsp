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
<title>StrayCatAdoptApplier.jsp</title>

<!-- 모달 팝업창  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- ionicons 기타 아이콘  -->
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	th
	{
		padding: 0 4px 0 0;
		background-color: #F6F6F6;
		width: 10ppx;
	}
	td
	{
		position: relative;
		text-align: left;
	}
	span
	{
		margin-left: 10px;
		font-size: large;
	}
	p
	{
		text-align: justify;
		margin-left: 1%;
	}	
	.jumbotron.jumbotron-fluid
	{ 
		padding: 10px 0px 0 10px;
		margin-bottom: 0;
		margin-left: 10px;
		margin-right:0;
    	width: 380px;
    	height:100px;
	}
	.table td
	{
		margin-left: -2%;
		vertical-align: middle; 
	}
	.container
	{
		margin-top: 5%;
	}
	.lead
	{
		padding: 0px 4px 0 0;
		font-size: large;
	}
	.lead>span
	{
		margin-left: 1%;
	}
	.custom-control.custom-radio.custom-control-inline
	{
    	margin-bottom: 50%;
    	margin-left: 30px;
    }
    .custom-control.custom-button
    {
    	padding: 10px 4px 0 0;
    }
    .matching
	{ 
		position:relative;
		text-align: right; 
	}
	.modal-header
	{
		text-align: center;
	}
	.modal-title
	{
		text-align: center;
		margin-left: 10%;
	}
	.modal-body
	{
		width: 500px;
		height: 500px
	} 
	#td1
	{
		position:relative;
		text-align: middle;
	}
	#alert
	{
		padding: 4px 0 0 0;
		font-size: 13pt;
		color: blue;
	}
	#myBtn
	{
		height: 40px;
		position: relative;
		float: right;
		margin-left: 1%;
	} 
	#btn
	{
		height: 35px;
		margin-left: 3%;
	}
	#checkmark1
	{
		margin-left: 7%;
	}
	#checkmark2
	{	
		margin-left: 10%;
	}
	#infoBtn
	{
		height: 40px;
		margint-left: 5%
	}
	#matchingBtn
	{
		text-align: center;
	}
</style>

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>


<div>
	<c:import url="Menu.jsp"></c:import>

	<div class="container">
		<h1>입양<span>매칭프로세스(후보자 검증)</span></h1>
		<hr><br>
		
			<table class="table table-bordered">
				<thead>
				<tr>
					<th>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
					  <label class="custom-control-label" for="customRadioInline1"></label>
					</div>
					</th>
					<td>
					<h5>ID : nare0317 <br>이름 : 임나래 <br></h5>
				      <a href="#"><ion-icon name="send" size={20}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={20}></ion-icon></a><span> 서울시 마포구 서교동</span>
				    </td>
					<td>
						<span>매칭률</span><br>
						<span style="color: red;">95% 일치</span>
					</td>
					<td>
						<span>활동점수</span><br>
						<span>250점</span>
					</td>
					<td >
					<div class="jumbotron jumbotron-fluid">
						   <p class="lead">
						    <ion-icon name="checkmark"></ion-icon>고양이 양육경험: 有 <ion-icon name="checkmark"></ion-icon><span>알레르기 : 없음</span>
						   	<br><ion-icon name="checkmark"></ion-icon>직업구분: 직장인<ion-icon id="checkmark1" name="checkmark"></ion-icon><span>중성화 필수 : 동의</span>
						   	<br><ion-icon name="checkmark"></ion-icon>가족구성원: 1인<ion-icon id="checkmark2" name="checkmark"></ion-icon><span>가정방문 : 동의</span>
						   </p>
					</div>	
					</td>
					<td>
					<div class="custom-control custom-button">
					<button id="infoBtn" type="button" class="btn btn-outline-primary btn-sm">자세히보기<ion-icon name="arrow-forward"></ion-icon></button>
					</div>											
					</td>
				</tr> 
				</thead>
				<thead>
				<tr>
					<th>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
					  <label class="custom-control-label" for="customRadioInline2"></label>
					</div>
					</th>
					<td>
					<h5>ID : nare0317 <br>이름 : 임나래 <br></h5>
				      <a href="#"><ion-icon name="send" size={20}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={20}></ion-icon></a><span> 서울시 마포구 서교동</span>
				    </td>
					<td>
						<span>매칭률</span><br>
						<span style="color: red;">95% 일치</span>
					</td>
					<td>
						<span>활동점수</span><br>
						<span>250점</span>
					</td>
					<td >
					<div class="jumbotron jumbotron-fluid">
						   <p class="lead">
						    <ion-icon name="checkmark"></ion-icon>고양이 양육경험: 有 <ion-icon name="checkmark"></ion-icon><span>알레르기 : 없음</span>
						   	<br><ion-icon name="checkmark"></ion-icon>직업구분: 직장인<ion-icon id="checkmark1" name="checkmark"></ion-icon><span>중성화 필수 : 동의</span>
						   	<br><ion-icon name="checkmark"></ion-icon>가족구성원: 1인<ion-icon id="checkmark2" name="checkmark"></ion-icon><span>가정방문 : 동의</span>
						   </p>
					</div>	
					</td>
					<td>
					<div class="custom-control custom-button">
					<button id="infoBtn" type="button" class="btn btn-outline-primary btn-sm">자세히보기<ion-icon name="arrow-forward"></ion-icon></button>
					</div>											
					</td>
				</tr> 
				</thead>
				<thead>
				<tr>
					<th>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
					  <label class="custom-control-label" for="customRadioInline3"></label>
					</div>
					</th>
					<td>
					<h5>ID : nare0317 <br>이름 : 임나래 <br></h5>
				      <a href="#"><ion-icon name="send" size={20}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={20}></ion-icon></a><span> 서울시 마포구 서교동</span>
				    </td>
					<td>
						<span>매칭률</span><br>
						<span style="color: red;">95% 일치</span>
					</td>
					<td>
						<span>활동점수</span><br>
						<span>250점</span>
					</td>
					<td >
					<div class="jumbotron jumbotron-fluid">
						   <p class="lead">
						    <ion-icon name="checkmark"></ion-icon>고양이 양육경험: 有 <ion-icon name="checkmark"></ion-icon><span>알레르기 : 없음</span>
						   	<br><ion-icon name="checkmark"></ion-icon>직업구분: 직장인<ion-icon id="checkmark1" name="checkmark"></ion-icon><span>중성화 필수 : 동의</span>
						   	<br><ion-icon name="checkmark"></ion-icon>가족구성원: 1인<ion-icon id="checkmark2" name="checkmark"></ion-icon><span>가정방문 : 동의</span>
						   </p>
					</div>	
					</td>
					<td>
					<div class="custom-control custom-button">
					<button id="infoBtn" type="button" class="btn btn-outline-primary btn-sm">자세히보기<ion-icon name="arrow-forward"></ion-icon></button>
					</div>											
					</td>
				</tr> 
				</thead>
				<thead>
				<tr>
					<th>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="customRadioInline4" name="customRadioInline1" class="custom-control-input">
					  <label class="custom-control-label" for="customRadioInline4"></label>
					</div>
					</th>
					<td>
					<h5>ID : nare0317 <br>이름 : 임나래 <br></h5>
				      <a href="#"><ion-icon name="send" size={20}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={20}></ion-icon></a><span> 서울시 마포구 서교동</span>
				    </td>
					<td>
						<span>매칭률</span><br>
						<span style="color: red;">95% 일치</span>
					</td>
					<td>
						<span>활동점수</span><br>
						<span>250점</span>
					</td>
					<td >
					<div class="jumbotron jumbotron-fluid">
						   <p class="lead">
						    <ion-icon name="checkmark"></ion-icon>고양이 양육경험: 有 <ion-icon name="checkmark"></ion-icon><span>알레르기 : 없음</span>
						   	<br><ion-icon name="checkmark"></ion-icon>직업구분: 직장인<ion-icon id="checkmark1" name="checkmark"></ion-icon><span>중성화 필수 : 동의</span>
						   	<br><ion-icon name="checkmark"></ion-icon>가족구성원: 1인<ion-icon id="checkmark2" name="checkmark"></ion-icon><span>가정방문 : 동의</span>
						   </p>
					</div>	
					</td>
					<td>
					<div class="custom-control custom-button">
					<button id="infoBtn" type="button" class="btn btn-outline-primary btn-sm">자세히보기<ion-icon name="arrow-forward"></ion-icon></button>
					</div>											
					</td>
				</tr> 
				</thead>
				<thead>
				<tr>
					<th>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="customRadioInline5" name="customRadioInline1" class="custom-control-input">
					  <label class="custom-control-label" for="customRadioInline5"></label>
					</div>
					</th>
					<td>
					<h5>ID : nare0317 <br>이름 : 임나래 <br></h5>
				      <a href="#"><ion-icon name="send" size={20}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={20}></ion-icon></a><span> 서울시 마포구 서교동</span>
				    </td>
					<td>
						<span>매칭률</span><br>
						<span style="color: red;">95% 일치</span>
					</td>
					<td>
						<span>활동점수</span><br>
						<span>250점</span>
					</td>
					<td >
					<div class="jumbotron jumbotron-fluid">
						   <p class="lead">
						    <ion-icon name="checkmark"></ion-icon>고양이 양육경험: 有 <ion-icon name="checkmark"></ion-icon><span>알레르기 : 없음</span>
						   	<br><ion-icon name="checkmark"></ion-icon>직업구분: 직장인<ion-icon id="checkmark1" name="checkmark"></ion-icon><span>중성화 필수 : 동의</span>
						   	<br><ion-icon name="checkmark"></ion-icon>가족구성원: 1인<ion-icon id="checkmark2" name="checkmark"></ion-icon><span>가정방문 : 동의</span>
						   </p>
					</div>	
					</td>
					<td>
					<div class="custom-control custom-button">
					<button id="infoBtn" type="button" class="btn btn-outline-primary btn-sm">자세히보기<ion-icon name="arrow-forward"></ion-icon></button>
					</div>											
					</td>
				</tr> 
				</thead>				
		</table>
		<div class="matching">
			<span id="alert">※ 후보자 선택은 2019년 5월 10일 23:59까지 완료해주셔야 합니다. </span>
			
			
		<!-- 모달 팝업창 여는 버튼  -->
		<button id="myBtn" type="button" class="btn btn-primary btn" data-toggle="modal" data-target="#myModal">후보자선택</button>
		</div>
	<div>
		
   <!-- The Modal -->
   <div class="modal" id="myModal">
	 <div class="modal-dialog">
	   <div class="modal-content">
	      
        <!-- Modal Header -->
        <div class="modal-header">
          <h1 class="modal-title"><ion-icon name="logo-octocat"></ion-icon>입양 매칭 완료<ion-icon name="logo-octocat"></ion-icon></h1>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <div class="jumbotron">
		        <h3 class="display-8">nare0317님과<br>입양매칭이 완료되었습니다^^!</h3>
		        <p class="lead">
			  	<br><br>
			  	길냥이의 행복한 묘생을 위해 신중하게<br>
			  	결정해주셔서 감사합니다! 이후 입양 과정은<br>
			  	nare0317님과 1:1로 연락하여 진행하신 후,<br>
			  	완료된 입양 게시글 상태는 '입양완료'로<br>
			  	바꿔주시기 바랍니다.<br><br><br>
			  	</p>
	        </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button id="matchingBtn" type="button" class="btn btn-primary" data-dismiss="modal">매칭자와 바로 연락하기 <ion-icon name="send"></ion-icon></button>
        </div>
        
      </div>
    </div>
  </div>
	  
	  
	  

	  </div>	
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