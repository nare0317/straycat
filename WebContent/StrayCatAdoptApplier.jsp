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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	.card
	{
		margin-top: 30px;
		padding: 30px;
	}
	.dt1
	{
		width: 50%;
		display: inline;
	}
	.dt2
	{
		width: 50%;
		display: inline;
	}
	th
	{
		margin: 10px 0;
		padding: 0 4px 0 0;
		text-align: center;
		background-color: #F6F6F6;
		width: 1%;
	}
	td
	{
		position: relative;
		text-align: left;
	}
	.mButton.gCenter 
	{ 
		position:relative;
		text-align: right; 
	}
	#alert
	{
		color: blue;
	}
	span
	{
		margin-top: 30px;
		font-size: large;
	}
	#container
	{
		margin-top: 5%;
	}
	#ApplyInfo
	{
		width: 300px; 
		height: 150px;	
	}
	#confirm
	{
		margin-left: 1%;
	}
	#button
	{
		position: relative;
		float: right;
		margin-left: 1%;
	}

</style>
</head>
<body>


<div>
	<c:import url="Menu.jsp"></c:import>

	<div class="container" id="container">
		<h1>입양<span>&nbsp;매칭프로세스(후보자 검증)</span></h1>
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
					<td><span>ID : nare0317 <br>이름 : 임나래 <br></span>
				      <a href="#"><ion-icon name="send" size={15}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={15}></ion-icon></a><span> 서울시 마포구 서교동</span>
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
					<input type="text" id="ApplyInfo" name="ApplyInfo" class="form-control mx-sm-3" readonly>	
					</td>
					<td>
					<button id="btn" type="button" class="btn btn-outline-primary btn-sm">자세히보기 <ion-icon name="arrow-forward"></ion-icon></button>											
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
					<td><span>ID : nare0317 <br>이름 : 임나래 <br></span>
				      <a href="#"><ion-icon name="send" size={15}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={15}></ion-icon></a><span> 서울시 마포구 서교동</span>
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
					<input type="text" id="ApplyInfo" name="ApplyInfo" class="form-control mx-sm-3" readonly>	
					</td>
					<td>
					<button id="btn" type="button" class="btn btn-outline-primary btn-sm">자세히보기 <ion-icon name="arrow-forward"></ion-icon></button>											
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
					<td><span>ID : nare0317 <br>이름 : 임나래 <br></span>
				      <a href="#"><ion-icon name="send" size={15}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={15}></ion-icon></a><span> 서울시 마포구 서교동</span>
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
					<input type="text" id="ApplyInfo" name="ApplyInfo" class="form-control mx-sm-3" readonly>	
					</td>
					<td>
					<button id="btn" type="button" class="btn btn-outline-primary btn-sm">자세히보기 <ion-icon name="arrow-forward"></ion-icon></button>											
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
					<td><span>ID : nare0317 <br>이름 : 임나래 <br></span>
				      <a href="#"><ion-icon name="send" size={15}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={15}></ion-icon></a><span> 서울시 마포구 서교동</span>
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
					<input type="text" id="ApplyInfo" name="ApplyInfo" class="form-control mx-sm-3" readonly>	
					</td>
					<td>
					<button id="btn" type="button" class="btn btn-outline-primary btn-sm">자세히보기 <ion-icon name="arrow-forward"></ion-icon></button>											
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
					<td><span>ID : nare0317 <br>이름 : 임나래 <br></span>
				      <a href="#"><ion-icon name="send" size={15}></ion-icon></a><span> 쪽지 보내기</span><br>
				      <a href="#"><ion-icon name="pin" size={15}></ion-icon></a><span> 서울시 마포구 서교동</span>
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
					<input type="text" id="ApplyInfo" name="ApplyInfo" class="form-control mx-sm-3" readonly>	
					</td>
					<td>
					<button id="btn" type="button" class="btn btn-outline-primary btn-sm">자세히보기 <ion-icon name="arrow-forward"></ion-icon></button>											
					</td>
				</tr>
				</thead>
		</table>
		<div class="mButton gCenter">
			<span id="alert">※ 후보자 선택은 2019년 5월 10일 23:59까지 완료해주셔야 합니다. </span>
			<button id="button" type="submit" class="btn btn-primary btn">후보자선택</button>
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