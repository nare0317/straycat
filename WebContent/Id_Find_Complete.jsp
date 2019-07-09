<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>아이디 찾기 결과</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/id_find_complete.css">
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
			<h1>아이디 찾기</h1>
		</div>
		<form action="" onSubmit="return check()">
			<br>
			<div class="row mw">
				<div class="col-md-6 offset-md-3">
					
					<h4>아이디<span class="userId">nare0317</span></h4>
					<br>
					<br><br>
					<button type="submit" class="btn btn-primary btn-md">로그인 하기</button>
					<button type="submit" class="btn btn-secondary btn-md left">비밀번호 찾기</button>
					<br><br><br>
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