<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>비밀번호 변경</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 로그인 페이지 자바스크립트, CSS -->
	<script src="<%=cp%>/js/view/change_password.js"></script>
	<link rel="stylesheet" href="<%=cp%>/css/view/change_password.css">
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