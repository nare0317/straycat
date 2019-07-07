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
<title>이메일 문의</title>

<!-- 부트스트랩, 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- 폰트, 기타 라이브러리 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- 로그인 페이지 자바스크립트, CSS -->
<link rel="stylesheet" href="<%=cp %>/css/view/email_write.css">
<script type="text/javascript" src="<%=cp %>/js/view/email_write.js"></script>

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>
	<c:import url="Menu.jsp"></c:import>
	<div class="container">
	
	<div id="header">
		<h1>이메일 문의</h1>
	</div>
	<form id="emailForm" action="" method="post">
	<div id="mailDiv" class="row">
		<div class="col-2 inputHeader">답변 받을 메일<span class="required">*</span></div>
		<div class="col-3">
			<input id="mailId" type="text" class="form-control">
		</div>
		<div class="inputHeader">
			<span>@</span>
		</div>
		<div class="col-3 inputHeader">
			<input id="mailHost" type="text" class="form-control">
		</div>
		<div class="col-3">
			<select id="mailHostSelector" class="custom-select">
				<option value="0" selected>naver.com</option>
				<option value="1">daum.net</option>
				<option value="2">gmail.com</option>
				<option value="3">nate.com</option>
				<option value="4">직접입력</option>
			</select>
		</div>
	</div>
	<br><br>
	<div class="row">
		<div class="col-2 inputHeader">제목<span class="required">*</span></div>
		<div class="col-10">
			<input id="title" type="text" class="form-control">
		</div>
	</div>
	<br><br>
	<div class="row">
		<div class="col-2 inputHeader">문의내용<span class="required">*</span></div>
		<div class="col-10">
				<textarea id="content" class="form-control" rows="10"></textarea>
		</div>
		<div id="textCounter"><span id="counter">0</span> / 20,000</div>
	</div>
	<br>
	<div class="row">
		<div class="col-2 inputHeader">첨부파일</div>
		<div class="col-8">
			<input type="text" class="form-control">
		</div>
		<div class="col-2">
			<button id="attachBtn" type="button" class="btn btn-primary">첨부하기</button>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-2"></div>
		<div class="col-10">
			<span id="err" >필수 항목이 입력되지 않았습니다.</span>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-2"></div>
		<div class="col-10">
				<button id="sendBtn" type="button" class="btn btn-primary">보내기</button>
				<button id="cancelBtn" type="button" class='btn btn-secondary'>취소</button>
		</div>
	</div>
	</form>
</div>

<br><br><br><br>

<div>
	<c:import url="Footer.jsp"></c:import>
</div>


</body>
</html>