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
<title>FindPassword.jsp</title>
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
.err
{
	color: red;
	font-size: small;
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
		<br>
		<br>
		<br>
		<br>
		<div class="text-center container">
			<div class="card">
				<div class="card-header">
					<h1>비밀번호 찾기</h1>
				</div>
				<form action="" onSubmit="return check()">
					<br>
					<h4>회원가입시 등록한 이메일을 입력하세요.</h4>
					<div class="row" style="margin-top: 60px; width: 100%;">
						<div class="col-md-6 offset-md-3">
							<!-- 아이디 입력 폼 -->
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text bolck">아이디</span>
								</div>
								<input type="text" id="userId" name="userId" class="form-control">
							</div><br>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text bolck">이메일</span>
								</div>
								<input type="text" id="userId" name="userId" class="form-control">
							</div>
							<br>
							<span class="err">올바른 이메일 계정이 아닙니다.</span>
							<br> <br> <br>
							<button type="submit" class="btn btn-primary btn-lg">비밀번호 찾기</button>
							<br>
							<br>
						</div>
					</div>
				</form>
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