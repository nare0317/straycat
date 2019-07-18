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
	<title>로그인</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/login.css">
	<script type="text/javascript" src="<%=cp %>/js/view/login.js"></script>
	
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="text-center container">
	<c:if test="${sessionScope.alert != null }">
	<div id="alert">${alert }</div>
	</c:if>
	<div style="margin-top: 60px;">
		<h1>Login</h1>
	</div>
	<form id="loginForm" action="" method="post">
		<div class="row" style="margin-top: 60px; width: 100%;">
			<div class="col-md-6 offset-md-3">
				<!-- 아이디 입력 폼 -->
				<div class="form-group text-left">
					<label for="exampleInputEmail1">아이디:</label> 
					<input type="text" class="form-control form-control-lg" id="inputId" placeholder="ID">
				</div>

				<!-- 비밀번호 입력 폼 -->
				<div class="form-group text-left">
					<label for="exampleInputEmail1">비밀번호:</label> 
					<input type="password" class="form-control form-control-lg" id="inputPwd" placeholder="Password">
				</div>
				<div class="form-group form-check text-left">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">로그인 유지</label>
				</div>
				<div>
					<span id="loginError" class="form-text text-muted">아이디 또는 비밀번호가 맞지 않습니다.</span>
					<span id="inputError" class="form-text text-muted">아이디 또는 비밀번호가 입력되지 않았습니다.</span>
				</div>
				<br>
				<button id="loginBtn" type="button" class="btn btn-primary btn-lg btn-block">로그인</button>
				<br>
				<div style="text-align: center;">
					<a href="#"> 아이디 찾기 |</a> <a href="#"> 비밀번호 찾기 |</a> <a href="acceptterms">
						회원가입</a>
				</div>
			</div>
		</div>
	</form>
</div>


<br />
<br />
<br />
<br />
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