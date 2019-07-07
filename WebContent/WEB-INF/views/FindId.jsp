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
<title>아이디 찾기</title>

<!-- 부트스트랩, 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- 기타폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">

<!-- Font Awesome 5 -->
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Popper JS -->
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Ionicons 4.5 외부 글리피콘 -->
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

<!-- 로그인 페이지 자바스크립트, CSS -->
<script src="<%=cp%>/js/view/find_id.js"></script>
<link rel="stylesheet" href="<%=cp%>/css/view/find_id.css">

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>

<c:import url="Menu.jsp"></c:import>
<div class="container">

	<div class="breadcrumbs">
		<ul>
			<li class="list-inline-item"><a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a></li>
			<li class="list-inline-item">></li>
			<li class="list-inline-item">아이디 찾기</li>
		</ul>
	</div>
	<div class="text-center">
	<div class="card">
		<div class="card-header">
			<h1>아이디 찾기</h1>
		</div>
		<form id="findForm" action="" method="post">
			<br>
			<h4>회원가입시 등록한 이메일을 입력하세요.</h4>
			<div class="row" style="margin-top: 60px; width: 100%;">
				<div class="col-md-6 offset-md-3">
					<!-- 이메일 입력 폼 -->
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text bolck">이메일</span>
						</div>
						<input type="text" id="userId" name="userId" class="form-control">
					</div>
					<br>
					<!-- 이메일 계정 오류 경고 -->
					<span class="err">이메일을 입력해주세요.</span>
					<span class="err2">등록되지 않은 이메일입니다.</span>
					<br> <br> <br>
					<button id="findIdBtn" type="button" class="btn btn-primary btn-md">아이디 찾기</button>
					<button id="findPwdBtn" type="button" class="btn btn-secondary btn-md">비밀번호 찾기</button>
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