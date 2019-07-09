<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>회원 탈퇴</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/member_leave(pw)">
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
		<h1>회원정보확인</h1>
	</div>
	<form action="UnRegistrationFinish.jsp" onSubmit="return check()">
		<br>
		<h4>000님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</h4>
		<div class="row mw">
			<div class="col-md-6 offset-md-3">
				<!-- 아이디 입력 폼 -->
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text bolck">아이디</span>
					</div>
					<input type="text" id="userId" name="userId" class="form-control" readonly="readonly" value="jyb7488@test.com">
				</div>
				<br>

				<!-- 비밀번호 입력 폼 -->
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text bolck">비밀번호</span>
					</div>
					<input type="password" id="userPwd" name="userPwd"
						class="form-control" required="required">
				</div>
				<br> <br> <br>
				<button type="submit" class="btn btn-primary btn-lg">확인</button>
				<button type="button" class="btn btn-secondary btn-lg" onclick="location.href='Main.jsp'">취소</button>
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