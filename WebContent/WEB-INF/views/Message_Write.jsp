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
	<link href="<%=cp %>/css/view/note_write.css" rel="stylesheet">
	<script type="text/javascript" src="<%=cp%>/js/view/message_write.js"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="container marTop">
	<div><h1>쪽지쓰기</h1></div><br>
	<form action="sendMessage" id="messageForm" method="post">
		<div class="row">
			<div class="col-2">받는사람<span class="required">*</span></div>
			<div class="col-10">
				<input type="text" class="form-control" id="receive" name="receive">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">제목<span class="required">*</span></div>
			<div class="col-10">
				<input type="text" class="form-control" id="tile" name="title">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">쪽지내용<span class="required">*</span></div>
			<div class="col-10">
					<textarea class="form-control resize" id="noteContent" rows="10" name="noteContent"></textarea>
			</div>
		</div>
		<div class="row text-right">
			<div class="col-10"></div>
			<div class="col-2">
				<div id="textCounter"><span id="counter">0</span> / 9000</div>
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
					<button type="button" class="btn btn-primary" id="sendBtn">보내기</button>
					<button type="button" class='btn btn-secondary'>취소</button>
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