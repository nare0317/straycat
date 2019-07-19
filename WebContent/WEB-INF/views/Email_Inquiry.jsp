<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>이메일 문의</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/email_inquiry.css">
	<script type="text/javascript" src="<%=cp %>/js/view/email_inquiry.js"></script>

</head>
<body>



<c:import url="Menu.jsp"></c:import>
<div class="container">
	
	<div id="header">
		<h1>이메일 문의</h1>
	</div>
	<form id="emailForm" action="<%=cp %>/mailsending" method="post" enctype="multipart/form-data">
	<div id="mailDiv" class="row">
		<div class="col-2 inputHeader">답변 받을 메일<span class="required">*</span></div>
		<div class="col-3">
			<input id="mailId" type="text" class="form-control" name="mailId">
		</div>
		<div class="inputHeader">
			<span>@</span>
		</div>
		<div class="col-3 inputHeader">
			<input id="mailHost" type="text" class="form-control" name="mailHost">
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
			<input id="title" type="text" class="form-control" name="title">
		</div>
	</div>
	<br><br>
	<div class="row">
		<div class="col-2 inputHeader">문의내용<span class="required">*</span></div>
		<div class="col-10">
				<textarea id="content" class="form-control" rows="10" name="content"></textarea>
		</div>
		<div id="textCounter"><span id="counter">0</span> / 20,000</div>
	</div>
	<br>
	<div class="row">
		<div class="col-2 inputHeader">첨부파일</div>
		<div class="col-3">
			<input type="text" id="fileName" class="form-control" readonly="readonly">
		</div>
		<div class="col-3">
			<label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="uploadPicture" style="display: none;" name="file"></label>
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