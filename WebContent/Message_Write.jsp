<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>쪽지쓰기</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link href="<%=cp %>/css/view/message_write.css" rel="stylesheet">
	<script type="text/javascript" src="<%=cp%>/js/view/message_write.js"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="container marTop">
	<div><h1>쪽지쓰기 <span id="notice">*</span><span>표시는 필수 입력 항목입니다. 반드시 입력해 주세요.</span></h1></div><br>
	<form action="MypageMain.jsp" id="emailForm" method="post">
		<div class="row">
			<div class="col-2"><span id="notice" class="required">*</span>받는사람</div>
			<div class="col-10">
				<input type="text" class="form-control" id="receive">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2"><span id="notice" class="required">*</span>제목</div>
			<div class="col-10">
				<input type="text" class="form-control" id="title">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2"><span id="notice" class="required">*</span>쪽지내용</div>
			<div class="col-10">
					<textarea class="form-control resize" id="noteContent" rows="10"></textarea>
			</div>
		</div>
		<div class="row text-right">
			<div class="col-10"></div>
			<div class="col-2">
				<div id="textCounter"><span id="counter">0</span> / 9000</div>
			</div>
		</div>
		<br>
		<div class="inputError">
			<span id="inputError" class="form-text text-muted"> * 필수항목을 입력해주세요 </span>
		</div>
	
		<br>
		<div class="row">
			<div class="col-2"></div>
			<div class="col text-center">
					<button type="button" class="btn btn-primary btn-lg" id="sendBtn">보내기</button>
					<button type="button" id="cancle" class="btn btn-secondary btn-lg">취소</button>
			</div>
		</div>
	</form>
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