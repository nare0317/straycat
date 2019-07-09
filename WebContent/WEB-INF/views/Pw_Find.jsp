<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>비밀번호 찾기</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/pw_find.css">
	<script type="text/javascript" src="<%=cp %>/js/view/pw_find.js"></script>
</head>
<body>

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
		<form id="findForm" action="" method="post">
			<br>
			<h4>회원가입시 등록한 이메일을 입력하세요.</h4>
			<div class="row mw">
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
						<input type="text" id="email" name="email" class="form-control">
					</div>
					<br>
					<span id="err1" class="err">아이디와 이메일을 입력해주세요.</span>
					<span id="err2" class="err">아이디 또는 이메일 정보가 옳지 않습니다.</span>
					<br> <br> <br>
					<button id="submitBtn" type="button" class="btn btn-primary btn-lg">비밀번호 찾기</button>
					<br>
					<br>
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
	<c:import url="Footer.jsp"></c:import>
</div>

</body>
</html>