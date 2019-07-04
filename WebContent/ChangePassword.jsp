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
<title>ChangePassword.jsp</title>

<!-- 부트스트랩, 제이쿼리 CDN -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- 로그인 페이지 자바스크립트, CSS -->
<script src="<%=cp%>/js/view/change_password.js"></script>
<link rel="stylesheet" href="<%=cp%>/css/view/change_password.css">

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

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
				<h1>비밀번호 변경</h1>
			</div>
			<form id="newPwdForm" action="" method="post">
				<br>
				<h4>변경할 비밀번호를 입력해주세요.</h4>
				<div id="inputArea">
					<div class="col-md-6 offset-md-3">
						<!-- 아이디 입력 폼 -->
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text bolck">아이디</span>
							</div>
							<input type="text" id="userId" name="userId" class="form-control" value="nare0317" readonly="readonly">
						</div><br>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text bolck">이메일</span>
							</div>
							<input type="text" id="userId" name="userId" class="form-control" value="nare0317@test.com" readonly="readonly">
						</div><br>
						<div class="input-group">
							<div class="input-group-prepend">
								<span id="newPwdLbl" class="input-group-text bolck">새 비밀번호</span>
							</div>
							<input type="password" id="newPwd" name="newPwd" class="form-control">
						</div><br>
						<div class="input-group">
							<div class="input-group-prepend">
								<span id="newPwdLbl" class="input-group-text bolck">새 비밀번호 확인</span>
							</div>
							<input type="password" id="newPwdConfirm" name="newPwdConfirm" class="form-control">
						</div>
						<br>
						<span id="err">새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.</span>
						<span id="err2">새 비밀번호 또는 새 비밀번호 확인이 입력되지 않았습니다.</span>
						<br><br>
						<button id="submitBtn" type="button" class="btn btn-primary btn-lg">비밀번호 변경</button>
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