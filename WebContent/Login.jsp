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
<title>Login.jsp</title>
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
.bolck {
	width: 100px;
	text-align: center;
}

.bolck2 {
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>

		<div class="text-center container">
			<div style="margin-top: 60px;">
				<h1>Login</h1>
			</div>
			<form action="" onSubmit="return check()">
				<div class="row" style="margin-top: 60px; width: 100%;">
					<div class="col-md-6 offset-md-3">
						<div class="form-group text-left">
							<label for="exampleInputEmail1">아이디:</label> 
							<input type="email" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
							<small id="emailHelp" class="form-text text-muted">아이디가 맞지 않습니다.</small>
						</div>

						<!-- 비밀번호 입력 폼 -->
						<div class="form-group text-left">
							<label for="exampleInputEmail1">비밀번호:</label> 
							<input type="email" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Password">
							<small id="emailHelp" class="form-text text-muted">비밀번호가 맞지 않습니다.</small>
						</div>
						<div class="form-group form-check text-left">
						    <input type="checkbox" class="form-check-input" id="exampleCheck1">
						    <label class="form-check-label" for="exampleCheck1">로그인 유지</label>
						</div>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
						<br>
						<div style="text-align: center;">
							<a href="#"> 아이디 찾기 |</a> <a href="#"> 비밀번호 찾기 |</a> <a href="#">
								회원가입</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<div>
		<hr>
		<c:import url="Footer.jsp"></c:import>
	</div>

</body>
</html>