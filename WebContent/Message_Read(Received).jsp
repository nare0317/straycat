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
</head>
<body>

<c:import url="Menu.jsp"></c:import>
<form action="">

	<div class="container m60">
	<div><h1>받은쪽지함</h1></div><br>
		<div class="row">
			<div class="col-2">보낸사람</div>
			<div class="col-10">
				<input type="text" class="form-control" value="nare0317">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">제목</div>
			<div class="col-10">
				<input type="text" class="form-control" value="어쩌구">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">쪽지내용</div>
			<div class="col-10">
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="10" >어쩌구</textarea>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-10">
					<button type="button" class='btn btn-secondary'>목록으로</button>
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