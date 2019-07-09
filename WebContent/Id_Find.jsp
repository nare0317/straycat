<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>아이디 찾기</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<script src="<%=cp%>/js/view/find_id.js"></script>
	<link rel="stylesheet" href="<%=cp%>/css/view/id_find.css">
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
			<div class="row mw">
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