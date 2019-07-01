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
<title>NoteWrite.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
#footer {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	padding: 15px 0;
	text-align: center;
}
</style>
</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>
		<form action="">

			<div class="container" style="margin-top: 60px;">
			<div><h1>이메일 문의</h1></div><br>
				<div class="row">
					<div class="col-2">받는사람</div>
					<div class="col-3">
						<input type="text" class="form-control">
					</div>
					<div class="col-1">
						<span>  @</span>
					</div>
					<div class="col-3">
						<input type="text" class="form-control">
					</div>
					<div class="col-3">
						<select class="custom-select">
						  <option selected>naver.com</option>
						  <option value="1">daum.net</option>
						  <option value="2">gmail.com</option>
						  <option value="3">Three</option>
						</select>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-2">제목</div>
					<div class="col-10">
						<input type="text" class="form-control">
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-2">문의내용</div>
					<div class="col-10">
							<textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
					</div>
				</div><br>
				<div class="row">
					<div class="col-2">첨부파일</div>
					<div class="col-8">
						<input type="text" class="form-control">
					</div>
					<div>
						<button type="button" class="btn btn-primary">첨부하기</button>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-10">
							<button type="submit" class="btn btn-primary">보내기</button>
							<button type="button" class='btn btn-secondary'>취소</button>
					</div>
				</div>
			</div>



		</form>
	</div>





	<div>
		<c:import url="Footer.jsp"></c:import>
	</div>


</body>
</html>