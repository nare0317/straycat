<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>쪽지 쓰기</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/join_acceptterms.css">
	<script type="text/javascript" src="<%=cp%>/js/view/message_read.js"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="container header">
	<div><h1>받은쪽지함</h1></div><br>
		<div class="row">
			<div class="col-2">받는사람</div>
			<div class="col-10">
				<input type="text" class="form-control" value="${seMessage.NICKNAME  }" readonly="readonly">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">제목</div>
			<div class="col-10">
				<input type="text" class="form-control" value="${seMessage.MES_TITLE }" readonly="readonly">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">쪽지내용</div>
			<div class="col-10">
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="10" readonly="readonly">${seMessage.MES_CONTENT }</textarea>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-10">
					<button type="button" id="mesDelete" class='btn btn-secondary' onclick="location.href='sedeletemessage?mes_code=${seMessage.MES_CODE}'">삭제하기</button>
					<button type="button" class='btn btn-secondary' onclick="location.href='mypage'">목록으로</button>
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