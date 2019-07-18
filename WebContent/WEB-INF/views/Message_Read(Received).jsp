<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>받은 쪽지함</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/message_read(received).css">
	<script type="text/javascript" src="<%=cp%>/js/view/message_read.js"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>
<form action="">

	<div class="container m60">
	<div><h1>받은쪽지함</h1></div><br>
		<div class="row">
			<div class="col-2">보낸사람</div>
			<div class="col-10">
				<input type="text" class="form-control" value="${reMessage.NICKNAME }" readonly="readonly">
				<input type="hidden" id="id2" name="id2" value="${reMessage.ID2 }">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">제목</div>
			<div class="col-10">
				<input type="text" class="form-control" value="${reMessage.TITLE }" readonly="readonly">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">쪽지내용</div>
			<div class="col-10">
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="10" readonly="readonly">${reMessage.MES_CONTENT }</textarea>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-10">
				<button type="button" class="btn btn-primary" onclick="location.href='responsemessage?id2=${reMessage.ID2 }'">답장</button>
				<button type="button" class="btn btn-dark" onclick="location.href='redeletemessage?mes_code=${reMessage.MES_CODE}'"><span class="x">X</span> 삭제</button>
				<button type="button" class='btn btn-secondary' onclick="location.href='mypage'">목록으로</button>
			</div>
		</div>
	</div>
</form>




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